section .bss

section	.data
decodi db '0000', 10             ; Buffer para almacenar valor decodificado

section	.text
  global _start
	
_start:
; Carga los valores en los registros
mov eax, 1199 ; Base (3)
mov edi, 1671 ; Exponente (7)
mov esi, 3403 ; Módulo (5)
mov edx, 1

; loopa:
;     mov r9,0

loop_start:
    ;Ciclo 1 - Exponente 1671
    mov ebp, eax   ;Copia de base
    mul edx       ;mul de base por resultado  edx
    xor edx,edx    ;limpiar edx
    div esi        ;residuo en edx
    mov eax, ebp

    mov ebp, edx
    shr edi, 1 ; divide el exponente por dos (desplazamiento a la derecha)
    mul eax      ;Base elevada a la 2
    xor edx,edx
    div esi
    mov eax,edx
    mov edx, ebp

    ;Ciclo 2 - Exponente 835

    mov ebp, eax   ;Copia de base
    mul edx       ;mul de base por resultado  edx
    xor edx,edx    ;limpiar edx
    div esi        ;residuo en edx
    mov eax, ebp

    mov ebp, edx
    shr edi, 1 ; divide el exponente por dos (desplazamiento a la derecha)
    mul eax      ;Base elevada a la 2
    xor edx,edx
    div esi
    mov eax,edx
    mov edx, ebp

    ;Ciclo 3 - Exponente 417
    mov ebp, eax   ;Copia de base
    mul edx       ;mul de base por resultado  edx
    xor edx,edx    ;limpiar edx
    div esi        ;residuo en edx
    mov eax, ebp

    mov ebp, edx
    shr edi, 1 ; divide el exponente por dos (desplazamiento a la derecha)
    mul eax      ;Base elevada a la 2
    xor edx,edx
    div esi
    mov eax,edx
    mov edx, ebp

    ;Ciclo 4 - Exponente 208
    mov ebp, edx
    shr edi, 1 ; divide el exponente por dos (desplazamiento a la derecha)
    mul eax      ;Base elevada a la 2
    xor edx,edx
    div esi
    mov eax,edx
    mov edx, ebp

    ;Ciclo - Exponente 104
    mov ebp, edx
    shr edi, 1 ; divide el exponente por dos (desplazamiento a la derecha)
    mul eax      ;Base elevada a la 2
    xor edx,edx
    div esi
    mov eax,edx
    mov edx, ebp

    ;Ciclo 5 - Exponente 52
    mov ebp, edx
    shr edi, 1 ; divide el exponente por dos (desplazamiento a la derecha)
    mul eax      ;Base elevada a la 2
    xor edx,edx
    div esi
    mov eax,edx
    mov edx, ebp

    ;Ciclo 6 - Exponente 26
    mov ebp, edx
    shr edi, 1 ; divide el exponente por dos (desplazamiento a la derecha)
    mul eax      ;Base elevada a la 2
    xor edx,edx
    div esi
    mov eax,edx
    mov edx, ebp
    
    ;Ciclo 7 - Exponente 13
    mov ebp, eax   ;Copia de base
    mul edx       ;mul de base por resultado  edx
    xor edx,edx    ;limpiar edx
    div esi        ;residuo en edx
    mov eax, ebp

    mov ebp, edx
    shr edi, 1 ; divide el exponente por dos (desplazamiento a la derecha)
    mul eax      ;Base elevada a la 2
    xor edx,edx
    div esi
    mov eax,edx
    mov edx, ebp

    ;Ciclo 8 - Exponente 6
    mov ebp, edx
    shr edi, 1 ; divide el exponente por dos (desplazamiento a la derecha)
    mul eax      ;Base elevada a la 2
    xor edx,edx
    div esi
    mov eax,edx
    mov edx, ebp

    ;Ciclo 9 - Exponente 3
    mov ebp, eax   ;Copia de base
    mul edx       ;mul de base por resultado  edx
    xor edx,edx    ;limpiar edx
    div esi        ;residuo en edx
    mov eax, ebp

    mov ebp, edx
    shr edi, 1 ; divide el exponente por dos (desplazamiento a la derecha)
    mul eax      ;Base elevada a la 2
    xor edx,edx
    div esi
    mov eax,edx
    mov edx, ebp

    ;Ciclo 10 - Exponente 1
    mov ebp, eax   ;Copia de base
    mul edx       ;mul de base por resultado  edx
    xor edx,edx    ;limpiar edx
    div esi        ;residuo en edx
    mov eax, ebp

    mov ebp, edx
    shr edi, 1 ; divide el exponente por dos (desplazamiento a la derecha)
    mul eax      ;Base elevada a la 2
    xor edx,edx
    div esi
    mov eax,edx
    mov edx, ebp

loop_end:

  mov r9,0

  mov r12, rdx   ;Guardar el numero decodificado en un buffer


  ; Convertir el número en una cadena de caracteres
  mov rax, r12 ; Cargar el número en el registro eax
  mov rcx, 10       ; Divisor para la conversión
  xor edx, edx      ; Limpiar el registro edx para la división
  mov rdi, decodi   ; Puntero al búfer de caracteres
  add rdi,3
    ;agregar espacio
  xor edx,edx
  add edx, ' '
  mov byte[rdi], dl
  sub rdi,1           ; Avanzar el puntero al siguiente carácter
  ; add r9,1

  cmp eax, 0        ; Comprobar si el número es cero
  jne .convertir    ; Si no es cero, saltar a la conversión
  mov byte [rdi], '0' ; Si es cero, escribir el carácter '0'
  sub rdi,1           ; Avanzar el puntero al siguiente carácter
  add r9,1
  jmp .comp     ; Saltar a la escritura del archivo

.convertir:
    ; Convertir cada dígito en su representación ASCII
    xor edx,edx
    div rcx           ; Dividir entre 10 para obtener el resto
    add edx, '0'      ; Convertir el resto en su representación ASCII
    mov byte [rdi], dl ; Escribir el carácter en el búfer
    sub rdi,1           ; Avanzar el puntero al siguiente carácter
    add r9, 1
    cmp eax, 0        ; Comprobar si se ha llegado al final del número
    jne .convertir    ; Si no, continuar la conversión

.comp:
  mov eax, 1 ; sys_write
  mov rdi, 1
  mov rsi, decodi ; Stores the message in rsi
  mov edx, 4 ; Number of bytes to write
  syscall
    ; mov eax, decodi
    ; sub eax, 1
    ; cmp rdi, eax
    ; je .escribir

    ; mov byte [rdi], ' ' ; Si es cero, escribir el carácter '0'
    ; sub rdi,1           ; Avanzar el puntero al siguiente carácter
    ; jmp .comp

_exit:
  mov eax, 60
  mov rdi, 0
  syscall