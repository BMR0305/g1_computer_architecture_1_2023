`timescale 1ns/1ns
  
module memory_stage_tb();
  logic clk_a;
  logic clk_b;

  logic mem_to_reg;
  logic write_en;

  logic [17:0] address_a;
  logic [17:0] address_b;

  logic [31:0] alu_result;

  logic [23:0] mem_data_b;
  logic [31:0] result;

  memory_stage dut (
    .clk_a(clk_a),
    .clk_b(clk_b),
    .mem_to_reg(mem_to_reg),
    .mem_write_en(write_en),
    .alu_result(alu_result),
    .address_a(address_a),
    .address_b(address_b),
    .mem_data_b(mem_data_b),
    .result(result)
	);

  initial begin
    clk_a = 0;
    clk_b = 0;

    mem_to_reg = 0;
    write_en = 0;
    
    alu_result = 0;

    address_a = 0;
    address_b = 0;

    #30;

    address_a = 1;
    address_b = 2;

    #40;

    write_en = 1;
    alu_result = 32'h55555551;
    address_a = 3;

    #10;
    write_en = 0;
    address_a = 0;
    
    #30;
    address_b = 3;

    #10;
    mem_to_reg = 1;
    address_a = 3;

    #200;
    $stop;
  end

  always #10 clk_a = ~clk_a;
  always #30 clk_b  = ~clk_b;

endmodule