`include "defines.v"

module G1_Processor(input clk, input rst, input forward_EN);
	
	logic writeEn, WB_EN_EXE, WB_EN_MEM, is_imm, ST, MEM_R_EN_EXE, hazard_detected, flagZ;
	logic brTaken, MEM_R_EN, MEM_W_EN, WB_EN;
	logic [`REG_FILE_ADDR_LEN-1:0] src1, src2, dest, dest_EXE, dest_MEM; 
   logic [`REG_FILE_SIZE-1:0]  writeVal, reg1, reg2, val1, val2;
	logic [`WORD_LEN-1:0] instruction; 
	logic [3:0] branch_comm;
	logic [`EXE_CMD_LEN-1:0] EXE_CMD;

	regFile rF(
		.clk(clk),
		.rst(rst),
		.writeEn(writeEn), //*
		.src1(src1),
		.src2(src2),
		.dest(dest),
		.writeVal(writeVal),
		
		.reg1(reg1),
		.reg2(reg2)
	);
	
	hazard_detection h_d(
		.src1_ID(src1),
		.src2_ID(src2),
		.dest_EXE(dest_EXE), //*
		.dest_MEM(dest_MEM), //*
		.op(instruction[15:12]),
		.WB_EN_EXE(WB_EN_EXE), //*
		.WB_EN_MEM(WB_EN_MEM), //*
		.MEM_R_EN_EXE(MEM_R_EN_EXE), //*
		.forward_EN(forward_EN),
		.is_imm(is_imm),
		.ST(ST),
		
		
		.hazard_detected(hazard_detected)
	);

   ID id(
	  .hazard_detected(hazard_detected),
	  .flagZ(flagZ), //*
	  .instruction(instruction), //*
	  .reg1(reg1),
	  .reg2(reg2),
	  
	  .brTaken(brTaken), 
	  .MEM_R_EN(MEM_R_EN), 
	  .MEM_W_EN(MEM_W_EN), 
	  .WB_EN(WB_EN), 
	  .is_imm_out(is_imm), 
	  .ST(ST), 
	  .EXE_CMD(EXE_CMD), 
	  .branch_comm(branch_comm), 
	  .src1(src1), 
	  .src2(src2), 
	  .val1(val1), 
	  .val2(val2)
  
  );



endmodule 