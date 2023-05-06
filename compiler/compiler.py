import sys
import os

word_width = 4
memory_depth = 16384
address_radix = 'DEC'
data_radix = 'BIN'

instruction_file_path = sys.argv[1]
instruction_file = open(instruction_file_path, 'r')

compiled_file_path = sys.argv[2]
os.remove(compiled_file_path)
compiled_file = open(compiled_file_path, 'a')

compiled_file.write(f'WIDTH={word_width};\n')
compiled_file.write(f'DEPTH={memory_depth};\n\n')
compiled_file.write(f'ADDRESS_RADIX={address_radix};\n')
compiled_file.write(f'DATA_RADIX={data_radix};\n\n')
compiled_file.write('CONTENT BEGIN\n')

pc = 0
for instruction in instruction_file:
    decoded_instruction = '0101'
    compiled_file.write(f'\t{pc}: {decoded_instruction}\n')
    pc += 1

compiled_file.write('END;')
