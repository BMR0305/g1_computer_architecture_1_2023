module sin_rom(
  input logic clock,
  input logic read_enable,
  input logic [16:0] address,
  output logic [23:0] read_data
);
  logic [23:0] sin_memory [299:0];

	initial $readmemh("init/sin.memh", sin_memory);
 
  always_ff @(posedge clock) begin
    if (read_enable) read_data <= sin_memory[address[8:0]];
    else read_data <= 24'b0;
  end
endmodule 