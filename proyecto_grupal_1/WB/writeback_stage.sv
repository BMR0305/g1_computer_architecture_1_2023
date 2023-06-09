module writeback_stage(
  input logic writeback_enable,
  input logic mem_read_enable,
  input logic [3:0] instruction_dest,
  input logic [23:0] mem_read_data,
  input logic [23:0] alu_result,
  output logic writeback_enable_out,
  output logic [3:0] instruction_dest_out,
  output logic [23:0] writeback_data_out
);
  always_comb begin
    writeback_enable_out = writeback_enable;
    instruction_dest_out = instruction_dest;

    if(mem_read_enable) writeback_data_out = mem_read_data;
    else writeback_data_out = alu_result;
  end

endmodule