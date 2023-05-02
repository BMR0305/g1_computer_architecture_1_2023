`include "defines.sv"
module test(output logic data_out);

  

  logic a; 
  
  controller counter_inst (.a(a), .data_out(data_out) );
  

  initial begin
    a = `test; 
	 
	 #100 $display("Salida: %d", data_out);
	 
	 a = `test1; 
	 
	 #100 $display("Salida: %d", data_out);
	 
    $finish;
  end

endmodule
