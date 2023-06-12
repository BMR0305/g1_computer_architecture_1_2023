# mkdir build
nasm -f elf64 -o rsa_unrolling.o rsa_unrolling.asm 
ld rsa_unrolling.o -o rsa_unrolling

nasm -f elf64 -o rsa_unrolling_print.o rsa_unrolling_print.asm 
ld rsa_unrolling_print.o -o rsa_unrolling_print

nasm -f elf64 -o rsa.o rsa.asm 
ld rsa.o -o rsa

nasm -f elf64 -o rsa_image.o rsa_image.asm 
ld rsa_image.o -o rsa_image

# objdump -M intel -d build/main.o