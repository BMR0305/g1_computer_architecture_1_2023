// Wire widths
`define WORD_LEN 16
`define OP_CODE_LEN 4
`define EXE_CMD_LEN 4

`define REG_FILE_ADDR_LEN 4
`define FORW_SEL_LEN 2


// To be used inside controller.v
`define OP_ADD 4'b0000
`define OP_SUB 4'b0001
`define OP_MUL 4'b0010
`define OP_DIV 4'b0011
`define OP_MOD 4'b0100
`define OP_CMP 4'b0101

`define OP_MOVI 4'b0110
`define OP_MOVR 4'b0111

`define OP_AND 4'b1000
`define OP_OR 4'b1001

`define OP_BEQ 4'b1010
`define OP_JMP 4'b1011

`define OP_LDR 4'b1100
`define OP_STR 4'b1101

`define OP_SHR 4'b1110
`define OP_SHL 4'b1111