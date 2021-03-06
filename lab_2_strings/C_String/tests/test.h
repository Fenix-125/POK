#ifndef LAB2_TEST_H
#define LAB2_TEST_H

#include "../lib/include/c_string.h"
#include <ctype.h>

int tests();

int test_my_str_size();

int test_my_str_from_cstr();

int test_my_str_capacity();

int test_my_str_create();

int test_my_str_empty();

int test_my_str_getc();

int test_my_str_putc();

int test_my_str_get_cstr();

int test_my_str_pushback();

int test_my_str_popback();

int test_my_str_copy();

int test_my_str_insert_c();

int test_my_str_insert();

int test_my_str_insert_cstr();

int test_my_str_append();

int test_my_str_append_cstr();

int test_my_str_substr();

int test_my_str_substr_cstr();

int test_my_str_reserve();

int test_my_str_shrink_to_fit();

int test_my_str_resize();

int test_my_str_find();

int test_my_str_cmp();

int test_my_str_cmp_cstr();

int test_my_str_find_c();

int test_my_str_find_if();

int test_my_str_read_file();

int test_my_str_write_file();

int test_my_str_read_file_delim();

/*******************HELPER_FUNCTIONS**********************************/
int free_and_pass(my_str_t *str, int exit_code);

int free_two_pass(my_str_t *str1, my_str_t *str2, int exit_code);

int free_close_and_pass(my_str_t *str, FILE *file, int exit_code);
/*********************************************************************/

#endif //LAB2_TEST_H
