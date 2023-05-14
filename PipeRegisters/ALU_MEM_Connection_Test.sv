module ALU_MEM_Connection_Test(
  input logic rst,
  input logic clk,
  input logic writeback_enable,
  input logic mem_read_enable,
  input logic mem_write_enable,
  input logic [23:0] alu_result,
  input logic [23:0] write_data,
  output logic writeback_enable_out,
  output logic mem_read_enable_out,
  output logic [23:0] memory_stage_out
);
  logic writeback_enable_pipe_out;
  logic mem_read_enable_pipe_out;
  logic mem_write_enable_pipe_out;
  logic [23:0] alu_result_pipe_out;
  logic [23:0] write_data_pipe_out;
  ALU_to_MEM alu_to_mem(
    .rst(rst),
    .clk(clk),
    .writeback_enable(writeback_enable),
    .mem_read_enable(mem_read_enable),
    .mem_write_enable(mem_write_enable),
    .alu_result(alu_result),
    .write_data(write_data),
    .writeback_enable_out(writeback_enable_pipe_out),
    .mem_read_enable_out(mem_read_enable_pipe_out),
    .mem_write_enable_out(mem_write_enable_pipe_out),
    .alu_result_out(alu_result_pipe_out),
    .write_data_out(write_data_pipe_out)
  );

  logic [23:0] read_data_b;
  memory_stage memory_stage(
    .rst(rst),
    .clk_a(clk),
    .clk_b(1'b0),
    .writeback_enable(writeback_enable_pipe_out),
    .read_enable(mem_read_enable_pipe_out),
    .write_enable(mem_write_enable_pipe_out),
    .alu_result(alu_result_pipe_out),
    .write_data_a(write_data_pipe_out),
    .address_b(17'b0),
    .writeback_enable_out(writeback_enable_out),
    .read_enable_out(mem_read_enable_out),
    .result(memory_stage_out),
    .read_data_b(read_data_b)
  );
endmodule