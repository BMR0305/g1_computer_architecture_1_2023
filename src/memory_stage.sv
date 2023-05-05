module memory_stage(
  input logic clk_a,
  input logic clk_b,
  input logic mem_to_reg,
  input logic mem_write_en,
  input logic [31:0] alu_result,
  // input logic [17:0] address_a,
  input logic [31:0] write_data_a,
  input logic [17:0] address_b,
  output logic [23:0] mem_data_b,
  // output logic [31:0] mem_data_b,
  output logic [31:0] result
);
  /* Memory read/write */
  logic [23:0] q_a;
  logic [23:0] q_b;

  data_ram ram(
    // Las entradas y salidas de la ram ya tienen flip-flops
    .clock_a(clk_a),
    .clock_b(clk_b),
    .wren_a(mem_write_en),
    .wren_b(1'b0),
    .address_a(alu_result[17:0]),
    .address_b(address_b),
    .data_a(write_data_a[23:0]),
    .data_b(24'b0),
    .q_a(q_a),
    .q_b(q_b)
  );

  logic [31:0] alu_ff_result;
  D_FF #(.NUM_BITS(32)) alu_ff(
    .CLK(clk_a),
    .RST(1'b0), 
    .D(alu_result),
    .Q(alu_ff_result)
  );

  always_comb begin
    mem_data_b = q_b;
    // mem_data_b = {8'b0, q_b};
    result = mem_to_reg ? {8'b0, q_a} : alu_ff_result;
  end
endmodule