# mkdir build
nasm -f elf64 -o main_2.o main_2.asm 
ld main_2.o -o main_2
# objdump -M intel -d build/main.o