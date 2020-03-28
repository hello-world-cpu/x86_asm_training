section	.text
	global _start		;must be declared for using gcc

_start:				;tell linker entry point
	mov ax,'9'
	sub ax, '0'
	
	mov bl, '3'
	sub bl, '0'
	div bl
	;add al, '0'
	;add ah, '0'
	add ax, '00'
	mov [r], ah
	mov [q], al

	mov ecx, msgq	
	mov edx, lenq
	mov ebx,1		;file descriptor (stdout)
	mov eax,4		;system call number (sys_write)
	int 0x80		;call kernel

	mov ecx, q
	mov edx, 1
	mov ebx, 1		;file descriptor (stdout)
	mov eax, 4		;system call number (sys_write)
	int 0x80		;call kernel

	mov ecx, msgr
	mov edx, lenr
	mov ebx,1		;file descriptor (stdout)
	mov eax,4		;system call number (sys_write)
	int 0x80		;call kernel

	mov ecx, r
	mov edx, 1
	mov ebx, 1		;file descriptor (stdout)
	mov eax, 4		;system call number (sys_write)
	int 0x80		;call kernel

	mov eax,1		;system call number (sys_exit)
	int 0x80		;call kernel

section .data
	msgq db "q="
	lenq equ $-msgq
	msgr db 'r='
	lenr equ $-msgr

section .bss
	q resb 1
	r resb 1
