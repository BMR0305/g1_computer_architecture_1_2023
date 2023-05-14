module D_FF #(parameter NUM_BITS = 2) (
  input logic CLK,
  input logic RST,
  input logic [(NUM_BITS-1):0] D,
  output logic [(NUM_BITS-1):0] Q = 0
);
  always_ff @(posedge CLK or posedge RST) begin
    if (RST) Q <= 0;
    else Q <= D;
  end
endmodule 