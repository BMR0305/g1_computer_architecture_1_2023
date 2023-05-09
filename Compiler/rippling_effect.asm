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
; r8 = 0xF0 = 201
g1movi r8, #0xC9
; r7 holds the increment for Ax and Ay
; 40 frames -> A += 200/40 = 5 on each frame
g1movi r7, #0x05
; r6 holds the current value for Ax and Ay
g1movi r6, #0x05

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
    stram r3, r0

    g1movi r3, #0x01
    g1add r5, r5, r3
    g1cmp r5, r11
    ; if r5 == r11, jump to increment_clear_y
    g1beq increment_clear_y
    g1jmp clear_loop

    increment_clear_y:
      g1movi r5, #0x00

      g1add r4, r4, r3
      g1cmp r4, r11
      ; if r4 == r11, jump to end_clear_loop
      g1beq end_clear_loop
      g1jmp clear_loop
  
  end_clear_loop:
    g1movi r5, #0x00
    g1movi r4, #0x00

  pixel_loop:
    ; r3 holds the memory address of the current pixel
    g1mul r3, r5, r4
    ; r0 holds the value of the current pixel -> reads from rom
    g1ldr r0, r3

    ; Argument for sin function
    g1movi r1, #0x06
    g1mul r1, r1, r4
    g1div r1, r1, r10

    ; r1 = sin(2*pi*y/Lx)
    sin r1, r1

    ; r1 holds the value for the new pixel x position
    ; r1 = A * sin(2*pi*y/Lx)
    g1mul r1, r6, r1
    ; r1 = A * sin(2*pi*y/Lx) + x
    g1add r1, r1, r5

    g1movi r3, #0x01
    g1sub r11, r11, r3

    ; r1 = [A * sin(2*pi*y/Lx) + x] % 300
    g1mod r1, r1, r11

    ; Argument for sin function
    g1movi r2, #0x06
    g1mul r2, r2, r5
    g1div r2, r2, r9

    ; r2 = sin(2*pi*x/Ly)
    sin r2, r2

    ; r2 holds the value for the new pixel y position
    ; r2 = A * sin(2*pi*x/Ly)
    g1mul r2, r6, r2
    ; r2 = A * sin(2*pi*x/Ly) + y
    g1add r2, r2, r4

    ; r3 holds the memory address for the new pixel
    g1mul r3, r1, r2

    ; stores the value of the current pixel in its new position
    stram r3, r0
    ; ; r1 = 250
    ; g1movi r1, #0xFA
    ; ; r2 = 20
    ; g1movi r2, #0x14
    ; ; r1 = 250 * 20 = 5000
    ; g1mul r1, r1, r2
    ; ; r2 = 18
    ; g1movi r2, #0x12
    ; ; r1 = 5000 * 18 =  90000
    ; g1mul r1, r1, r2
    ; ; r3 = x*y + 90000 -> stores in ram 
    ; g1add r3, r3, r2
    ; g1str r3, r0

    g1movi r3, #0x01
    g1add r11, r11, r3

    g1add r5, r5, r3
    g1cmp r5, r11
    ; if r5 == r11, jump to increment_pixel_y
    g1beq increment_pixel_y

    increment_pixel_y:
      ; resets the value for x
      g1movi r5, #0x00

      g1add r4, r4, r3
      g1cmp r4, r11
      ; if r4 == r11, jump to end_pixel_loop
      g1beq pixel_loop

  end_pixel_loop:
    g1add r6, r6, r7
    g1cmp r6, r8
    ; if r6 == r8, jump to frame_loop
    g1beq frame_loop

end:
  ; g1halt