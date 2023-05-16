; Moves 255 into r0
g1movi r0, #0xFF
; Moves 46 into r1
g1movi r1, #0x2D
; Adds r0 to r1 and stores the result in r11 -> r11 = 255 + 45 = 300
; r11 holds the dimensions of the image (300x300)
g1add r11, r0, r1

; r10 holds the value for Lx
g1movi r10, #0x4B
; r9 holds the value for Ly
g1movi r9, #0x4B

; r8 holds the maximum value for Ax and Ay
; r8 = 205
g1movi r8, #0xCD
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

    ; r1 = 215
    g1movi r1, #0xD7
    ; r2 = 35
    g1movi r2, #0x23
    ; r1 = 215 * 35 = 7525
    g1mul r1, r1, r2
    ; r2 = 12
    g1movi r2, #0xC
    ; r1 = 7525 * 12 =  90300
    g1mul r1, r1, r2
    ; r3 = x*y + 90300 -> stores in ram 
    g1add r3, r3, r2

    ; stores the black pixel in the current position
    g1str r3, r0

    g1movi r3, #0x01
    g1add r5, r5, r3
    g1cmp r5, r11
    ; if r5 == r11, jump to increment_clear_y
    g1beq increment_clear_y
    g1jmp clear_loop

    increment_clear_y:
      g1movi r5, #0x00

      ; g1add r4, r4, r3
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

    ; ; r11 = 300
    ; g1movi r3, #0x01
    ; g1sub r11, r11, r2

    ; r3 = 16
    g1movi r3, #0x10
    ; r2 = 45
    g1movi r2, #0x2D
    ; r3 = 16 * 45 = 720
    g1mul r3, r3, r2
    ; r2 = 125
    g1movi r2, #0x7D
    ; r3 = 720 * 125 =  90000
    g1mul r3, r3, r2

    ; r1 holds the value for the new pixel x position
    ; r3 = y + 90000 -> Loads from sin lookup table
    g1add r1, r4, r3
    ; r1 = 100*sin(2*pi*y/Lx)
    g1ldr r1, r1
    ; r10 = 100
    g1movi r10, #0x64
    ; r1 = 100 * sin(2*pi*y/Lx) / 100
    g1div r1, r1, r10
    ; r1 = A * sin(2*pi*y/Lx)
    g1mul r1, r6, r1
    ; r1 = A * sin(2*pi*y/Lx) + x
    g1add r1, r1, r5
    ; r1 = [A * sin(2*pi*y/Lx) + x] % 300
    g1mod r1, r1, r11

    ; r2 holds the value for the new pixel y position
    ; r2 = x + 90000 -> Loads from sin lookup table
    g1add r2, r5, r3
    ; r2 = sin(2*pi*x/Ly)
    g1ldr r2, r2
    ; r10 = 100
    g1movi r10, #0x64
    ; r2 = 100 * sin(2*pi*x/Ly) / 100
    g1div r2, r2, r10
    ; r2 = A * sin(2*pi*x/Ly)
    g1mul r2, r6, r2
    ; r2 = A * sin(2*pi*x/Ly) + y
    g1add r2, r2, r4
    ; r2 = [A * sin(2*pi*x/Ly) + y] % 300
    g1mod r1, r1, r11

    ; r3 holds the memory address for the new pixel
    ; r3 = x_new * y_new
    g1mul r3, r1, r2

    ; stores the value of the current pixel in its new position
    ; r1 = 43
    g1movi r1, #0x2B
    ; r2 = 35
    g1movi r2, #0x23
    ; r1 = 43 * 35 = 1505
    g1mul r1, r1, r2
    ; r2 = 12
    g1movi r2, #0xC
    ; r1 = 1505 * 12 =  18060
    g1mul r1, r1, r2
    ; r2 = 5
    g1movi r2, #0x5
    ; r1 = 18060 * 5 =  90300
    g1mul r1, r1, r2
    ; r3 = x_new * y_new + 90300 -> stores in ram 
    g1add r3, r3, r1
    g1str r3, r0

    ; ; r11 = 301 
    ; g1movi r3, #0x01
    ; g1add r11, r11, r3

    ; x = x + 1
    g1add r5, r5, r3
    
    ; if x == 300, jump to increment_pixel_y
    g1cmp r5, r11
    g1beq increment_pixel_y

    increment_pixel_y:
      ; resets the value for x
      g1movi r5, #0x00

      ; y = y + 1
      g1add r4, r4, r3

      ; if y == 301, jump to end_pixel_loop
      g1cmp r4, r11
      g1beq end_pixel_loop
      
      ; else, jump to pixel_loop
      g1jmp pixel_loop

  end_pixel_loop:
    ; Increments A
    g1add r6, r6, r7

    ; if A == r8, jump to frame_loop
    g1cmp r6, r8
    g1beq frame_loop

end:
  ; g1halt