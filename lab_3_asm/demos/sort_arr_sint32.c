#include <stdio.h>

void bubble_sort(int *arr, int len);

void swap(int *a, int *b);

void print_arr(int *arr, int len);


int main() {
    int arr[] = {5, 3, 4, 2, 1};
    print_arr(arr, 5);
    bubble_sort(arr, 5);
    print_arr(arr, 5);
    return 0;
}


void bubble_sort(int *arr, int len) {
    for (int i = len - 1; i >= 0; i--) {
        for (int j = 0; j < i; ++j) {
            if (arr[j] > arr[j + 1]) {
                swap(arr + j, arr + j + 1);
            }
        }
    }
}


void print_arr(int *arr, int len) {
    for (int i = 0; i < len; ++i) {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

void swap(int *a, int *b) {
    int tmp = *a;
    *a = *b;
    *b = tmp;
}
