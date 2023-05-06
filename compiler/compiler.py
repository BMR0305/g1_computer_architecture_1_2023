import sys
import os

instruction_file_path = sys.argv[1]
compiled_file_path = sys.argv[2]

if (os.path.exists(compiled_file_path)):
    os.remove(compiled_file_path)

instruction_file = open(instruction_file_path, 'r')
compiled_file = open(compiled_file_path, 'a')

empty_nibble = '0000'

op_codes = {
    'arithmetic': {
        'g1add': '0000',
        'g1sub': '0001',
        'g1mul': '0010',
        'g1div': '0011',
        'g1mod': '0100',
        # 'g1cmp': '0101'
    },
    'mov': {
        'g1movi': '0110',
        'g1movr': '0111'
    },
    'logical': {
        'g1and': '1000',
        'g1or': '1001'
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
        raise Exception(f'Error: invalid operation "{op_code_key}"')


def get_register_operand(operand):
    try:
        return registers[operand]
    except KeyError:
        raise Exception(f'Error: invalid operand "{operand}"')


def get_immediate_operand(operand, width):
    try:
        int_operand = int(operand.replace('#0x', ''), 16)
        binary_operand = f'{int_operand:0{width}b}'

        if (width % 4 != 0):
            raise Exception(
                f'Error: immediate operand width must be a multiple of 4. Got {width}.')
        if (int_operand > 2**width - 1):
            max_hex_value = f'{(2**width - 1):x}'
            raise Exception(
                f'Error: immediate operand "{operand}" is too large. Max value is {max_hex_value}.')

        result = []
        for i in range(int(width/4)):
            result.append(f'{binary_operand[i*4:(i+1)*4]}')
        return result
    except Exception as error:
        raise Exception(str(error))


def arith_logic_instruction(op_code, operands):
    operand_1 = get_register_operand(operands[0])
    operand_2 = get_register_operand(operands[1])
    operand_3 = get_register_operand(operands[2])
    return [op_code, operand_1, operand_2, operand_3]


def mov_instruction(op_code_key, op_code, operands):
    if (op_code_key == 'g1movi'):
        operand_1 = get_register_operand(operands[0])
        operand_2 = get_immediate_operand(operands[1], 8)
        return [op_code, operand_1, operand_2[0], operand_2[1]]
    else:
        operand_1 = get_register_operand(operands[0])
        operand_2 = get_register_operand(operands[1])
        return [op_code, operand_1, operand_2, empty_nibble]


def decode_instruction(op_code_key, operands):
    try:
        inst_type, op_code = get_op_code(op_code_key)

        if (inst_type == 'arithmetic' or inst_type == 'logical'):
            return arith_logic_instruction(op_code, operands)
        elif (inst_type == 'mov'):
            return mov_instruction(op_code_key, op_code, operands)
    except Exception as error:
        raise Exception(str(error))


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

        print(instruction)
        print(instruction_nibbles)
        print('-------------------------------------')

        for nibble in instruction_nibbles:
            hex_pc = f'{pc:x}'.upper()
            compiled_file.write(f'\t{hex_pc}: {nibble}\n')
            pc += 1

    except Exception as error:
        print(str(error))
        os.remove(compiled_file_path)
        sys.exit(1)


compiled_file.write('END;')
