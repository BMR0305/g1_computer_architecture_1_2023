`include "defines.v"

module G1_Processor(
	// input logic rst,

	input              FPGA_CLK1_50,
	input              FPGA_CLK2_50,
	input              FPGA_CLK3_50,

	///////// HDMI /////////
	inout              HDMI_I2C_SCL,
	inout              HDMI_I2C_SDA,
	inout              HDMI_I2S,
	inout              HDMI_LRCLK,
	inout              HDMI_MCLK,
	inout              HDMI_SCLK,
	output             HDMI_TX_CLK,
	output      [23:0] HDMI_TX_D,
	output             HDMI_TX_DE,
	output             HDMI_TX_HS,
	input              HDMI_TX_INT,
	output             HDMI_TX_VS,

	///////// KEY /////////
	input       [1:0]  KEY,

	///////// LED /////////
	output      [7:0]  LED,

	///////// SW /////////
	input       [3:0]  SW
);
	logic forward_EN = 1;

	logic rst;
	assign rst = KEY[0];

	logic clk;
	assign clk = FPGA_CLK2_50;
	
	logic writeEn, WB_EN_MEM, is_imm, Is_Ldr, Is_Str, MEM_R_EN_EXE, MEM_W_EN_EXE, WB_EN_EXE, hazard_detected, flagZ;
	logic brTaken, MEM_R_EN, MEM_W_EN, WB_EN;
	logic [`REG_FILE_ADDR_LEN-1:0] src1, src2, dest, dest_EXE, dest_MEM, dest_WB; 
	logic [`REG_FILE_SIZE-1:0]  writeVal, reg1, reg2, val1, val2;
	logic [`WORD_LEN-1:0] instruction_IF, instruction_ID; 
	logic [3:0] branch_comm;
	logic [`EXE_CMD_LEN-1:0] EXE_CMD, EXE_CMD_Ex;


	regFile rF(
		.clk(clk),
		.rst(rst),
		.writeEn(writeEn), //*
		.src1(src1),
		.src2(src2),
		.dest(dest_WB),
		.writeVal(writeVal),
		
		.reg1(reg1),
		.reg2(reg2)
	);
	
  logic memory_read_enable_out;
	logic alu_writeback_enable_out_pipe;
	hazard_detection h_d(
		.src1_ID(src1),
		.src2_ID(src2),
		.dest_EXE(dest_EXE), //*
		.dest_MEM(dest_MEM), //*
		.op(instruction_ID[15:12]),
		.WB_EN_EXE(WB_EN_EXE), //*
		.WB_EN_MEM(alu_writeback_enable_out_pipe), //*
		.MEM_R_EN_EXE(MEM_R_EN_EXE), //*
		.MEM_R_EN_MEM(memory_read_enable_out), //*
		.forward_EN(forward_EN),
		.is_imm(is_imm),
		// .ST(ST),
		.Is_Ldr(Is_Ldr),
		.Is_Str(Is_Str),
		
		
		.hazard_detected(hazard_detected)
	);
	

  logic brTaken_Ex;
	IFStage ifS (
		.clk(clk),
		.rst(rst),
		.brTaken(brTaken),
		.brOffset(val2),
		.freeze(hazard_detected),
		.instruction(instruction_IF)
	);
	 
	 	
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
	  // .ST(ST), 
		.Is_Ldr(Is_Ldr),
		.Is_Str(Is_Str),
	  .EXE_CMD(EXE_CMD), 
	  .branch_comm(branch_comm), 
	  .src1(src1), 
	  .src2(src2), 
	  .val1(val1), 
	  .val2(val2),
		.dest(dest)
  );

	logic [23:0] ST_VALUE_EXE;
	logic [23:0] reg2_Ex;
  logic [3:0] src1_forw, src2_forw;
	logic [23:0] val1_Ex, val2_Ex;
  Decode_Execute ID_Ex(
	  .clk(clk), 
	  .rst(rst),
	  .dest_in(dest),
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
	  .ST(ST_VALUE_EXE),
	  .EXE_CMD(EXE_CMD_Ex),
	  .src1(src1_forw), 
	  .src2(src2_forw),
	  .val1(val1_Ex), 
	  .val2(val2_Ex),
		.reg2Out(reg2_Ex),
	  .dest_out(dest_EXE)
	);

  logic memory_writeback_enable_out_pipe;
  logic [1:0] reg1_sel, reg2_sel, ST_reg_sel;
	unidad_adelantamiento forwarding_unit(
	  .reg1_EXE(src1_forw), 
	  .reg2_EXE(src2_forw), 
	  .ST_src_EXE(src2_forw), 
	  .dest_MEM(dest_MEM), 
	  .dest_WB(dest_WB), 
	  .WB_EN_MEM(alu_writeback_enable_out_pipe), 
	  .WB_EN_WB(memory_writeback_enable_out_pipe),
	  //outputs
	  .reg1_sel(reg1_sel), 
	  .reg2_sel(reg2_sel),
	  .ST_reg_sel(ST_reg_sel)
	);
  

	logic [23:0] ST_reg_out_mem;
	logic [23:0] alu_result;
  logic [23:0] memory_alu_result_out;
	EXECUTE Ex(
	  .clk(clk),
	  .reg1_sel(reg1_sel),
	  .reg2_sel(reg2_sel),
	  .ST_reg_sel(ST_reg_sel), 
	  .operation(EXE_CMD_Ex), 
	  .reg1(val1_Ex), 
	  .reg2(val2_Ex), 
	  .mem_result(memory_alu_result_out), 
	  .wb_result(writeVal), 
	  .ST_reg_in(reg2_Ex),
	  //outputs
	  .alu_result(alu_result),   
	  .z_flag_alu(flagZ),
	  .ST_reg_out(ST_reg_out_mem) 
	);


  logic alu_mem_read_enable_out_pipe;
  logic alu_mem_write_enable_out_pipe;
  logic [23:0] alu_alu_result_out_pipe;
  logic [23:0] alu_write_data_out_pipe;
  ALU_to_MEM alu_to_mem(
    .rst(rst),
    .clk(clk),
    .writeback_enable(WB_EN_EXE),
    .mem_read_enable(MEM_R_EN_EXE),
    .mem_write_enable(MEM_W_EN_EXE),
    .instruction_dest(dest_EXE),
    .alu_result(alu_result),
    .write_data(ST_reg_out_mem),
    .writeback_enable_out(alu_writeback_enable_out_pipe),
    .mem_read_enable_out(alu_mem_read_enable_out_pipe),
    .mem_write_enable_out(alu_mem_write_enable_out_pipe),
    .instruction_dest_out(dest_MEM),
    .alu_result_out(alu_alu_result_out_pipe),
    .write_data_out(alu_write_data_out_pipe)
  );


	logic [23:0] color;
	logic [23:0] color_mem;
	reg   [9:0] pixel_x;
	reg   [8:0] pixel_y;
	reg   [5:0] num_cycle;
	// logic [23:0] result;
	logic [17:0] address_b;



  logic memory_writeback_enable_out;
	logic [3:0] memory_instruction_dest_out;
  logic [23:0] memory_data_out;
  // logic [23:0] memory_data_b;
  memory_stage memory_stage(
    .rst(rst),
    .clk_a(clk),
    .clk_b(FPGA_CLK2_50),
    .writeback_enable(alu_writeback_enable_out_pipe),
    .read_enable(alu_mem_read_enable_out_pipe),
    .write_enable(alu_mem_write_enable_out_pipe),
    .instruction_dest(dest_MEM),
    .alu_result(alu_alu_result_out_pipe),
    .write_data_a(alu_write_data_out_pipe),
    .address_b(address_b),
    .writeback_enable_out(memory_writeback_enable_out),
    .read_enable_out(memory_read_enable_out),
    .instruction_dest_out(memory_instruction_dest_out),
    .memory_out(memory_data_out),
    .alu_result_out(memory_alu_result_out),
    .read_data_b(color_mem)
  );


  logic memory_mem_read_enable_out_pipe;
	logic [3:0] memory_instruction_dest_out_pipe;
  logic [23:0] memory_mem_read_data_out_pipe;
  logic [23:0] memory_alu_result_pipe_out;
  MEM_to_WB mem_to_wb(
    .rst(rst),
    .clk(clk),
    .writeback_enable(memory_writeback_enable_out),
    .mem_read_enable(memory_read_enable_out),
    .instruction_dest(memory_instruction_dest_out),
    .mem_read_data(memory_data_out),
    .alu_result(memory_alu_result_out),
    .writeback_enable_out(memory_writeback_enable_out_pipe),
    .mem_read_enable_out(memory_mem_read_enable_out_pipe),
    .instruction_dest_out(memory_instruction_dest_out_pipe),
    .mem_read_data_out(memory_mem_read_data_out_pipe),
    .alu_result_out(memory_alu_result_pipe_out)
  );


  writeback_stage writeback_stage(
    .writeback_enable(memory_writeback_enable_out_pipe),
    .mem_read_enable(memory_mem_read_enable_out_pipe),
    .instruction_dest(memory_instruction_dest_out_pipe),
    .mem_read_data(memory_mem_read_data_out_pipe),
    .alu_result(memory_alu_result_pipe_out),
    .writeback_enable_out(writeEn),
    .instruction_dest_out(dest_WB),
    .writeback_data_out(writeVal)
  );

	HDMIController HDMIController(
		///////// FPGA /////////
      .FPGA_CLK1_50(FPGA_CLK1_50),
      .FPGA_CLK2_50(FPGA_CLK2_50),
      .FPGA_CLK3_50(FPGA_CLK3_50),

      ///////// HDMI /////////
      .HDMI_I2C_SCL(HDMI_I2C_SCL),
      .HDMI_I2C_SDA(HDMI_I2C_SDA),
      .HDMI_I2S(HDMI_I2S),
      .HDMI_LRCLK(HDMI_LRCLK),
      .HDMI_MCLK(HDMI_MCLK),
      .HDMI_SCLK(HDMI_SCLK),
      .HDMI_TX_CLK(HDMI_TX_CLK),
      .HDMI_TX_D(HDMI_TX_D),
      .HDMI_TX_DE(HDMI_TX_DE),
      .HDMI_TX_HS(HDMI_TX_HS),
      .HDMI_TX_INT(HDMI_TX_INT),
      .HDMI_TX_VS(HDMI_TX_VS),

      ///////// KEY /////////
      .KEY(KEY),

      ///////// LED /////////
      .LED(LED),

      ///////// SW /////////
      .SW(SW),
		
		// X, Y, color
		.color(color),
		
		.pixel_x(pixel_x),
		.pixel_y(pixel_y),
		
		.num_cycle(num_cycle)
	);
	
	address_sel a_s(
		.pixel_x(pixel_x),
		.pixel_y(pixel_y),
		.sel(SW[3]),
		.address_b(address_b)
	);
	
	color_selector c_s(
		.color_mem(color_mem),
		.pixel_x(pixel_x),
		.pixel_y(pixel_y),
		.num_cycle(num_cycle),
		.is_RAM(SW[3]),
		.color(color)
	);
endmodule 