format ELF64

section '.text' executable

extrn printf
public print_arr_sint32

; | input:
; rdi = int_32 array adress
; rsi = arr length
; void print_arr_sint32(int32_t* arr, int32_t len)
print_arr_sint32:
    push r12            ; r12 - arr cursor
    push r13            ; r13 - last element adress

    mov r12, rdi       ; arr cursor to 0 el -> r12
    shl rsi, 2;         ; multiplie by (4) size of one element (x32b)
    add rsi, rdi
    mov r13, rsi       ; cursor to last elem in arr -> r13

    ; loop start
    .next_el:

        mov esi, [r12] ; load elem under cursor
        lea rdi, [form] ; load the format str
        xor rax, rax    ; num of used XMMs for variadic arg

        call printf     ; "printf ("%d ", val) <- (rdi, esi)"

        add r12, 4      ; move cursor to 4 bytes
        cmp r12, r13
        jne .next_el
    ; loop end


    lea rdi, [end_line] ; load the end str
    xor rax, rax    ; num of used XMMs for variadic arg
    call printf     ; "printf ("\n") <- (rdi)"

    xor rax, rax
    pop r13
    pop r12
    ret

section '.data' writeable
    form db '%d ',0x0
    end_line db 0xa
