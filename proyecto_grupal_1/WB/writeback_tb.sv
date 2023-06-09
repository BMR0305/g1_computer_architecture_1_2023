module writeback_tb();
  logic writeback_enable;
  logic mem_read_enable;
  logic [3:0] instruction_dest;
  logic [23:0] mem_read_data;
  logic [23:0] alu_result;
  
  logic writeback_enable_out;
  logic [3:0] instruction_dest_out;
  logic [23:0] writeback_data_out;

  writeback_stage dut(
    .writeback_enable(writeback_enable),
    .mem_read_enable(mem_read_enable),
    .instruction_dest(instruction_dest),
    .mem_read_data(mem_read_data),
    .alu_result(alu_result),
    .writeback_enable_out(writeback_enable_out),
    .instruction_dest_out(instruction_dest_out),
    .writeback_data_out(writeback_data_out)
  );

    initial begin
    writeback_enable = 0;
    mem_read_enable = 0;

    instruction_dest = 4'd0;
    mem_read_data = 24'd0;
    alu_result = 24'd0;

    #20;

    writeback_enable = 1;
    mem_read_enable = 0;

    instruction_dest = 4'd1;
    mem_read_data = 24'd0;
    alu_result = 24'd1;

    #20;

    writeback_enable = 0;
    mem_read_enable = 1;

    instruction_dest = 4'd2;
    mem_read_data = 24'd2;
    alu_result = 24'd1;

    #50;
    $stop;
  end
endmodule