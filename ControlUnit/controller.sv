
module controller (input logic a, output logic data_out);

always @(*) begin

 data_out =  a & 1'b1 ;
 end


endmodule
