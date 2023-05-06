import sys

instruction_file_path = sys.argv[1]
instruction_file = open(instruction_file_path, "r")

compiled_file_path = sys.argv[2]
compiled_file = open(compiled_file_path, "a")

pc = 0
for instruction in instruction_file:
    print(pc)
    print(instruction)
    compiled_file.write(str(pc) + " " + instruction)
    pc += 1
