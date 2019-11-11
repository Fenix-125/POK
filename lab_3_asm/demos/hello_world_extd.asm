format ELF64 executable 3

segment readable executable

entry main

main:
    lea rax, [msg]
    call print_str

    xor rdi, rdi ; exit code in rdi
    mov rax, 60  ; exit
    syscall

; | input:
; rax = string adress 
print_str:
    lea rsi, [rax] ; msg adress (put into register for syscoll)
    call strlen
    mov rdx, rax   ; msg length
    mov rdi, 1     ; stdout
    mov rax, 1     ; sys_write
    syscall
    ret

; | input:
; rax = string adress 
; | output:
; rax = string length
strlen:
    push rdx
    xor rdx, rdx
    .next_iter:
        cmp [rax+rdx], byte 0
        je .close
        inc rdx
        jmp .next_iter
    .close:
        mov rax, rdx
        pop rdx
        ret


segment readable writeable

msg db 'Hello World!',0xA,0x0
