module ALU_MEM_Connection_Test(
  input logic rst,
  input logic clk,
  input logic writeback_enable,
  input logic mem_read_enable,
  input logic mem_write_enable,
  input logic [3:0] instruction_dest,
  input logic [23:0] alu_result,
  input logic [23:0] write_data,
  output logic writeback_enable_out,
  output logic mem_read_enable_out,
  output logic [3:0] instruction_dest_out,
  output logic [23:0] memory_out,
  output logic [23:0] alu_result_out
);
  logic writeback_enable_out_pipe;
  logic mem_read_enable_out_pipe;
  logic mem_write_enable_out_pipe;
  logic [3:0] instruction_dest_out_pipe;
  logic [23:0] alu_result_out_pipe;
  logic [23:0] write_data_out_pipe;
  ALU_to_MEM alu_to_mem(
    .rst(rst),
    .clk(clk),
    .writeback_enable(writeback_enable),
    .mem_read_enable(mem_read_enable),
    .mem_write_enable(mem_write_enable),
    .instruction_dest(instruction_dest),
    .alu_result(alu_result),
    .write_data(write_data),
    .writeback_enable_out(writeback_enable_out_pipe),
    .mem_read_enable_out(mem_read_enable_out_pipe),
    .mem_write_enable_out(mem_write_enable_out_pipe),
    .instruction_dest_out(instruction_dest_out_pipe),
    .alu_result_out(alu_result_out_pipe),
    .write_data_out(write_data_out_pipe)
  );

  logic [23:0] read_data_b;
  memory_stage memory_stage(
    .rst(rst),
    .clk_a(clk),
    .clk_b(1'b0),
    .writeback_enable(writeback_enable_out_pipe),
    .read_enable(mem_read_enable_out_pipe),
    .write_enable(mem_write_enable_out_pipe),
    .instruction_dest(instruction_dest_out_pipe),
    .alu_result(alu_result_out_pipe),
    .write_data_a(write_data_out_pipe),
    .address_b(17'b0),
    .writeback_enable_out(writeback_enable_out),
    .read_enable_out(mem_read_enable_out),
    .instruction_dest_out(instruction_dest_out),
    .memory_out(memory_out),
    .alu_result_out(alu_result_out),
    .read_data_b(read_data_b)
  );
endmodule