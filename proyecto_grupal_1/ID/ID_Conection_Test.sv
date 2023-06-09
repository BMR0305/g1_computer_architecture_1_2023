`include "../defines.v"

module ID_Conection_Test(
	input clk, 
	input rst, 
	input forward_EN,
	input writeEn,
	input [`REG_FILE_ADDR_LEN-1:0] dest,
	input [`REG_FILE_SIZE-1:0]  writeVal,
	input [`REG_FILE_ADDR_LEN-1:0] dest_EXE,
	input [`REG_FILE_ADDR_LEN-1:0] dest_MEM,
	input WB_EN_EXE, 
	input WB_EN_MEM,
	input MEM_R_EN_EXE,
	input flagZ,
	input [`WORD_LEN-1:0] instruction,
	
	output is_imm,
	output ST,
	output hazard_detected,
	output brTaken,
	output MEM_R_EN,
	output MEM_W_EN,
	output WB_EN,
	output [`REG_FILE_ADDR_LEN-1:0] src1,
	output [`REG_FILE_ADDR_LEN-1:0] src2,
	output [`REG_FILE_SIZE-1:0] val1,
	output [`REG_FILE_SIZE-1:0] val2,
	output [3:0] branch_comm,
	output [`EXE_CMD_LEN-1:0] EXE_CMD
	
	);
	
   logic [`REG_FILE_SIZE-1:0] reg1, reg2; 
	

	regFile rF(
		.clk(clk),
		.rst(rst),
		.writeEn(writeEn), //*
		.src1(src1),
		.src2(src2),
		.dest(dest), //*
		.writeVal(writeVal), //*
		
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