#!/usr/bin/env bash

cd ../src/asm
fasm sort_arr_sint32.asm ../../build/obj/sort_arr_sint32.o
fasm print_arr_sint32.asm ../../build/obj/print_arr_sint32.o
cd ../c
gcc asm_sort_use.c -c -o ../../build/obj/asm_sort_use.o
cd ../../build/obj/
gcc sort_arr_sint32.o print_arr_sint32.o asm_sort_use.o -o ../bin/test_sort -static
cd ../bin

./test_sort
