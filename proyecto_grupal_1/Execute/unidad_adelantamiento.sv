module unidad_adelantamiento (
  input [3:0] reg1_EXE, reg2_EXE, // registros operandos para alu en exe
  input [3:0] ST_src_EXE, // registro a almacenarse en memoria
  input [3:0] dest_MEM, dest_WB, // registros para memoria y WB
  input WB_EN_MEM, WB_EN_WB, // señales de control para escritura en memoria o WB (si está habilitado o no)
  output reg [1:0] reg1_sel, reg2_sel, // señales de control para selección de registros a alu
  output reg [1:0] ST_reg_sel // señal de control para almacenar en memoria
);

  always @ ( * ) begin
  
	 // inicialización de señales de control en 0
    {reg1_sel, reg2_sel, ST_reg_sel} <= 0;
	 
	 // ST_reg_sel
	 //			0: ST_src_EXE debe ser leído desde Decode
	 //			1: ST_src_EXE debe ser leído desde memoria
	 //			2: ST_src_EXE debe ser leído desde WB

    if (WB_EN_MEM && ST_src_EXE == dest_MEM) ST_reg_sel <= 2'd1;
    else if (WB_EN_WB && ST_src_EXE == dest_WB) ST_reg_sel <= 2'd2;
	 
	 // reg1_sel
	 //			0: reg1 debe ser leído desde Decode
	 //			1: reg1 debe ser leído desde memoria
	 //			2: reg1 debe ser leído desde WB

    if (WB_EN_MEM && reg1_EXE == dest_MEM) reg1_sel <= 2'd1;
    else if (WB_EN_WB && reg1_EXE == dest_WB) reg1_sel <= 2'd2;
	 
	 // reg2_sel
	 //			0: reg2 debe ser leído desde Decode
	 //			1: reg2 debe ser leído desde memoria
	 //			2: reg2 debe ser leído desde WB

    if (WB_EN_MEM && reg2_EXE == dest_MEM) reg2_sel <= 2'd1;
    else if (WB_EN_WB && reg2_EXE == dest_WB) reg2_sel <= 2'd2;
  end
endmodule