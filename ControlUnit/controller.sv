`include "../defines.v"

module controller (opCode, branchEn, EXE_CMD, Branch_command, Is_Imm, Is_Str, Is_Ldr, Is_Cmp, WB_EN, MEM_R_EN, MEM_W_EN, hazard_detected);
  input [`OP_CODE_LEN-1:0] opCode;
  input hazard_detected;
  
  output reg branchEn;
  output reg [`EXE_CMD_LEN-1:0] EXE_CMD;
  output reg [3:0] Branch_command;
  output reg Is_Imm, Is_Str, Is_Ldr, Is_Cmp, WB_EN, MEM_R_EN, MEM_W_EN;

  always @*
  begin
    if (hazard_detected == 0) begin
      case (opCode)
        // operations writing to the register file
        `OP_ADD: begin
          EXE_CMD <= `OP_ADD;
          WB_EN <= 1; 
          {branchEn, Branch_command, Is_Imm, Is_Str, Is_Ldr, Is_Cmp, MEM_R_EN, MEM_W_EN} <= 0;
        end
        `OP_SUB: begin
          EXE_CMD <= `OP_SUB; 
          WB_EN <= 1;
          {branchEn, Branch_command, Is_Imm, Is_Str, Is_Ldr, Is_Cmp, MEM_R_EN, MEM_W_EN} <= 0;
        end
		    `OP_MUL: begin
          EXE_CMD <= `OP_MUL; 
          WB_EN <= 1;
          {branchEn, Branch_command, Is_Imm, Is_Str, Is_Ldr, Is_Cmp, MEM_R_EN, MEM_W_EN} <= 0;
        end
		    `OP_DIV: begin
          EXE_CMD <= `OP_DIV; 
          WB_EN <= 1;
          {branchEn, Branch_command, Is_Imm, Is_Str, Is_Ldr, Is_Cmp, MEM_R_EN, MEM_W_EN} <= 0;
        end
		    `OP_MOD: begin
          EXE_CMD <= `OP_MOD; 
          WB_EN <= 1;
          {branchEn, Branch_command, Is_Imm, Is_Str, Is_Ldr, Is_Cmp, MEM_R_EN, MEM_W_EN} <= 0;
        end
		  
		    `OP_CMP: begin
          EXE_CMD <= `OP_CMP; 
          Is_Cmp <= 1;
          {branchEn, Branch_command, Is_Imm, Is_Str, Is_Ldr, WB_EN, MEM_R_EN, MEM_W_EN} <= 0;
        end
		  
		    `OP_MOVR: begin
          EXE_CMD <= `OP_MOVR; 
          WB_EN <= 1;
          {branchEn, Branch_command, Is_Imm, Is_Str, Is_Ldr, Is_Cmp, MEM_R_EN, MEM_W_EN} <= 0;
        end
		  
        `OP_AND: begin
          EXE_CMD <= `OP_AND; 
          WB_EN <= 1;
          {branchEn, Branch_command, Is_Imm, Is_Str, Is_Ldr, Is_Cmp, MEM_R_EN, MEM_W_EN} <= 0;
        end
        `OP_OR:  begin
          EXE_CMD <= `OP_OR;  
          WB_EN <= 1;
          {branchEn, Branch_command, Is_Imm, Is_Str, Is_Ldr, Is_Cmp, MEM_R_EN, MEM_W_EN} <= 0;
        end
		  
        // operations using an immediate value embedded in the instruction
		    `OP_MOVI: begin
          EXE_CMD <= `OP_MOVI; 
          WB_EN <= 1; 
          Is_Imm <= 1;
          {branchEn, Branch_command, Is_Str, Is_Ldr, Is_Cmp, MEM_R_EN, MEM_W_EN} <= 0;
        end
  
        // memory operations
        `OP_LDR: begin
          EXE_CMD <= `OP_ADD; WB_EN <= 1; 
          MEM_R_EN <= 1; Is_Ldr <= 1;
          {branchEn, Branch_command, Is_Imm, Is_Str, Is_Ldr, Is_Cmp, WB_EN, MEM_W_EN} <= 0;
        end
        `OP_STR: begin
          EXE_CMD <= `OP_ADD; 
          MEM_W_EN <= 1; 
          Is_Str <= 1;
          {branchEn, Branch_command, Is_Imm, Is_Ldr, Is_Cmp, WB_EN, MEM_R_EN} <= 0;
        end
		  
        // branch operations
        `OP_BEQ: begin
          Branch_command <= `OP_BEQ; 
          EXE_CMD <= `OP_BEQ; 
          branchEn <= 1;
          {Is_Imm, Is_Str, Is_Ldr, Is_Cmp, WB_EN, MEM_R_EN, MEM_W_EN} <= 0;
        end
        `OP_JMP: begin
          Branch_command <= `OP_JMP; 
          EXE_CMD <= `OP_JMP; 
          branchEn <= 1;
          {Is_Imm, Is_Str, Is_Ldr, Is_Cmp, WB_EN, MEM_R_EN, MEM_W_EN} <= 0;
        end
        default: begin
          {branchEn, EXE_CMD, Branch_command, Is_Imm, Is_Str, Is_Ldr, Is_Cmp, WB_EN, MEM_R_EN, MEM_W_EN} <= 0;
        end
      endcase
    end
    else begin
      {branchEn, EXE_CMD, Branch_command, Is_Imm, Is_Str, Is_Ldr, Is_Cmp, WB_EN, MEM_R_EN, MEM_W_EN} <= 0;
      // preventing any writes to the register file or the memory
      // {EXE_CMD, WB_EN, MEM_W_EN} <= 0;
    end
  end
endmodule // controller

