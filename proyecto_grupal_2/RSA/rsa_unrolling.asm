section	.text
  global _start
	
_start:
; Carga los valores en los registros
mov eax, 1199 ; Base (3)
mov edi, 1671 ; Exponente (7)
mov esi, 3403 ; Módulo (5)
mov edx, 1

loop_start:
  ;Ciclo 1 - Exponente 1671
  mov ebp, eax   ;Copia de base
  mul edx        ;mul de base por resultado  edx
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

_exit:
  int 0x0