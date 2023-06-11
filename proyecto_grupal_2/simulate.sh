nasm example.asm -o example.bin
# nasm -f elf64 -o example.o example.asm &&
# ld example.o -o example &&

make

# ./bin/vmp-kernel-install
# ./simics ./targets/qsp-x86/qsp_tomasulo.simics
./simics ./targets/qsp-x86/tomasulo.simics