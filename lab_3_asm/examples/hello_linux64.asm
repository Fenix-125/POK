format ELF64 executable 3
segment readable executable

entry $
	mov	eax,1		; __NR_write (sys_write) == 1

	mov	edi,1		; Zero extension -- ������ ������� RAX, RDI � �.�.
                    ; �����������
	lea	rsi,[msg]
	mov	edx,msg_size 
	syscall

	mov	eax,60		; __NR_exit (sys_exit) == 0 
	xor	edi,edi 	; exit code 0
	syscall

segment readable writeable

msg db 'Hello 64-bit Linux world!',0xA
msg_size = $-msg 