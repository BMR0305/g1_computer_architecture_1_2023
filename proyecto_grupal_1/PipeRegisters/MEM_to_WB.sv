module MEM_to_WB(
  input logic rst,
  input logic clk,
  input logic writeback_enable,
  input logic mem_read_enable,
  input logic [3:0] instruction_dest,
  input logic [23:0] mem_read_data,
  input logic [23:0] alu_result,
  output logic writeback_enable_out,
  output logic mem_read_enable_out,
  output logic [3:0] instruction_dest_out,
  output logic [23:0] mem_read_data_out,
  output logic [23:0] alu_result_out
);
  D_FF #(.NUM_BITS(1)) writeback_enable_pipe(
    .CLK(clk),
    .RST(rst), 
    .D(writeback_enable),
    .Q(writeback_enable_out)
  );

  D_FF #(.NUM_BITS(1)) mem_read_enable_pipe(
    .CLK(clk),
    .RST(rst), 
    .D(mem_read_enable),
    .Q(mem_read_enable_out)
  );

  D_FF #(.NUM_BITS(4)) instruction_dest_pipe(
    .CLK(clk),
    .RST(rst), 
    .D(instruction_dest),
    .Q(instruction_dest_out)
  );

  D_FF #(.NUM_BITS(24)) alu_result_pipe(
    .CLK(clk),
    .RST(rst), 
    .D(alu_result),
    .Q(alu_result_out)
  );

  always_comb begin
    mem_read_data_out = mem_read_data;
  end

endmodule