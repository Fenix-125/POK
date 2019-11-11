format ELF64 executable 3

segment readable executable

entry main

main:
    mov rdx, 14    ; msg length
    lea rsi, [msg] ; msg adress
    mov rdi, 1     ; stdout
    mov rax, 1     ; sys_write
    syscall

    xor rdi, rdi ; exit code in rdi
    mov rax, 60  ; exit
    syscall

segment readable writeable

msg db 'HelloWorld!',0xA,0x0
