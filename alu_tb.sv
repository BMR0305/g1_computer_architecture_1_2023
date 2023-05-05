module alu_tb();

  // Señales de entrada
  logic signed [31:0] reg1;
  logic signed [31:0] reg2;
  logic [3:0] operation;
  
  // Señales de salida
  logic signed [31:0] result;
  logic z_flag;
  logic n_flag;
  logic v_flag;
  logic c_flag;
  
  // Instancia de la ALU
  alu uut(
    .reg1(reg1),
    .reg2(reg2),
    .operation(operation),
    .result(result),
    .z_flag(z_flag),
    .n_flag(n_flag),
    .v_flag(v_flag),
    .c_flag(c_flag)
  );
  

  initial begin
  
    // G1Add
    reg1 = 5;
    reg2 = 10;
    operation = 4'b0000;
    #10;
    if (result != 15) $display("Error en la operación de suma");
    if (z_flag !== 0) $display("Error en la bandera de cero");
    if (n_flag !== 0) $display("Error en la bandera de negativo");
    if (v_flag !== 0) $display("Error en la bandera de overflow");
    if (c_flag !== 0) $display("Error en la bandera de acarreo");

    // G1Sub
    reg1 = 10;
    reg2 = 5;
    operation = 4'b0001;
    #10;
    if (result != 5) $display("Error en la operación de resta");
    if (z_flag !== 0) $display("Error en la bandera de cero");
    if (n_flag !== 0) $display("Error en la bandera de negativo");
    if (v_flag !== 0) $display("Error en la bandera de overflow");
    if (c_flag !== 0) $display("Error en la bandera de acarreo");
    
    // G1Mul
    reg1 = 3;
    reg2 = 4;
    operation = 4'b0010;
    #10;
    if (result != 12) $display("Error en la operación de multiplicación");
    if (z_flag !== 0) $display("Error en la bandera de cero");
    if (n_flag !== 0) $display("Error en la bandera de negativo");
    if (v_flag !== 0) $display("Error en la bandera de overflow");
    if (c_flag !== 0) $display("Error en la bandera de acarreo");
	 
	 // G1Div
    reg1 = 8;
    reg2 = 2;
    operation = 4'b0011;
	 #10;
    if (result != 4) $display("Error en la operación de división");
    if (z_flag !== 0) $display("Error en la bandera de cero");
    if (n_flag !== 0) $display("Error en la bandera de negativo");
    if (v_flag !== 0) $display("Error en la bandera de overflow");
    if (c_flag !== 0) $display("Error en la bandera de acarreo");
	 
	 // G1Div con 0
    reg1 = 8;
    reg2 = 0;
    operation = 4'b0011;
	 #10;
    if (result != 0) $display("Error en la operación de división");
    if (z_flag !== 1) $display("Error en la bandera de cero");
    if (n_flag !== 0) $display("Error en la bandera de negativo");
    if (v_flag !== 0) $display("Error en la bandera de overflow");
    if (c_flag !== 0) $display("Error en la bandera de acarreo");
    
    // G1Mod
    reg1 = 13;
    reg2 = 5;
    operation = 4'b0100;
    #10;
    if (result != 3) $display("Error en la operación de módulo");
    if (z_flag !== 0) $display("Error en la bandera de cero");
    if (n_flag !== 0) $display("Error en la bandera de negativo");
    if (v_flag !== 0) $display("Error en la bandera de overflow");
    if (c_flag !== 0) $display("Error en la bandera de acarreo");

	 // G1And
    reg1 = 1;
    reg2 = 1;
    operation = 4'b1000;
    #10;
    if (result != 1) $display("Error en la operación de módulo");
    if (z_flag !== 0) $display("Error en la bandera de cero");
    if (n_flag !== 0) $display("Error en la bandera de negativo");
    if (v_flag !== 0) $display("Error en la bandera de overflow");
    if (c_flag !== 0) $display("Error en la bandera de acarreo");
	 // G1Or
    reg1 = 0;
    reg2 = 1;
    operation = 4'b1001;
    #10;
    if (result != 1) $display("Error en la operación de módulo");
    if (z_flag !== 0) $display("Error en la bandera de cero");
    if (n_flag !== 0) $display("Error en la bandera de negativo");
    if (v_flag !== 0) $display("Error en la bandera de overflow");
    if (c_flag !== 0) $display("Error en la bandera de acarreo");
	end
		
endmodule