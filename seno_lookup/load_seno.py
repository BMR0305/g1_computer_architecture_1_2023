import os
import math
import sys

memory_file_path = sys.argv[1]

if (os.path.exists(memory_file_path)):
    os.remove(memory_file_path)

memory_file = open(memory_file_path, 'a')

word_width = 24
memory_depth = 300
address_radix = 'HEX'
data_radix = 'HEX'

memory_file.write(f'WIDTH={word_width};\n')
memory_file.write(f'DEPTH={memory_depth};\n\n')
memory_file.write(f'ADDRESS_RADIX={address_radix};\n')
memory_file.write(f'DATA_RADIX={data_radix};\n\n')
memory_file.write('CONTENT BEGIN\n')

Lx = 75
for i in range(0,300):
    argumento = (2*math.pi*i)/Lx
    seno = round(math.sin(argumento)*100)
       
    if (seno < 0):
        seno = seno % (1 << word_width)
    print(seno) 
    hex_seno = f'{seno:06x}'
    print(hex_seno)
    memory_file.write(f'\t{i:05x} : {hex_seno};\n'.upper())

memory_file.write('END;')