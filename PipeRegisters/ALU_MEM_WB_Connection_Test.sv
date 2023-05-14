module ALU_MEM_WB_Connection_Test(
  input logic rst,
  input logic clk,
  input logic writeback_enable,
  input logic mem_read_enable,
  input logic mem_write_enable,
  input logic [3:0] instruction_dest,
  input logic [23:0] alu_result,
  input logic [23:0] write_data,
  output logic writeback_enable_out,
  output logic [3:0] instruction_dest_out,
  output logic [23:0] writeback_data_out
);
  logic alu_writeback_enable_out_pipe;
  logic alu_mem_read_enable_out_pipe;
  logic alu_mem_write_enable_out_pipe;
  logic [3:0] alu_instruction_dest_out_pipe;
  logic [23:0] alu_alu_result_out_pipe;
  logic [23:0] alu_write_data_out_pipe;
  ALU_to_MEM alu_to_mem(
    .rst(rst),
    .clk(clk),
    .writeback_enable(writeback_enable),
    .mem_read_enable(mem_read_enable),
    .mem_write_enable(mem_write_enable),
    .instruction_dest(instruction_dest),
    .alu_result(alu_result),
    .write_data(write_data),
    .writeback_enable_out(alu_writeback_enable_out_pipe),
    .mem_read_enable_out(alu_mem_read_enable_out_pipe),
    .mem_write_enable_out(alu_mem_write_enable_out_pipe),
    .instruction_dest_out(alu_instruction_dest_out_pipe),
    .alu_result_out(alu_alu_result_out_pipe),
    .write_data_out(alu_write_data_out_pipe)
  );

  logic memory_writeback_enable_out;
  logic memory_read_enable_out;
  logic [3:0] memory_instruction_dest_out;
  logic [23:0] memory_data_out;
  logic [23:0] memory_alu_result_out;
  logic [23:0] memory_data_b;
  memory_stage memory_stage(
    .rst(rst),
    .clk_a(clk),
    .clk_b(1'b0),
    .writeback_enable(alu_writeback_enable_out_pipe),
    .read_enable(alu_mem_read_enable_out_pipe),
    .write_enable(alu_mem_write_enable_out_pipe),
    .instruction_dest(alu_instruction_dest_out_pipe),
    .alu_result(alu_alu_result_out_pipe),
    .write_data_a(alu_write_data_out_pipe),
    .address_b(18'b0),
    .writeback_enable_out(memory_writeback_enable_out),
    .read_enable_out(memory_read_enable_out),
    .instruction_dest_out(memory_instruction_dest_out),
    .memory_out(memory_data_out),
    .alu_result_out(memory_alu_result_out),
    .read_data_b(memory_data_b)
  );

  logic memory_writeback_enable_out_pipe;
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
    .writeback_enable_out(writeback_enable_out),
    .instruction_dest_out(instruction_dest_out),
    .writeback_data_out(writeback_data_out)
  );
endmodule