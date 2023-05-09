module data_ram(
  input logic reset,
  input logic clock_a,
  input logic clock_b,
  input logic read_enable_a,
  input logic read_enable_b,
  input logic write_enable_a,
  input logic write_enable_b,
  input logic [16:0] address_a,
  input logic [16:0] address_b,
  input logic [23:0] write_data_a,
  input logic [23:0] write_data_b,
  output logic [23:0] read_data_a,
  output logic [23:0] read_data_b
);
  logic [23:0] data_memory [89999:0];

	initial $readmemh("./init/image.memh", data_memory);

  always_ff @(posedge reset) begin
    if (reset) begin
      data_memory <= '{ default: '0 };
    end 
  end
 
  always_ff @(posedge clock_a) begin
    if (write_enable_a) data_memory[address_a] <= write_data_a;

    if (read_enable_a) read_data_a <= data_memory[address_a];
    else read_data_a <= 24'b0;
  end

  always_ff @(posedge clock_b) begin
    if (write_enable_b) data_memory[address_b] <= write_data_b;

    if (read_enable_b) read_data_b <= data_memory[address_b];
    else read_data_b <= 24'b0;
  end
endmodule