format ELF64

section '.text' executable

public sort_arr_sint32


; | input:
; edi = int_32 array adress
; esi = arr length
; void sort_arr_sint32(int32_t* arr, int32_t len)
sort_arr_sint32:
    push r12            ; r12d - arr begin, the zero(0) index
    push r13            ; r13d - [i] last element in unsorted array
    push r14            ; r14d - [j] arr cursor

    mov r12d, edi       ; arr begin
    shl esi, 2;         ; multiplie by (4) size of one element (x32b)
    add esi, edi
    mov r13d, esi       ; cursor to last elem in arr -> r13d

    ; .cut_sorted loop start
    .cut_sorted:
        cmp r13d, r12d      ; [i < 0] -> break % .close_sort
        jb .close_sort

        mov r14d, r12d      ; arr cursor to 0 el -> r12d
        ;.next_el loop start
        .next_el:
            cmp r14d, r13d          ; [j >= i] -> break & goto .cut_sorted
            jae .close_next_el

            mov eax, [r14d + 4]
            cmp [r14d], eax  ; arr[j] <= arr[j + 1] -> .if_true
            jle .if_true
            mov edi, r14d
            lea esi, [r14d + 4]     ; esi = arr + j + 1
            call _swap              ; "swap (arr+j, arr+j+1) <- (edi, esi)"

            .if_true:
                ; pass
            add r14d, 4         ; [j++] increment cursor
            jmp .next_el
        .close_next_el:
            ; pass
        ; .next_el loop end

        sub r13d, 1         ; [i--] decrement unsorted arr len
        jmp .cut_sorted
    ; .cut_sorted loop end

    ;###############FUNCTION_EXIT###############
    .close_sort:
        xor rax, rax
        pop r14
        pop r13
        pop r12
        ret
    ;###########################################


; | input:
; edi = int_32 adress
; esi = int_32 adress
; void _swap(int32_t* a, int32_t* b)
_swap:
    mov eax, [edi]
    mov edx, [esi]
    mov [edi], edx
    mov [esi], eax
    ret
