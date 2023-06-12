; ORG 0x0           ; add to offsets

section .data
decrypting_message db "bye bye", 10

section .text

global _start

_start:
    mov eax,  ; eax = 3
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

    mov rax, 1 ; sys_write
    mov rdi, 1
    mov rsi, decrypting_message ; Stores the message in rsi
    mov rdx, 25 ; Number of bytes to write
    syscall

    mov rax, 60
    mov rdi, 0
    syscall