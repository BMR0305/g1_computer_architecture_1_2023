module writeback_stage(
  input logic writeback_enable,
  input logic mem_read_enable,
  input logic [23:0] mem_read_data,
  input logic [23:0] alu_result,
  output logic writeback_enable_out,
  output logic [23:0] writeback_data
);

  always_comb begin
    if(mem_read_enable) writeback_data = mem_read_data;
    else writeback_data = alu_result;

    writeback_enable_out = writeback_enable;
  end

endmodule