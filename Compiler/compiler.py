import sys
import os

instructions_file_path = sys.argv[1]
compiled_file_path = sys.argv[2]

if (os.path.exists(compiled_file_path)):
    os.remove(compiled_file_path)

instructions_file = open(instructions_file_path, 'r')
compiled_file = open(compiled_file_path, 'a')

empty_nibble = '0000'

op_codes = {
    'arithmetic': {
        'g1add': '0000',
        'g1sub': '0001',
        'g1mul': '0010',
        'g1div': '0011',
        'g1mod': '0100',
        'g1cmp': '0101'
    },
    'mov': {
        'g1movi': '0110',
        'g1movr': '0111'
    },
    'logical': {
        'g1and': '1000',
        'g1or': '1001'
    },
    'branch': {
        'g1beq': '1010',
        'g1jmp': '1011'
    },
    'memory': {
        'g1ldr': '1100',
        'g1str': '1101'
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


def to_binary_string(number, width):
    return f'{number:0{width}b}'


def split_nibbles(binary_string):
    result = []
    for i in range(int(len(binary_string)/4)):
        result.append(f'{binary_string[i*4:(i+1)*4]}')
    return result


def get_op_code(op_code_key):
    for inst_type in op_codes:
        if op_code_key in op_codes[inst_type]:
            op_code = op_codes[inst_type][op_code_key]
            return inst_type, op_code

    raise Exception(f'Error: invalid operation "{op_code_key}"')


def get_register_operand(operand):
    try:
        return registers[operand]
    except KeyError:
        raise Exception(f'Error: invalid operand "{operand}"')


def get_immediate_operand(operand, width):
    try:
        int_operand = int(operand.replace('#0x', ''), 16)
        binary_operand = to_binary_string(int_operand, width)

        if (width % 4 != 0):
            raise Exception(
                f'Error: immediate operand width must be a multiple of 4. Got {width}.')
        if (int_operand > 2**width - 1):
            max_hex_value = f'{(2**width - 1):x}'
            raise Exception(
                f'Error: immediate operand "{operand}" is too large. Max value is {max_hex_value}.')

        return split_nibbles(binary_operand)
    except Exception as error:
        raise Exception(str(error))


def arith_logic_instruction(op_code_key, op_code, operands):
    if (op_code_key == 'g1cmp'):
        operand_1 = get_register_operand(operands[0])
        operand_2 = get_register_operand(operands[1])
        return [op_code, operand_1, operand_2, empty_nibble]
    else:
        operand_1 = get_register_operand(operands[0])
        operand_2 = get_register_operand(operands[1])
        operand_3 = get_register_operand(operands[2])
        return [op_code, operand_1, operand_2, operand_3]


def mov_instruction(op_code_key, op_code, operands):
    if (op_code_key == 'g1movi'):
        operand_1 = get_register_operand(operands[0])
        operand_2_nibbles = get_immediate_operand(operands[1], 8)
        return [op_code, operand_1, operand_2_nibbles[0], operand_2_nibbles[1]]
    else:
        operand_1 = get_register_operand(operands[0])
        operand_2 = get_register_operand(operands[1])
        return [op_code, operand_1, operand_2, empty_nibble]


def branch_instruction(op_code, operands, current_pc, labels):
    for label in labels:
        if (label['label_name'] == operands[0]):
            label_pc = label['pc']
            branch_pc = current_pc - label_pc

            branch_operand = to_binary_string(branch_pc, 12)
            branch_nibbles = split_nibbles(branch_operand)

            return [op_code, branch_nibbles[0], branch_nibbles[1], branch_nibbles[2]]

    raise Exception(
        f'Error: label "{operands[0]}" not found in program.')


def memory_instruction(op_code, operands):
    operand_1 = get_register_operand(operands[0])
    operand_2 = get_register_operand(operands[1])
    return [op_code, operand_1, operand_2, empty_nibble]


def decode_instruction(op_code_key, operands, current_pc, labels):
    try:
        inst_type, op_code = get_op_code(op_code_key)

        if (inst_type == 'arithmetic' or inst_type == 'logical'):
            return arith_logic_instruction(op_code_key, op_code, operands)
        elif (inst_type == 'mov'):
            return mov_instruction(op_code_key, op_code, operands)
        elif (inst_type == 'branch'):
            return branch_instruction(op_code, operands, current_pc, labels)
        elif (inst_type == 'memory'):
            return memory_instruction(op_code, operands)
    except Exception as error:
        raise Exception(str(error))


pc = 0
labels = []
for instruction in instructions_file:
    try:
        instruction = instruction.strip().lower()

        if (instruction == '' or instruction[0] == ';'):
            continue
        elif (instruction[-1] == ':'):
            label = {'label_name': instruction[:-1], 'pc': pc}
            labels.append(label)
            continue

        instruction = instruction.split(' ', 1)

        op_code_key = instruction[0]
        operands = instruction[1].replace(' ', '').split(',')

        instruction_nibbles = decode_instruction(
            op_code_key, operands, pc, labels)

        print(instruction)
        print(instruction_nibbles)
        print('-------------------------------------')

        for nibble in instruction_nibbles:
            compiled_file.write(f'{nibble}\n')
            pc += 1

    except Exception as error:
        print(str(error))
        os.remove(compiled_file_path)
        sys.exit(1)
