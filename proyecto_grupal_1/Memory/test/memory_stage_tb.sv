`timescale 1ns/1ns
  
module memory_stage_tb();
  logic rst;

  logic clk_a;
  logic clk_b;

  logic read_enable;
  logic write_enable;
  logic mem_to_reg;

  logic [23:0] alu_result;
  logic [16:0] address_b;

  logic [23:0] write_data_a;

  logic [23:0] result;
  logic [23:0] read_data_b;

  memory_stage dut (
    .rst(rst),
    .clk_a(clk_a),
    .clk_b(clk_b),
    .read_enable(read_enable),
    .write_enable(write_enable),
    .mem_to_reg(mem_to_reg),
    .alu_result(alu_result),
    .address_b(address_b),
    .write_data_a(write_data_a),
    .result(result),
    .read_data_b(read_data_b)
	);

  initial begin
    rst = 0;

    read_enable = 1;
    write_enable = 0;
    mem_to_reg = 0;

    alu_result = 0;
    address_b = 0;

    write_data_a = 0;

    clk_a = 0;
    clk_b = 0;

    #30;

    alu_result = 24'h000001;
    address_b = 17'h00002;
    mem_to_reg = 1;

    #30;

    alu_result = 24'h000002;
    address_b = 17'd90001;

    #30;

    alu_result = 24'd90064;
    address_b = 24'd90438;

    #100;
    $stop;
  end

  always #10 clk_a = ~clk_a;
  always #20 clk_b  = ~clk_b;
endmodule