`timescale 1ns / 1ps

module EXECUTE_TB;
  reg clk;
  reg [1:0] reg1_sel, reg2_sel, ST_reg_sel;
  reg [3:0] operation;
  reg [23:0] reg1, reg2, mem_result, wb_result, ST_reg_in;
  wire [23:0] alu_result, ST_reg_out;
  wire z_flag_alu, n_flag_alu, v_flag_alu, c_flag_alu;

  EXECUTE dut (
    .clk(clk),
    .reg1_sel(reg1_sel),
    .reg2_sel(reg2_sel),
    .ST_reg_sel(ST_reg_sel),
    .operation(operation),
    .reg1(reg1),
    .reg2(reg2),
    .mem_result(mem_result),
    .wb_result(wb_result),
    .ST_reg_in(ST_reg_in),
    .alu_result(alu_result),
    .z_flag_alu(z_flag_alu),
    .n_flag_alu(n_flag_alu),
    .v_flag_alu(v_flag_alu),
    .c_flag_alu(c_flag_alu),
    .ST_reg_out(ST_reg_out)
  );
  parameter PERIOD = 10;
  always #PERIOD clk = ~clk;

  initial begin
    clk = 0;
    reg1_sel = 0;
    reg2_sel = 0;
    ST_reg_sel = 0;
    operation = 0;
    reg1 = 0;
    reg2 = 0;
    mem_result = 0;
    wb_result = 0;
    ST_reg_in = 0;
  end

  initial begin
    // Prueba 1: Suma de dos registros
    reg1_sel = 0;
    reg2_sel = 1;
    ST_reg_sel = 0;
    operation = 0;
    reg1 = 5;
    reg2 = 10;
    mem_result = 0;
    wb_result = 0;
    ST_reg_in = 0;
    #PERIOD;
    assert (alu_result === 15) else $error("Test 1 failed");
    assert (!z_flag_alu) else $error("Test 1 failed");
    assert (!n_flag_alu) else $error("Test 1 failed");
    assert (!v_flag_alu) else $error("Test 1 failed");
    assert (!c_flag_alu) else $error("Test 1 failed");
    assert (ST_reg_out === 0) else $error("Test 1 failed");

    // Prueba 2: Resta de dos registros
    reg1_sel = 1;
    reg2_sel = 0;
    ST_reg_sel = 0;
    operation = 1;
    reg1 = 10;
    reg2 = 5;
    mem_result = 0;
    wb_result = 0;
    ST_reg_in = 0;
    #PERIOD;
    assert (alu_result === 5) else $error("Test 2 failed");
    assert (!z_flag_alu) else $error("Test 2 failed");
    assert (n_flag_alu) else $error("Test 2 failed");
    assert (!v_flag_alu) else $error("Test 2 failed");
    assert (!c_flag_alu) else $error("Test 2 failed");
    assert (ST_reg_out === 0) else $error("Test 2 failed");

    $display("All tests passed");
    $finish;
    end

endmodule
