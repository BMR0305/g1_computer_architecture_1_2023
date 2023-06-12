# nasm ./RSA/rsa_unrolling.asm -o rsa_unrolling.bin
nasm example_2.asm -o example_2.bin

make

# sudo ./bin/vmp-kernel-uninstall
# sudo ./bin/vmp-kernel-install

./simics ./targets/qsp-x86/tomasulo_rsa_unrolling.simics

# ./simics ./targets/qsp-x86/test.simics
# ./simics ./targets/qsp-x86/rsa_metrics.simics