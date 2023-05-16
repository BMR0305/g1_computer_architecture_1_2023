python ./Compiler/compiler.py ./Compiler/rippling_effect.asm ./IF/ROMInstructions.mem
python ./Compiler/compiler.py ./Compiler/rippling_effect.asm ./custom_simulation/ROMInstructions.mem

# python ./Compiler/compiler.py ./Compiler/arith_instructions.txt ./custom_simulation/ROMInstructions.mem 
# python ./Compiler/compiler.py ./Compiler/mov_instruction.txt ./custom_simulation/ROMInstructions.mem
# python ./Compiler/compiler.py ./Compiler/memory_instructions.txt ./custom_simulation/ROMInstructions.mem
# python ./Compiler/compiler.py ./Compiler/branch_instructions.txt ./custom_simulation/ROMInstructions.mem

python ./Compiler/load_image.py ./Compiler/image.png ./Memory/init/image.mif
python ./seno_lookup/load_seno.py ./Memory/init/sin.mif