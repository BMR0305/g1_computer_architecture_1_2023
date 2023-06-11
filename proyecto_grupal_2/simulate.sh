# nasm example.asm -o example.bin
nasm -f elf64 -o example.o example.asm &&
ld example.o -o example 

make

sudo ./bin/vmp-kernel-uninstall
sudo ./bin/vmp-kernel-install
# ./simics ./targets/qsp-x86/tomasulo.simics
# ./simics ./targets/qsp-x86/test.simics
./simics ./targets/qsp-x86/rsa_metrics.simics