; Moves 255 into r0
g1movi r0, #0xFF
; Moves 46 into r1
g1movi r1, #0x2E
; Adds r0 to r1 and stores the result in r11 -> r11 = 255 + 46 = 301
; r11 holds the dimensions of the image (300x300)
g1add r11, r0, r1

; r10 holds the value for Lx
g1movi r10, #0x4B
; r9 holds the value for Ly
g1movi r9, #0x4B

; r8 holds the maximum value for Ax and Ay
; r8 = 0xF0 = 246
g1movi r8, #0xF6
; r7 holds the increment for Ax and Ay
; 40 frames -> A += 240/40 = 6 on each frame
g1movi r7, #0x06
; r6 holds the current value for Ax and Ay
g1movi r6, #0x06
frame_loop:
  ; r5 holds the current value for x
  g1movi r5, #0x00
  ; r4 holds the current value for y
  g1movi r4, #0x00

  clear_loop:
    ; r3 holds the memory address for the current pixel
    g1mul r3, r5, r4
    ; r0 holds the value of the current pixel
    g1movi r0, #0x00
    ; stores the black pixel in the current position
    g1ldr r0, r3

    g1movi r3, #0x01
    g1add r5, r5, r3
    g1cmp r5, r11
    ; if r5 != r11, jump to clear_loop
    ; g1bne clear_loop
    g1beq clear_loop
    g1movi r5, #0x00

    g1add r4, r4, r3
    g1cmp r4, r11
    ; if r4 != r11, jump to clear_loop
    ; g1bne clear_loop
    g1beq clear_loop

  g1movi r5, #0x00
  g1movi r4, #0x00

  pixel_loop:
    ; r3 holds the memory address of the current pixel
    g1mul r3, r5, r4
    ; r0 holds the value of the current pixel -> reads from rom
    g1ldr r0, r3
    ; r1 holds the value for the new pixel x position
    ; sin r1, 2*pi*y/lx ; ???
    g1movi r1, #0x01
    ; r1 = A * sin(2*pi*y/Lx)
    g1mul r1, r6, r1
    ; r1 = A * sin(2*pi*y/Lx) + x
    g1add r1, r1, r5
    ; r1 = [A * sin(2*pi*y/Lx) + x] % 300
    g1mod r1, r1, r11

    ; r2 holds the value for the new pixel y position
    ; sin r2, 2*pi*x/Ly ; ???
    g1movi r2, #0x01
    ; r2 = A * sin(2*pi*x/Ly)
    g1mul r2, r6, r2
    ; r2 = A * sin(2*pi*x/Ly) + y
    g1add r2, r2, r4
    ; r2 = [A * sin(2*pi*x/Ly) + y] % 300
    g1mod r2, r2, r11

    ; r3 holds the memory address for the new pixel
    g1mul r3, r1, r2
    ; r1 = 250
    g1movi r1, #0xFA
    ; r2 = 20
    g1movi r2, #0x14
    ; r1 = 250 * 20 = 5000
    g1mul r1, r1, r2
    ; r2 = 18
    g1movi r2, #0x12
    ; r1 = 5000 * 18 =  90000
    g1mul r1, r1, r2
    ; r3 = x*y + 90000 -> stores in ram 
    g1add r3, r3, r2
    ; stores the value of the current pixel in its new position
    g1str r3, r0

    g1movi r3, #0x01
    g1add r5, r5, r3
    g1cmp r5, r11
    ; if r5 != r11, jump to pixel_loop
    ; g1bne pixel_loop
    g1beq pixel_loop
    ; resets the value for x
    g1movi r5, #0x00

    g1add r4, r4, r3
    g1cmp r4, r11
    ; if r4 != r11, jump to pixel_loop
    ; g1bne pixel_loop
    g1beq pixel_loop

  g1add r6, r6, r7
  g1cmp r6, r8
  ; if r6 != r8, jump to frame_loop
  ; g1bne frame_loop 
  g1beq frame_loop