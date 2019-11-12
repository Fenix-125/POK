format ELF64

section '.text' executable

public main
extrn print_arr_sint32
extrn sort_arr_sint32

main:
    push rbp        ; Stack should be alinged to 16!

    lea edi, [arr]  ; 32b-array adress
    mov esi, [len]  ; array length
    call print_arr_sint32

    lea edi, [arr]  ; 32b-array adress
    mov esi, [len]  ; array length
    call sort_arr_sint32

    lea edi, [arr]  ; 32b-array adress
    mov esi, 5  ; array length
    call print_arr_sint32

    lea edi, [len]  ; 32b-array adress
    mov esi, 1  ; array length
    call print_arr_sint32
    ;##############_EXIT_##############
    pop rbp 
    xor rdi, rdi    ; exit code in rdi
    mov rax, 60     ; exit
    syscall
    ;##################################


section '.data' writeable
    arr dd 5, 3, 4, 2, 1
    len dd 5
