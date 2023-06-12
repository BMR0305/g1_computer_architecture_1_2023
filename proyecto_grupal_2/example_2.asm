; ORG 0x0           ; add to offsets

section .data

section .text

global _start

_start:
	mov ebx, 20
	mov eax, 10
	add eax, ecx
	add eax, eax
	add eax, eax
	add eax, eax
	add eax, eax

	int 0x0