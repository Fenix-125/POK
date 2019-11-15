#include <stdio.h>
#include "arr_diff.h"
#include <stdlib.h>

void print_arr(const double *arr, size_t len);


void test_case(const double *arr1, const double *arr2, size_t len);


int main() {
    double test_arr1[] = {1.0, 2.0, 3.0, 4.0, 5.0, 6.6};
    double test_arr2[] = {1.0, 1.0, 1.0, 1.0, 1.0, 1.0};
    double test_arr3[] = {2.0, 2.0, 2.0, 2.0, 2.0, 2.0};
    double test_arr_err[] = {2.0, 2.0, 2.0, 0.0, 2.0, 2.0};
    size_t len = 6;

    test_case(test_arr1, test_arr2, len);
    test_case(test_arr1, test_arr3, len);
    test_case(test_arr1, test_arr_err, len);

    return 0;
}


void test_case(const double *arr1, const double *arr2, size_t len) {
    double *tmp_res = arr_diff(arr1, arr2, len);
    printf("Test\n");
    if (tmp_res != NULL) {
        printf("Arr1:\n");
        print_arr(arr1, len);
        printf("Arr2:\n");
        print_arr(arr2, len);
        printf("Res:\n");
        print_arr(tmp_res, len);
        printf("\n");
    } else {
        printf("FAIL to calculate!\n");
    }
    free(tmp_res);
}


void print_arr(const double *arr, size_t len) {
    for (size_t i = 0; i < len; ++i) {
        printf("%.2f ", arr[i]);
    }
    printf("\n");
}

