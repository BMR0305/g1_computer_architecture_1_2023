import sys
import os

instruction_file_path = sys.argv[1]
compiled_file_path = sys.argv[2]

if (os.path.exists(compiled_file_path)):
    os.remove(compiled_file_path)

instruction_file = open(instruction_file_path, 'r')
compiled_file = open(compiled_file_path, 'a')

op_codes = {
    'arithmetic': {
        'g1add': '0000',
        'g1sub': '0001',
        'g1mul': '0010',
        'g1div': '0011',
        'g1mod': '0100'
    }
}

registers = {
    'r0': '0000',
    'r1': '0001',
    'r2': '0010',
    'r3': '0011',
    'r4': '0100',
    'r5': '0101',
    'r6': '0110',
    'r7': '0111',
    'r8': '1000',
    'r9': '1001',
    'r10': '1010',
    'r11': '1011',
}


def get_op_code(op_code_key):
    try:
        for inst_type in op_codes:
            if op_code_key in op_codes[inst_type]:
                op_code = op_codes[inst_type][op_code_key]
                return inst_type, op_code
    except KeyError:
        print(f'Error: invalid operation "{op_code_key}"')
        raise Exception


def get_register_operand(operand):
    try:
        return registers[operand]
    except KeyError:
        print(f'Error: invalid operand "{operand}"')
        raise Exception


def arithmetic_instruction(op_code, operands):
    operand_1 = get_register_operand(operands[0])
    operand_2 = get_register_operand(operands[1])
    operand_3 = get_register_operand(operands[2])
    return [op_code, operand_1, operand_2, operand_3]


def decode_instruction(op_code_key, operands):
    try:
        inst_type, op_code = get_op_code(op_code_key)
        if (inst_type == 'arithmetic'):
            return arithmetic_instruction(op_code, operands)
    except:
        raise Exception


word_width = 4
memory_depth = 16384
address_radix = 'HEX'
data_radix = 'BIN'

compiled_file.write(f'WIDTH={word_width};\n')
compiled_file.write(f'DEPTH={memory_depth};\n\n')
compiled_file.write(f'ADDRESS_RADIX={address_radix};\n')
compiled_file.write(f'DATA_RADIX={data_radix};\n\n')
compiled_file.write('CONTENT BEGIN\n')

pc = 0
for instruction in instruction_file:
    try:
        instruction = instruction.lower().split(' ', 1)

        op_code_key = instruction[0]
        operands = instruction[1].replace(' ', '').replace('\n', '').split(',')

        instruction_nibbles = decode_instruction(op_code_key, operands)

        print(instruction_nibbles)

        for nibble in instruction_nibbles:
            hex_pc = f'{pc:x}'.upper()
            compiled_file.write(f'\t{hex_pc}: {nibble}\n')
            pc += 1

    except:
        os.remove(compiled_file_path)
        sys.exit(1)


compiled_file.write('END;')
