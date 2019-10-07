#include <stdio.h>
#include "../include/my_str.h"


void print_res(size_t cod) {
    cod == 0 ? printf("OK\n") : printf("Fail! Exit code: %zu\n", cod);
}


int main() {
    size_t res;
    my_str_t line;

    res = my_str_create(&line, 10);
    printf("Test_1 (Create): ");
    print_res(res);

    res = char_arr_len("12345678");
    printf("Test_2 (length of '12345678'): %zu\n", res);



}
