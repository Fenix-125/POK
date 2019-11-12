format ELF64

section '.text' executable

public sort_arr_sint32


; | input:
; rdi = int_32 array adress
; rsi = arr length
; void sort_arr_sint32(int32_t* arr, int32_t len)
sort_arr_sint32:
    push r12            ; r12d - arr begin, the zero(0) index
    push r13            ; r13d - [i] last element in unsorted array
    push r14            ; r14d - [j] arr cursor

    mov r12, rdi        ; arr begin
    shl rsi, 2;         ; multiplie by (4) size of one element (x32b)
    add rsi, rdi
    mov r13, rsi        ; cursor to last elem in arr -> r13

    ; .cut_sorted loop start
    .cut_sorted:
        cmp r13d, r12d      ; [i < 0] -> break % .close_sort
        jb .close_sort

        mov r14, r12      ; arr cursor to 0 el -> r12
        ;.next_el loop start
        .next_el:
            cmp r14, r13          ; [j >= i] -> break & goto .cut_sorted
            jae .close_next_el

            mov eax, [r14 + 4]
            cmp [r14], eax  ; arr[j] <= arr[j + 1] -> .if_true
            jle .if_true
            mov rdi, r14
            lea rsi, [r14 + 4]     ; esi = arr + j + 1
            call _swap              ; "swap (arr+j, arr+j+1) <- (edi, esi)"

            .if_true:
                ; pass
            add r14, 4         ; [j++] increment cursor
            jmp .next_el
        .close_next_el:
            ; pass
        ; .next_el loop end

        sub r13, 4         ; [i--] decrement unsorted arr len
        jmp .cut_sorted
    ; .cut_sorted loop end

    ;###############FUNCTION_EXIT###############
    .close_sort:
        pop r14
        pop r13
        pop r12
        ret
    ;###########################################


; | input:
; rdi = int_32 adress
; rsi = int_32 adress
; void _swap(int32_t* a, int32_t* b)
_swap:
    mov eax, [rdi]
    mov edx, [rsi]
    mov [rdi], edx
    mov [rsi], eax
    ret
