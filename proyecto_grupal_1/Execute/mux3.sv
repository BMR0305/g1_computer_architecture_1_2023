module mux3 (
	input logic [23:0] a, b, c, // entradas para alu
	input logic [1:0] sel, // selección de cuál registro va a alu
	output logic [23:0] out); // registro seleccionado
	
    always_comb begin
        case(sel)
            2'b00: out = a;
            2'b01: out = b;
            2'b10: out = c;
            default: out = 24'b0; // manejo de selección invalida
        endcase
    end
endmodule