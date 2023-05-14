module ALU_to_MEM(
  input logic rst,
  input logic clk,
  input logic writeback_enable,
  input logic mem_read_enable,
  input logic mem_write_enable,
  input logic [23:0] alu_result,
  input logic [23:0] write_data,
  output logic writeback_enable_out,
  output logic mem_read_enable_out,
  output logic mem_write_enable_out,
  output logic [23:0] alu_result_out,
  output logic [23:0] write_data_out
);
  D_FF #(.NUM_BITS(1)) writeback_en_ff(
    .CLK(clk),
    .RST(rst), 
    .D(writeback_enable),
    .Q(writeback_enable_out)
  );

  always_comb begin
    mem_read_enable_out = mem_read_enable;
    mem_write_enable_out = mem_write_enable;
    alu_result_out = alu_result;
    write_data_out = write_data;
  end

endmodule