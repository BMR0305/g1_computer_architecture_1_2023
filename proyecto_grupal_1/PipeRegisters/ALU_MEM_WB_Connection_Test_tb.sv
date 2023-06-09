`timescale 10ns / 10ns

module ALU_MEM_WB_Connection_Test_tb();
  logic rst;
  logic clk;

  logic writeback_enable;
  logic mem_read_enable;
  logic mem_write_enable;
  logic [3:0] instruction_dest;
  logic [23:0] alu_result;
  logic [23:0] write_data;

  logic writeback_enable_out;
  logic [3:0] instruction_dest_out;
  logic [23:0] writeback_data_out;

  ALU_MEM_WB_Connection_Test dut(
    .rst(rst),
    .clk(clk),
    .writeback_enable(writeback_enable),
    .mem_read_enable(mem_read_enable),
    .mem_write_enable(mem_write_enable),
    .instruction_dest(instruction_dest),
    .alu_result(alu_result),
    .write_data(write_data),
    .writeback_enable_out(writeback_enable_out),
    .instruction_dest_out(instruction_dest_out),
    .writeback_data_out(writeback_data_out)
  );

  initial begin
    rst = 0;
    clk = 0;

    writeback_enable = 0;
    mem_read_enable = 0;
    mem_write_enable = 0;
    instruction_dest = 4'd0;

    alu_result = 24'd0;
    write_data = 0;

    #29;

    writeback_enable = 1;
    mem_read_enable = 0;
    instruction_dest = 4'd1;

    alu_result = 24'd1;

    #20;

    writeback_enable = 0;
    mem_read_enable = 1;
    instruction_dest = 4'd2;

    alu_result = 24'd1;
    
    #20;

    writeback_enable = 1;
    mem_read_enable = 0;
    instruction_dest = 4'd3;

    alu_result = 24'd2;

    #20;

    writeback_enable = 0;
    mem_read_enable = 1;
    instruction_dest = 4'd4;

    alu_result = 24'd2;

    #20;

    writeback_enable = 1;
    mem_read_enable = 0;
    mem_write_enable = 1;
    instruction_dest = 4'd4;

    alu_result = 24'd0;
    write_data = 24'd10;

    #20;

    writeback_enable = 0;
    mem_read_enable = 1;
    mem_write_enable = 0;
    instruction_dest = 4'd5;

    alu_result = 24'd0;
    write_data = 24'd0;

    #100;
    $stop;
  end

  always #10 clk = ~clk;
endmodule