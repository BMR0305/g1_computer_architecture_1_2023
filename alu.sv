module alu(
  input logic signed [31:0] reg1,
  input logic signed [31:0] reg2,
  input logic [3:0] operation,
  output logic signed [31:0] result,
  output logic z_flag, // Bandera de cero
  output logic n_flag, // Bandera de negativo
  output logic v_flag, // Bandera de overflow
  output logic c_flag  // Bandera de acarreo
);

logic signed [31:0] tmp; // variable temporal para guardar resultados

  always @(*) begin
    case (operation)
      4'b0000: // G1Add
        begin
          result = reg1 + reg2;
          z_flag = (result == 0);
          n_flag = (result < 0);
          v_flag = ((reg1[31] == reg2[31]) && (result[31] != reg1[31]));
          c_flag = (result < reg1) || (result < reg2);
        end
      4'b0001: // G1Sub
        begin
          result = reg1 - reg2;
          z_flag = (result == 0);
          n_flag = (result < 0);
          v_flag = ((reg1[31] != reg2[31]) && (result[31] != reg1[31]));
          c_flag = (reg1 < reg2);
        end		 
		4'b0010: // G1Mul
        begin
          result = reg1 * reg2;
          z_flag = (result == 0);
          n_flag = (result < 0);
          v_flag = (result >>> 31) ^ (result >> 31);
          c_flag = 0;
        end
		4'b0011: // G1Div
        begin
          if (reg2 != 0) begin
            tmp = reg1 / reg2;
            result = tmp;
          end else begin
            // División por cero
            result = 0;
          end
          z_flag = (result == 0);
          n_flag = (result < 0);
          v_flag = 0; // No hay overflow en división
          c_flag = 0; // No hay carry en división
        end
		4'b0100: // G1Mod
        begin
          if (reg2 != 0) begin
            tmp = reg1 % reg2;
            result = tmp;
          end else begin
            // División por cero
            result = 0;
          end
          z_flag = (result == 0);
          n_flag = (result < 0);
          v_flag = 0; // No hay overflow en módulo
          c_flag = 0; // No hay carry en módulo
        end
      4'b1000: // G1And
        begin
          result = reg1 & reg2;
          z_flag = (result == 0);
          n_flag = (result < 0);
          v_flag = 0;
          c_flag = 0;
        end
      4'b1001: // G1Or
        begin
          result = reg1 | reg2;
          z_flag = (result == 0);
          n_flag = (result < 0);
          v_flag = 0;
          c_flag = 0;
        end
      default:
        begin
          result = 0;
          z_flag = 1;
          n_flag = 0;
          v_flag = 0;
          c_flag = 0;
        end
    endcase
  end

endmodule