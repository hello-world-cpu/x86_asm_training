section .data
	usrMsg db 'Enter a number: '
	lenUsrMsg equ $-usrMsg
	dispMsg db 'You have entered the number '
	lenDispMsg equ $-dispMsg
	newLine db 0xa

section .bss
	num resb 5

section .text
	global _start
_start:
	mov edx, lenUsrMsg
	mov ecx, usrMsg
	mov ebx, 1
	mov eax, 4
	int 0x80

	mov edx, 5
	mov ecx, num
	mov ebx, 2
	mov eax, 3
	int 0x80

	mov edx, lenDispMsg
	mov ecx, dispMsg
	mov ebx, 1
	mov eax, 4
	int 0x80

	mov edx, 5
	mov ecx, num
	mov ebx, 1
	mov eax, 4
	int 0x80

	mov edx, 1
	mov ecx, newLine
	int 0x80

	mov eax, 1
	mov ebx, 0
	int 0x80
