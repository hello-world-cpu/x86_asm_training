section .data
section .bss
res resb 2

section .text
	global _start
_start:
	mov ax, '2'
	sub ax, '0'
	mov bx, '4'
	sub bx, '0'
	mul bx
	add ax, '0'
	mov [res], al
	mov edx, 2
	mov ecx, res
	mov ebx, 1
	mov eax, 4
	int 0x80
	mov eax, 1
	int 0x80
