// To be used inside controller.v

`define test 1'b0
`define test1 1'b1
`define OP_ADD  6'b000000;
`define OP_SUB  6'b000001;
`define OP_MUL  6'b000010;
`define OP_DIV  6'b000011;
`define OP_MOD  6'b000100;
`define OP_CMP  6'b000101;
`define OP_MOVI 6'b000110;
`define OP_MOVR 6'b000111;
`define OP_AND  6'b001000;
`define OP_OR   6'b001001;
`define OP_BEQ  6'b001010;
`define OP_B    6'b001101;
`define OP_JMP  6'b001011;
`define OP_LDR  6'b001100;
`define OP_STR  6'b001111;
