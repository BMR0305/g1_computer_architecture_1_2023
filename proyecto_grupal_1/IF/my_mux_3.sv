module my_mux_3 #(parameter integer LENGTH) (in1, in2, in3, sel, out);
  input logic [LENGTH-1:0] in1, in2, in3;
  input logic [1:0] sel;
  output logic  [LENGTH-1:0] out;

  // assign out = (sel == 2'd0) ? in1 :
  //              (sel == 2'd1) ? in2 : in3;

  always_comb begin
    case (sel)
      2'd0: out = in1;
      2'd1: out = in2;
      2'd2: out = in3;
      default: out = 'bx;
    endcase
  end
endmodule // mux