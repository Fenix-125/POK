format ELF64

section '.text' executable

public main
extrn print_arr_sint32


main:
    push rbp        ; Stack should be alinged to 16!

    lea edi, [arr]  ; 32b-array adress
    mov esi, [len]  ; array length
    call print_arr_sint32
    
    
    ;##############_EXIT_##############
    pop rbp 
    xor rdi, rdi    ; exit code in rdi
    mov rax, 60     ; exit
    syscall
    ;##################################


section '.data' writeable
    arr dd 2147483648, 2000000000, 2111111111, -2122222222
    len dd 4
