format ELF64

section '.text' executable

public main
extrn printf
extrn getpid

main:
    push rbp        ; Stack should be alinged to 16!
    call getpid
    mov esi , eax   ; Результат виклику −− в EAX
    lea rdi , [msg] ; Увага! Автоматично йде вiдносно RIP!
    xor rax, rax    ; Кiлькiсть використаних XMM регiстрiв для variadic arg
    call printf     ; " printf rdi , rsi "
    xor eax, eax
    pop rbp
    ret

section '.data' writeable
msg db 'Current process ID is %d.', 0x0A, 0
