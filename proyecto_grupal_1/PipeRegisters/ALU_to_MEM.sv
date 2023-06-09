module ALU_to_MEM(
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
  output logic mem_write_enable_out,
  output logic [3:0] instruction_dest_out,
  output logic [23:0] alu_result_out,
  output logic [23:0] write_data_out
);
  D_FF #(.NUM_BITS(1)) writeback_enable_pipe(
    .CLK(clk),
    .RST(rst), 
    .D(writeback_enable),
    .Q(writeback_enable_out)
  );

  D_FF #(.NUM_BITS(4)) instruction_dest_pipe(
    .CLK(clk),
    .RST(rst), 
    .D(instruction_dest),
    .Q(instruction_dest_out)
  );

  always_comb begin
    mem_read_enable_out = mem_read_enable;
    mem_write_enable_out = mem_write_enable;
    alu_result_out = alu_result;
    write_data_out = write_data;
  end

endmodule