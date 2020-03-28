section .data
	msg1 db 'Enter first number: '
	lenMsg1 equ $-msg1
	msg2 db 'Enter second number: '
	lenMsg2 equ $-msg2
	msg3 db 'The sum is '
	lenMsg3 equ $-msg3

section .bss
	n1 resb 2
	n2 resb 2
	sum resb 1

section .text
	global _start
_start:
	mov edx, lenMsg1
	mov ecx, msg1
	mov ebx, 1
	mov eax, 4
	int 0x80
	mov edx, 2
	mov ecx, n1
	mov ebx, 2
	mov eax, 3
	int 0x80

	mov edx, lenMsg2
	mov ecx, msg2
	mov ebx, 1
	mov eax, 4
	int 0x80
	mov edx, 2
	mov ecx, n2
	mov ebx, 2
	mov eax, 3
	int 0x80

	mov edx, lenMsg3
	mov ecx, msg3
	mov ebx, 1
	mov eax, 4
	int 0x80
	mov eax, [n1]
	sub eax, '0'		;converting ascii number to the corresponding number
	mov ebx, [n2]
	sub ebx, '0'		;same
	add eax, ebx
	add eax, '0'		;converting the sum from decimal to ascii
	mov [sum], eax
	mov edx, 1
	mov ecx, sum
	mov ebx, 1
	mov eax, 4
	int 0x80

	mov eax, 1
	mov ebx, 0
	int 0x80
