module image_rom(
  input logic clock_a,
  input logic clock_b,
  input logic read_enable_a,
  input logic read_enable_b,
  input logic [16:0] address_a,
  input logic [16:0] address_b,
  output logic [23:0] read_data_a,
  output logic [23:0] read_data_b
);
  logic [23:0] image_memory [89999:0];

	initial $readmemh("init/image.memh", image_memory);
 
  always_ff @(posedge clock_a) begin
    if (read_enable_a) read_data_a <= image_memory[address_a];
    else read_data_a <= 24'b0;
  end

  always_ff @(posedge clock_b) begin
    if (read_enable_b) read_data_b <= image_memory[address_b];
    else read_data_b <= 24'b0;
  end
endmodule 