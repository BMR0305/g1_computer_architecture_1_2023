`include "defines.v"

module controller (opCode, branchEn, EXE_CMD, Branch_command, Is_Imm, ST_or_BNE, WB_EN, MEM_R_EN, MEM_W_EN, hazard_detected);
  input [`OP_CODE_LEN-1:0] opCode;
  input hazard_detected;
  
  output reg branchEn;
  output reg [`EXE_CMD_LEN-1:0] EXE_CMD;
  output reg [1:0] Branch_command;
  output reg Is_Imm, ST_or_BNE, WB_EN, MEM_R_EN, MEM_W_EN;

  always @*
  begin
    if (hazard_detected == 0) begin
      {branchEn, EXE_CMD, Branch_command, Is_Imm, ST_or_BNE, WB_EN, MEM_R_EN, MEM_W_EN} <= 0;
      case (opCode)
        // operations writing to the register file
        `OP_ADD: begin EXE_CMD <= `OP_ADD; WB_EN <= 1; end
        `OP_SUB: begin EXE_CMD <= `OP_SUB; WB_EN <= 1; end
		  `OP_MUL: begin EXE_CMD <= `OP_MUL; WB_EN <= 1; end
		  `OP_DIV: begin EXE_CMD <= `OP_DIV; WB_EN <= 1; end
		  `OP_MOD: begin EXE_CMD <= `OP_MOD; WB_EN <= 1; end
		  
		  `OP_CMP: begin EXE_CMD <= `OP_CMP; WB_EN <= 0; end
		  
		  `OP_MOVR: begin EXE_CMD <= `OP_MOVR; WB_EN <= 1; end
		  
        `OP_AND: begin EXE_CMD <= `OP_AND; WB_EN <= 1; end
        `OP_OR:  begin EXE_CMD <= `OP_OR;  WB_EN <= 1; end
		  
        `OP_SHR: begin EXE_CMD <= `OP_SHR; WB_EN <= 1; end
        `OP_SHL: begin EXE_CMD <= `OP_SHL; WB_EN <= 1; end
		  
        // operations using an immediate value embedded in the instruction
		  `OP_MOVI: begin EXE_CMD <= `OP_MOVI; WB_EN <= 1; Is_Imm <= 1; end
  
        // memory operations
        `OP_LDR: begin EXE_CMD <= `OP_ADD; WB_EN <= 1; ST_or_BNE <= 1; MEM_R_EN <= 1; end
        `OP_STR: begin EXE_CMD <= `OP_ADD; MEM_W_EN <= 1; ST_or_BNE <= 1; end
		  
        // branch operations
        `OP_BEQ: begin Branch_command <= `OP_BEQ; branchEn <= 1; end
        `OP_JMP: begin Branch_command <= `OP_JMP; branchEn <= 1; end
        default: {branchEn, EXE_CMD, Branch_command, Is_Imm, ST_or_BNE, WB_EN, MEM_R_EN, MEM_W_EN} <= 0;
      endcase
    end

    else if (hazard_detected ==  1) begin
      // preventing any writes to the register file or the memory
      {EXE_CMD, WB_EN, MEM_W_EN} <= 0;
    end
  end
endmodule // controller

