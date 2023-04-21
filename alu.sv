
module ALU (reg1, reg2, operation, aluOut);
  input [32-1:0] reg1, reg2;
  input [3:0] operation;
  output reg [32-1:0] aluOut;

  always @ ( * ) begin
    case (operation)
      4'b0000: aluOut <= reg1 + reg2; // G1Add
      4'b0001: aluOut <= reg1 - reg2; // G1Sub
		4'b0010: aluOut <= reg1 * reg2; // G1Mul
		4'b0011: aluOut <= reg1 / reg2; // G1Div
		4'b0100: aluOut <= reg1 % reg2; // G1Mod
      default: aluOut <= 0;
    endcase
  end
endmodule // ALU