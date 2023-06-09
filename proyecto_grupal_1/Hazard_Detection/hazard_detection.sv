`include "defines.v"

module hazard_detection(
  input [`REG_FILE_ADDR_LEN-1:0] src1_ID, //id del registro que funciona como el primer operando
  input [`REG_FILE_ADDR_LEN-1:0] src2_ID, //id del registro que funciona como el segundo operando
  input [`REG_FILE_ADDR_LEN-1:0] dest_EXE,//id del registro destino de la etapa de execute
  input [`REG_FILE_ADDR_LEN-1:0] dest_MEM,//id del registro destino de la etapa de memory
  input [3:0] op, //op de la instrucion a ejecutar
  input forward_EN, WB_EN_EXE, WB_EN_MEM, is_imm, ST, MEM_R_EN_EXE,
  // Foward_EN = flag que indica si está activo el adelantamiento
  // WB_EN_EXE = flag que indica si el WB sera utilizado con la instruccion que está etapa de ejecucion
  // WB_EN_MEM = flag que indica si el WB sera utilizado con la instruccion que está etapa de memoria
  // is_imm = flag que indica si la instruccion decodificandose es immediata
  // ST_BNE = flag que indica si la instruccion decodificandose es de store/load
  // MEM_R_EN_EXE = flag que indica si la instruccion que esta en la etapa de ejecucion va a leer en memoria
  output hazard_detected); //Flag que indica si se logró detectar un problema

  logic src2_is_valid, src1_is_valid, exe_has_hazard, mem_has_hazard, hazard, is_branch;

  assign src2_is_valid =  (~is_imm) && (op != `OP_MOVR) && (~ST) && (op != `OP_BEQ) && (op != `OP_JMP); // flag que indica si existe un src2 en la instruccion

  assign src1_is_valid =  (op != `OP_MOVI) && (op != `OP_BEQ) && (op != `OP_JMP) ; // flag que indica si existe un src1 en la instruccion

  // Deteccion de problemas con la etapa de execute
  assign exe_has_hazard = WB_EN_EXE && ((src1_is_valid && src1_ID == dest_EXE) || (src2_is_valid && src2_ID == dest_EXE)); 
  
  // Deteccion de problemas con la etapa de memoria
  assign mem_has_hazard = WB_EN_MEM && (( src1_is_valid && src1_ID == dest_MEM) || (src2_is_valid && src2_ID == dest_MEM)); //

  //Deteccion de alguno de los dos tipos de problema
  assign hazard = (exe_has_hazard || mem_has_hazard);
  
  //Deteccion si la instruccion que se está decodificando es un branch 
  assign is_branch = (op== `OP_BEQ);
	
	//Deteccion de un problema tomando en cuenta si se encuentra habilitado o no el adelantamiento
  assign hazard_detected = ~forward_EN ? hazard : (is_branch && hazard) || (MEM_R_EN_EXE && mem_has_hazard);
endmodule 