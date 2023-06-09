module MEM_WB_Connection_Test(
  input logic rst,
  input logic clk_a,
  input logic writeback_enable,
  input logic read_enable,
  input logic write_enable,
  input logic [3:0] instruction_dest,
  input logic [23:0] alu_result,
  input logic [23:0] write_data_a,
  output logic writeback_enable_out,
  output logic [3:0] instruction_dest_out,
  output logic [23:0] writeback_data_out
);
  logic memory_writeback_enable_out;
  logic memory_read_enable_out;
  logic [3:0] memory_instruction_dest_out;
  logic [23:0] memory_data_out;
  logic [23:0] memory_alu_result_out;
  logic [23:0] memory_data_b;
  memory_stage memory_stage(
    .rst(rst),
    .clk_a(clk_a),
    .clk_b(1'b0),
    .writeback_enable(writeback_enable),
    .read_enable(read_enable),
    .write_enable(write_enable),
    .instruction_dest(instruction_dest),
    .alu_result(alu_result),
    .write_data_a(write_data_a),
    .address_b(18'b0),
    .writeback_enable_out(memory_writeback_enable_out),
    .read_enable_out(memory_read_enable_out),
    .instruction_dest_out(memory_instruction_dest_out),
    .memory_out(memory_data_out),
    .alu_result_out(memory_alu_result_out),
    .read_data_b(memory_data_b)
  );

  logic writeback_enable_pipe;
  logic mem_read_enable_pipe;
  logic [3:0] instruction_dest_pipe;
  logic [23:0] mem_read_data_pipe;
  logic [23:0] alu_result_pipe;
  MEM_to_WB mem_to_wb(
    .rst(rst),
    .clk(clk_a),
    .writeback_enable(memory_writeback_enable_out),
    .mem_read_enable(memory_read_enable_out),
    .instruction_dest(memory_instruction_dest_out),
    .mem_read_data(memory_data_out),
    .alu_result(memory_alu_result_out),
    .writeback_enable_out(writeback_enable_pipe),
    .mem_read_enable_out(mem_read_enable_pipe),
    .instruction_dest_out(instruction_dest_pipe),
    .mem_read_data_out(mem_read_data_pipe),
    .alu_result_out(alu_result_pipe)
  );

  writeback_stage writeback_stage(
    .writeback_enable(writeback_enable_pipe),
    .mem_read_enable(mem_read_enable_pipe),
    .instruction_dest(instruction_dest_pipe),
    .mem_read_data(mem_read_data_pipe),
    .alu_result(alu_result_pipe),
    .writeback_enable_out(writeback_enable_out),
    .instruction_dest_out(instruction_dest_out),
    .writeback_data_out(writeback_data_out)
  );
endmodule