`include "../defines.v"

module ID_tb();

  logic hazard_detected, flagZ;
  logic [`WORD_LEN-1:0] instruction; 
  logic [`REG_FILE_SIZE-1:0] reg1, reg2;
  
  
  logic brTaken, MEM_R_EN, MEM_W_EN, WB_EN, is_imm_out, ST;
  logic [3:0] branch_comm;
  logic [`EXE_CMD_LEN-1:0] EXE_CMD;
  logic [`REG_FILE_ADDR_LEN-1:0] src1, src2;
  logic [`REG_FILE_SIZE-1:0] val1, val2;
	
	
  ID id(
  .hazard_detected(hazard_detected),
  .flagZ(flagZ),
  .instruction(instruction),
  .reg1(reg1),
  .reg2(reg2),
  
  .brTaken(brTaken), 
  .MEM_R_EN(MEM_R_EN), 
  .MEM_W_EN(MEM_W_EN), 
  .WB_EN(WB_EN), 
  .is_imm_out(is_imm_out), 
  .ST(ST), 
  .EXE_CMD(EXE_CMD), 
  .branch_comm(branch_comm), 
  .src1(src1), 
  .src2(src2), 
  .val1(val1), 
  .val2(val2)
  
  );
  //000010010011
  //r0, r9, r2
  //

  initial begin
  //Add
  hazard_detected = 0;
  flagZ = 0;
  instruction = 16'b0000000010010011;
  reg1 = 0;
  reg2 = 0;
  
  #10;
  //Cmp
  hazard_detected = 0;
  flagZ = 0;
  instruction = 16'b0101000010010011;
  reg1 = 0;
  reg2 = 0;
  
  #10;
  
  //Movi
  hazard_detected = 0;
  flagZ = 0;
  instruction = 16'b0110000010010011;
  reg1 = 0;
  reg2 = 0;
  
  #10;
  
  //Movr
  hazard_detected = 0;
  flagZ = 0;
  instruction = 16'b0111000010010011;
  reg1 = 0;
  reg2 = 0;
  
  #10;
  
  //BEQ 0
  hazard_detected = 0;
  flagZ = 0;
  instruction = 16'b1010000010010011;
  reg1 = 0;
  reg2 = 0;
  
  #10;
  
  //BEQ 1
  hazard_detected = 0;
  flagZ = 1;
  instruction = 16'b1010000010010011;
  reg1 = 0;
  reg2 = 0;
  
  #10;
  
  //Load
  hazard_detected = 0;
  flagZ = 0;
  instruction = 16'b1100000010010011;
  reg1 = 0;
  reg2 = 0;
  
  #10;
  
  //Store
  hazard_detected = 0;
  flagZ = 0;
  instruction = 16'b1101000010010011;
  reg1 = 0;
  reg2 = 0;
  
  #10;
  
  
  end


endmodule 