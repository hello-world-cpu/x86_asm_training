section .data
	sent db 'A nice dog!', 0xa
	len equ $-sent

section .text
	global _start
_start:
	mov edx, len
	mov ecx, sent
	mov ebx, 1
	mov eax, 4
	int 0x80
	mov [sent+7], dword 'cat!'
	mov edx, len
	mov ecx, sent
	mov ebx, 1
	mov eax, 4
	int 0x80
	mov eax, 1
	int 0x80
