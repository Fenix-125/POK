/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "i2c.h"
#include "spi.h"
#include "usart.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <string.h>
#include <stdio.h>
#include <math.h>
#include "stm32f3_discovery_accelerometer.h"
#include "stm32f3_discovery_gyroscope.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/

/* USER CODE BEGIN 0 */
uint8_t byte;

void print_float(char *s, char *name, double num) {
    char *tmpSign = (num < 0) ? "-" : "";
    double tmpVal = (num < 0) ? -num : num;

    int tmpInt1 = (int) tmpVal;                  // Get the integer (678).
    double tmpFrac = tmpVal - tmpInt1;      // Get fraction (0.0123).
    int tmpInt2 = (int) (tmpFrac * 1000.0);  // Turn into integer (123).

    sprintf((char *) s, "%s = %s%d.%04d\n", name, tmpSign, tmpInt1, tmpInt2);
}

#define PRINT_FLOAT_MAX_SIZE 40

void print_xyz(char *s, double x, double y, double z) {
    char sx[PRINT_FLOAT_MAX_SIZE], sy[PRINT_FLOAT_MAX_SIZE], sz[PRINT_FLOAT_MAX_SIZE], module[PRINT_FLOAT_MAX_SIZE];
    print_float((char *) sx, "x", (x / 16.0) / 1000.0);
    print_float((char *) sy, "y", (y / 16.0) / 1000.0);
    print_float((char *) sz, "z", (z / 16.0) / 1000.0);
    print_float((char *) module, "module", (sqrt(x * x + y * y + z * z) / 16.0) / 1000.0);
//    sprintf(s, "\n%s", sz);
    sprintf(s, "\n%s%s%s%s", sx, sy, sz, module);
}
/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void) {
    /* USER CODE BEGIN 1 */

    /* USER CODE END 1 */


    /* MCU Configuration--------------------------------------------------------*/

    /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
    HAL_Init();

    /* USER CODE BEGIN Init */

    /* USER CODE END Init */

    /* Configure the system clock */
    SystemClock_Config();

    /* USER CODE BEGIN SysInit */

    /* USER CODE END SysInit */

    /* Initialize all configured peripherals */
    MX_GPIO_Init();
    MX_I2C1_Init();
    MX_USART1_UART_Init();
    MX_SPI1_Init();
    /* USER CODE BEGIN 2 */
    HAL_UART_Receive_IT(&huart1, &byte, 1); // start the interrupt for data receiving
    if (BSP_ACCELERO_Init() != HAL_OK || BSP_GYRO_Init() != GYRO_OK) {
        /* Initialization Error */
        uint8_t str_err[100] = "Accelerometer or Gyroscope Initialization Error";
        HAL_UART_Transmit(&huart1, str_err, strlen((char *) str_err), 100);
        while (1) {}
    }
    /* USER CODE END 2 */

    /* Infinite loop */
    /* USER CODE BEGIN WHILE */

    int16_t buffer[3] = {0};
    double max_acc = 0.0;
    float fbuffer[3] = {(float) 0.0};
    double max_gyro = 0.0;
    uint8_t str[100];
    double x;
    double y;
    double z;

    while (1) {
        HAL_GPIO_TogglePin(GPIOE, GPIO_PIN_12);
        HAL_Delay(1000);

        BSP_ACCELERO_GetXYZ(buffer);
        sprintf((char *) str, "\naccelerometer:");
        print_xyz((char *) str + strlen((char *) str), (double) buffer[0], (double) buffer[1], (double) buffer[2]);
        HAL_UART_Transmit(&huart1, str, strlen((char *) str), 100);

        BSP_GYRO_GetXYZ((float*) fbuffer);
        sprintf((char *) str, "\ngyro:");
        print_xyz((char *) str + strlen((char *) str), ((double) fbuffer[0]), ((double) fbuffer[1]), ((double) fbuffer[2]));
        HAL_UART_Transmit(&huart1, str, strlen((char *) str), 100);

        x = (double) buffer[0];
        y = (double) buffer[1];
        z = (double) buffer[2];

         max_acc = fmax(sqrt(x * x + y * y + z * z) / 16.0 / 1000.0, max_acc);

        x = (double) fbuffer[0];
        y = (double) fbuffer[1];
        z = (double) fbuffer[2];
         max_gyro = fmax(sqrt(x * x + y * y + z * z) / 16.0 / 1000.0, max_gyro);

         print_float((char*)str, "max_acc", max_acc);
        HAL_UART_Transmit(&huart1, str, strlen((char *) str), 100);

        print_float((char*)str, "max_gyro", max_gyro);
        HAL_UART_Transmit(&huart1, str, strlen((char *) str), 100);
        /* USER CODE END WHILE */

        /* USER CODE BEGIN 3 */
    }
    /* USER CODE END 3 */
}


/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void) {
    RCC_OscInitTypeDef RCC_OscInitStruct = {0};
    RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
    RCC_PeriphCLKInitTypeDef PeriphClkInit = {0};

    /** Initializes the CPU, AHB and APB busses clocks
    */
    RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
    RCC_OscInitStruct.HSIState = RCC_HSI_ON;
    RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
    RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
    RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
    RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL12;
    if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK) {
        Error_Handler();
    }
    /** Initializes the CPU, AHB and APB busses clocks
    */
    RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_SYSCLK
                                  | RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2;
    RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
    RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
    RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
    RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

    if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_1) != HAL_OK) {
        Error_Handler();
    }
    PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_USART1 | RCC_PERIPHCLK_I2C1;
    PeriphClkInit.Usart1ClockSelection = RCC_USART1CLKSOURCE_PCLK2;
    PeriphClkInit.I2c1ClockSelection = RCC_I2C1CLKSOURCE_HSI;
    if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK) {
        Error_Handler();
    }
}


/* USER CODE BEGIN 4 */
void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin) {

    if (GPIO_Pin == GPIO_PIN_0) { // button hendler
        static uint32_t last_change_tick;
        if (HAL_GetTick() - last_change_tick < 50) {
            return;
        }
        // do
        HAL_GPIO_TogglePin(GPIOE, GPIO_PIN_15);
        last_change_tick = HAL_GetTick();

    }
}


// receive and send data through bluetooth
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart) {
    if (huart->Instance == USART2) {
        if (byte == '1') {
            //HAL_UART_Transmit(&huart2, str2, strlen((char*)str2), 100);
            HAL_GPIO_TogglePin(GPIOE, GPIO_PIN_12);
            //str2[99] = '\0';
        }
        HAL_UART_Receive_IT(&huart1, &byte, 1);
    }
}
/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void) {
    /* USER CODE BEGIN Error_Handler_Debug */
    /* User can add his own implementation to report the HAL error return state */

    /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line) {
    /* USER CODE BEGIN 6 */
    /* User can add his own implementation to report the file name and line number,
       tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
    /* USER CODE END 6 */
}

#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
