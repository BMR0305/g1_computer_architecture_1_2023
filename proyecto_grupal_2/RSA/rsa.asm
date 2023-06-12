section .bss

section	.data
decodi db '0000', 10             ; Buffer para almacenar valor decodificado

section	.text
  global _start
	
_start:
; Carga los valores en los registros
mov rax, 1199 ; Base (3)
mov r15, 1671 ; Exponente (7)
mov r14, 3403 ; Módulo (5)
mov rdx, 1

; loopa:
;     mov r9,0

loop_start:
  ; Si el exponente es cero, termina el bucle
  cmp r15, 0
  je loop_end

  ; Si el exponente es impar, multiplica el resultado por la base
  test r15, 1
  jnz multiply

  ; Si el exponente es par, eleva la base al cuadrado
  multiply_by_self:
    mov rbp, rdx
    shr r15, 1 ; divide el exponente por dos (desplazamiento a la derecha)
    mul rax      ;Base elevada a la 2
    xor rdx,rdx
    div r14
    mov rax,rdx
    mov rdx, rbp
    jmp loop_start

  multiply:
    mov rbp, rax   ;Copia de base
    mul rdx       ;mul de base por resultado  rdx
    xor rdx,rdx    ;limpiar rdx
    div r14        ;residuo en rdx
    mov rax, rbp  ;Copia del valor de la base
    jmp multiply_by_self

loop_end:

  mov r9,0

  mov r12, rdx   ;Guardar el numero decodificado en un buffer


  ; Convertir el número en una cadena de caracteres
  mov rax, r12 ; Cargar el número en el registro rax
  mov rcx, 10       ; Divisor para la conversión
  xor rdx, rdx      ; Limpiar el registro rdx para la división
  mov rdi, decodi   ; Puntero al búfer de caracteres
  add rdi,3
    ;agregar espacio
  xor rdx,rdx
  add rdx, ' '
  mov byte[rdi], dl
  sub rdi,1           ; Avanzar el puntero al siguiente carácter
  ; add r9,1

  cmp rax, 0        ; Comprobar si el número es cero
  jne .convertir    ; Si no es cero, saltar a la conversión
  mov byte [rdi], '0' ; Si es cero, escribir el carácter '0'
  sub rdi,1           ; Avanzar el puntero al siguiente carácter
  add r9,1
  jmp .comp     ; Saltar a la escritura del archivo

.convertir:
    ; Convertir cada dígito en su representación ASCII
    xor rdx,rdx
    div rcx           ; Dividir entre 10 para obtener el resto
    add rdx, '0'      ; Convertir el resto en su representación ASCII
    mov byte [rdi], dl ; Escribir el carácter en el búfer
    sub rdi,1           ; Avanzar el puntero al siguiente carácter
    add r9, 1
    cmp rax, 0        ; Comprobar si se ha llegado al final del número
    jne .convertir    ; Si no, continuar la conversión

.comp:
  mov rax, 1 ; sys_write
  mov rdi, 1
  mov rsi, decodi ; Stores the message in rsi
  mov rdx, 4 ; Number of bytes to write
  syscall
    ; mov rax, decodi
    ; sub rax, 1
    ; cmp rdi, rax
    ; je .escribir

    ; mov byte [rdi], ' ' ; Si es cero, escribir el carácter '0'
    ; sub rdi,1           ; Avanzar el puntero al siguiente carácter
    ; jmp .comp

_exit:
  mov rax, 60
  mov rdi, 0
  syscall