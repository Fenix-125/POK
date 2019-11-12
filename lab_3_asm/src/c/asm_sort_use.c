#include <stdio.h>

extern void sort_arr_sint32(int* arr, int len);
extern void print_arr_sint32(int* arr, int len);


int main() {
    int arr[] = {4, -5, 4, 6, 8, 7, 1, 0};
    int len = 8;

    print_arr_sint32(arr, len);
    sort_arr_sint32(arr, len);
    print_arr_sint32(arr, len);

}


