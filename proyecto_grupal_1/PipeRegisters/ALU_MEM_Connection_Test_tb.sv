`timescale 10ns / 10ns

module ALU_MEM_Connection_Test_tb();
  logic rst;
  logic clk;

  logic writeback_enable;
  logic mem_read_enable;
  logic mem_write_enable;
  logic [3:0] instruction_dest;
  logic [23:0] alu_result;
  logic [23:0] write_data;

  logic writeback_enable_out;
  logic mem_read_enable_out;
  logic [3:0] instruction_dest_out;
  logic [23:0] memory_out;
  logic [23:0] alu_result_out;

  ALU_MEM_Connection_Test dut(
    .rst(rst),
    .clk(clk),
    .writeback_enable(writeback_enable),
    .mem_read_enable(mem_read_enable),
    .mem_write_enable(mem_write_enable),
    .instruction_dest(instruction_dest),
    .alu_result(alu_result),
    .write_data(write_data),
    .writeback_enable_out(writeback_enable_out),
    .mem_read_enable_out(mem_read_enable_out),
    .instruction_dest_out(instruction_dest_out),
    .memory_out(memory_out),
    .alu_result_out(alu_result_out)
  );

  initial begin
    rst = 0;
    clk = 0;

    writeback_enable = 0;
    mem_read_enable = 0;
    mem_write_enable = 0;
    instruction_dest = 4'b0000;

    alu_result = 24'd0;
    write_data = 0;

    #40;
    
    writeback_enable = 1;
    mem_read_enable = 1;
    instruction_dest = 4'b0001;
    
    #20;

    writeback_enable = 0;
    mem_read_enable = 0;
    instruction_dest = 4'b0010;
    
    #20;

    mem_read_enable = 1;

    #40;

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