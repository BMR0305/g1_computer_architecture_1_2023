`timescale 10ns / 10ns

module MEM_WB_Connection_Test_tb();
  logic rst;
  logic clk;
  logic writeback_enable;
  logic read_enable;
  logic write_enable;
  logic [3:0] instruction_dest;
  logic [23:0] alu_result;
  logic [23:0] write_data_a;

  logic writeback_enable_out;
  logic [3:0] instruction_dest_out;
  logic [23:0] writeback_data_out;

  MEM_WB_Connection_Test dut(
    .rst(rst),
    .clk_a(clk),
    .writeback_enable(writeback_enable),
    .read_enable(read_enable),
    .write_enable(write_enable),
    .instruction_dest(instruction_dest),
    .alu_result(alu_result),
    .write_data_a(write_data_a),
    .writeback_enable_out(writeback_enable_out),
    .instruction_dest_out(instruction_dest_out),
    .writeback_data_out(writeback_data_out)
  );

  initial begin
    rst = 0;
    clk = 0;

    writeback_enable = 0;
    read_enable = 0;
    write_enable = 0;

    instruction_dest = 4'd0;
    alu_result = 24'd0;
    write_data_a = 24'd0;

    #29;

    writeback_enable = 1;
    read_enable = 0;

    instruction_dest = 4'd1;
    alu_result = 24'd1;

    #20;

    writeback_enable = 0;
    read_enable = 1;

    instruction_dest = 4'd2;
    alu_result = 24'd1;

    #20;

    writeback_enable = 1;
    read_enable = 0;

    instruction_dest = 4'd1;
    alu_result = 24'd2;

    #20;

    writeback_enable = 1;
    read_enable = 1;

    instruction_dest = 4'd1;
    alu_result = 24'd2;

    #50;
    $stop;
  end

  always #10 clk = ~clk;
endmodule