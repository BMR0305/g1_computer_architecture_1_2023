module EXECUTE (
  input clk,
  input [1:0] reg1_sel, reg2_sel, ST_reg_sel, // valores desde forwarding
  input [3:0] operation, // seleccion operacion para alu
  input [31:0] reg1, reg2, mem_result, wb_result, ST_reg_in, // registros de decode, mem y wb
  output [31:0] alu_result, ST_reg_out 
);

  wire [31:0] reg1_alu, reg2_alu;
  
  // mux para reg1 de alu
  mux3 mux_reg1 (
    .a(reg1),
    .b(mem_result),
    .c(wb_result),
    .sel(reg1_sel),
    .out(reg1_alu)
  );

  // mux para reg2 de alu
  mux3 mux_reg2 (
    .a(reg2),
    .b(mem_result),
    .c(wb_result),
    .sel(reg2_sel),
    .out(reg2_alu)
  );
	
  // mux para reg a almacenar
  mux3 mux_ST_value (
    .a(ST_reg_in),
    .b(mem_result),
    .c(wb_result),
    .sel(ST_reg_sel),
    .out(ST_reg_out)
  );
  
  // alu con registros desde decode, wb, mem y con adelantamiento
  alu alu(
    .reg1(reg1_alu),
    .reg2(reg2_alu),
    .operation(operation),
    .result(alu_result)
  );
endmodule