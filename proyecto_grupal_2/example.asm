ORG 0x0           ; add to offsets

section .data

section .text

global _start

_start:
    ; mov eax, 3
    ; add eax, eax
    ; mov eax, 5
    ; mov ebx, 6
    ; add eax, ebx
    ; add ebx, eax
    mov eax, 3 ; eax = 3
    mov ebx, 6 ; ebx = 6
    mov ecx, 30 ; ecx = 30
    add eax, ebx ; eax = 3 + 6 = 9
    sub ecx, eax ; ecx = 30 - 9 = 21
    mov eax, 4 ; eax = 4
    mov ebx, 5 ; ebx = 5
    mul ebx ; eax = eax * ebx = 4 * 5 = 20
    imul eax, 10 ; eax = eax * 10 = 20 * 10 = 200
    div ebx ; eax = eax / ebx = 200 / 5 = 40
    xor eax, eax ; eax = 0
    shr ebx, 1 ; ebx = ebx >> 1 = 101 >> 1 = 10
    int 0x0 ; exit