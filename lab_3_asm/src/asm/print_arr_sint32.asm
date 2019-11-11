format ELF64

section '.text' executable

extrn printf
public print_arr_sint32

; | input:
; edi = int_32 array adress
; esi = arr length
; void print_arr_sint32(int32_t* arr, int32_t len)
print_arr_sint32:
    push r12            ; r12d - arr cursor
    push r13            ; r13d - last element adress

    mov r12d, edi       ; arr cursor to 0 el -> r12d
    imul esi, 4;        ; multiplie by size of one element (x32b)
    add esi, edi
    ;add esi, 4
    mov r13d, esi       ; cursor to last elem in arr -> r13d

    ; loop start
    .next_el:

        mov esi, [r12d] ; load elem under cursor
        lea edi, [form] ; load the format str
        xor rax, rax    ; num of used XMMs for variadic arg

        call printf     ; "printf ("%d ", val) <- (edi, esi)"

        add r12d, 4      ; move cursor to 4 bytes
        cmp r12d, r13d
        jne .next_el
    ; loop end
    xor rax, rax
    pop r12
    pop r13
    ret

section '.data' writeable
    form db '%d',0xa,0x0
