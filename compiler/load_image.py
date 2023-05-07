import sys
import os

from PIL import Image

image_path = sys.argv[1]
memory_file_path = sys.argv[2]

if (os.path.exists(memory_file_path)):
    os.remove(memory_file_path)

memory_file = open(memory_file_path, 'a')

image = Image.open(image_path)
pixels = list(image.getdata())

word_width = 24
memory_depth = 90000
address_radix = 'HEX'
data_radix = 'HEX'

memory_file.write(f'WIDTH={word_width};\n')
memory_file.write(f'DEPTH={memory_depth};\n\n')
memory_file.write(f'ADDRESS_RADIX={address_radix};\n')
memory_file.write(f'DATA_RADIX={data_radix};\n\n')
memory_file.write('CONTENT BEGIN\n')

for i in range(len(pixels)):
    pixel = pixels[i]
    hex_pixel = f'{pixel[0]:02x}{pixel[1]:02x}{pixel[2]:02x}'
    memory_file.write(f'\t{i:05x} : {hex_pixel};\n'.upper())

memory_file.write('END;')
