
; fasm example of using the C library in Unix systems

; compile the source with commands like:
;   fasm libcdemo.asm libcdemo.o
;   gcc libcdemo.o -o libcdemo
;   strip libcdemo

format ELF64

section '.text' executable

 public main
 extrn printf
 extrn puts
 extrn exit
 extrn getpid

 main:
	push	rbp		   ; Stack should be alinged to 16!
;	 lea 	rdi, [msg] ; rip + автоматично
;	 xor	eax, eax
;    call 	puts	

	call	getpid	
	mov		esi, eax	; Результат виклику -- в EAX
	lea		rdi, [msg] 	; Увага! Автоматично йде відносно RIP!
	xor     rax, rax	; Кількість використаних XMM регістрів для variadic arg
	call	printf 		; "printf rdi, rsi"

	xor		eax, eax
	pop		rbp

	ret

section '.data' writeable

msg db "Current process ID is %d.",0xA,0
