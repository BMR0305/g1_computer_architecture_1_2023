; ORG 0x0           ; add to offsets

section .data

section .text

global _start

_start:
	mov eax, 10
	mov ebx, 20
	add eax, ebx
	add eax, eax
	add eax, eax
	add eax, eax
	add eax, eax

	int 0x0