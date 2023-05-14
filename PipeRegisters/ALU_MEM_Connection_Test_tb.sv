`timescale 1ns / 1ns

module ALU_MEM_Connection_Test_tb();
  logic rst;
  logic clk;

  logic writeback_enable;
  logic mem_read_enable;
  logic mem_write_enable;

  logic [23:0] alu_result;
  logic [23:0] write_data;

  logic writeback_enable_out;
  logic mem_read_enable_out;
  logic [23:0] memory_stage_out;

  ALU_MEM_Connection_Test dut(
    .rst(rst),
    .clk(clk),
    .writeback_enable(writeback_enable),
    .mem_read_enable(mem_read_enable),
    .mem_write_enable(mem_write_enable),
    .alu_result(alu_result),
    .write_data(write_data),
    .writeback_enable_out(writeback_enable_out),
    .mem_read_enable_out(mem_read_enable_out),
    .memory_stage_out(memory_stage_out)
  );

  initial begin
    rst = 0;
    clk = 0;

    writeback_enable = 0;
    mem_read_enable = 0;
    mem_write_enable = 0;

    alu_result = 24'd0;
    write_data = 0;
    #30;
    
    writeback_enable = 1;
    mem_read_enable = 1;
    
    #20;

    alu_result = 24'd1;

    #20;

    alu_result = 24'd2;

    #40;
    mem_read_enable = 0;

    #100;
    $stop;
  end

  always #10 clk = ~clk;
endmodule