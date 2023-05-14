`include "defines.v"

module G1_Processor(input clk, input rst, input forward_EN);
	
	logic writeEn, WB_EN_EXE, WB_EN_MEM, is_imm, ST, MEM_R_EN_EXE, MEM_W_EN_EXE, hazard_detected, flagZ;
	logic brTaken, brTaken_Ex, MEM_R_EN, MEM_W_EN, WB_EN;
	logic [`REG_FILE_SIZE-1:0] alu_result, mem_result_al;
	logic [`REG_FILE_ADDR_LEN-1:0] src1, src2, dest, dest_EXE, dest_MEM, src1_forw, src2_forw; 
   logic [`REG_FILE_SIZE-1:0]  writeVal, reg1, reg2, val1, val2, val1_Ex, val2_Ex, ST_value, ST_reg_out_mem;
	logic [`FORW_SEL_LEN-1:0]  reg1_sel, reg2_sel, ST_reg_sel;
	logic [`WORD_LEN-1:0] instruction_IF, instruction_ID; 
	logic [3:0] branch_comm;
	logic [`EXE_CMD_LEN-1:0] EXE_CMD, EXE_CMD_Ex;



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
		.op(instruction_ID[15:12]),
		.WB_EN_EXE(WB_EN_EXE), //*
		.WB_EN_MEM(WB_EN_MEM), //*
		.MEM_R_EN_EXE(MEM_R_EN_EXE), //*
		.forward_EN(forward_EN),
		.is_imm(is_imm),
		.ST(ST),
		
		
		.hazard_detected(hazard_detected)
	);
	
	IFStage ifS (
	 .clk(clk),
	 .rst(rst),
	 .brTaken(brTaken),
	 .brOffset(val2),
	 .freeze(hazard_detected),
	 .instruction(instruction_IF));
	 
	 	
	IF_to_ID f2d(
		.clk(clk),
		.rst(rst),
		.flush(brTaken),
		.freeze(hazard_detected),
		.instructionIn(instruction_IF),
		.instruction(instruction_ID)
 );
 
   ID id(
	  .hazard_detected(hazard_detected),
	  .flagZ(flagZ), //*
	  .instruction(instruction_ID), //*
	  .reg1(reg1),
	  .reg2(reg2),
	  //outputs
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
  
   unidad_adelantamiento forwarding_unit(
	  .reg1_EXE(src1_forw), 
	  .reg2_EXE(src2_forw), 
	  .ST_src_EXE(dest_EXE), 
	  .dest_MEM(dest_MEM), 
	  .dest_WB(dest), 
	  .WB_EN_MEM(WB_EN_MEM), 
	  .WB_EN_WB(writeEn),
	  //outputs
	  .reg1_sel(reg1_sel), 
	  .reg2_sel(reg2_sel),
	  .ST_reg_sel(ST_reg_sel)
);
 
 
	EXECUTE Ex(
	  .clk(clk),
	  .reg1_sel(reg1_sel),
	  .reg2_sel(reg2_sel),
	  .ST_reg_sel(ST_reg_sel), 
	  .operation(EXE_CMD_Ex), 
	  .reg1(val1_Ex), 
	  .reg2(val2_Ex), 
	  .mem_result(mem_result_alu), 
	  .wb_result(writeVal), 
	  .ST_reg_in(ST_value),
	  //outputs
	  .alu_result(alu_result),   
	  .z_flag_alu(flagZ),
	  .ST_reg_out(ST_reg_out_mem) 
	);
  
  
  Decode_Execute ID_Ex(
	  .clk(clk), 
	  .rst(rst),
	  .MEM_R_EN_IN(MEM_R_EN), 
	  .MEM_W_EN_IN(MEM_W_EN), 
	  .WB_EN_IN(WB_EN), 
	  .brTaken_in(brTaken),
	  .EXE_CMD_IN(EXE_CMD),
	  .src1_in(src1), 
	  .src2_in(src2),
	  .reg2In(reg2), 
	  .val1In(val1), 
	  .val2In(val2),
	  //outputs
	  .brTaken(brTaken_Ex), 
	  .MEM_R_EN(MEM_R_EN_EXE), 
	  .MEM_W_EN(MEM_W_EN_EXE), 
	  .WB_EN(WB_EN_EXE), 
	  .ST(ST_value),
	  .EXE_CMD(EXE_CMD_Ex),
	  .src1(src1_forw), 
	  .src2(src2_forw),
	  .val1(val1_Ex), 
	  .val2(val2_Ex)
);


endmodule 