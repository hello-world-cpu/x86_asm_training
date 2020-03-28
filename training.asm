section .data
	n db 8

section .text
	global _start
_start:
;	mov ax, 5
;	mov ebx, 0
;	push ebx
;	mov ebx, 1
;	push ebx
;loop:
;	dec ax
;	add ebx, dword [esp+4]
;	push ebx
;	cmp ax, 0
;	jne loop

	mov edx, 1
	mov ecx, n  ;[esp]
	mov ebx, 1
	mov eax, 4
	int 0x80

	mov eax, 1
;	mov ebx, 0
	int 0x80
