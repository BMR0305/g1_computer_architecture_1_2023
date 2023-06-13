module top();

	logic [5:0] data_out;
    controller myController (.data_out(data_out));

    initial begin
        $display("El valor de la constante es %d", data_out);
    end
  
endmodule