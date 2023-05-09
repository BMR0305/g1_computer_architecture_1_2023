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

for i in range(len(pixels)):
    pixel = pixels[i]
    memory_file.write(f'{pixel[0]:06x}\n'.upper())
