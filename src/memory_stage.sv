module memory_stage(
  input logic reset,
  input logic clk_a,
  input logic clk_b,
  input logic read_enable,
  input logic write_enable,
  input logic mem_to_reg,
  input logic [23:0] alu_result,
  input logic [16:0] address_b,
  input logic [23:0] write_data_a,
  output logic [23:0] result,
  output logic [23:0] read_data_b
);
  logic [16:0] address_a;
  logic [16:0] address_b_aux;

  // Las entradas y salidas de las memorias ya tienen flip-flops
  logic [23:0] image_rom_q_a;
  logic [23:0] image_rom_q_b;
  image_rom image_rom(
    .clock_a(clk_a),
    .clock_b(clk_b),
    .address_a(address_a),
    .address_b(address_b_aux),
    .q_a(image_rom_q_a),
    .q_b(image_rom_q_b)
  );

  logic [23:0] ram_q_a;
  logic [23:0] ram_q_b;
  data_ram ram(
    .clock_a(clk_a),
    .clock_b(clk_b),
    .rden_a(read_enable),
    .rden_b(1'b1),
    .wren_a(write_enable),
    .wren_b(1'b0),
    .address_a(address_a),
    .address_b(address_b_aux),
    .data_a(write_data_a),
    .data_b(24'b0),
    .q_a(ram_q_a),
    .q_b(ram_q_b)
  );

  logic [23:0] alu_ff_result;
  D_FF #(.NUM_BITS(24)) alu_ff(
    .CLK(clk_a),
    .RST(reset), 
    .D(alu_result),
    .Q(alu_ff_result)
  );

  always_comb begin
    if(mem_to_reg) begin
      if(alu_result[16:0] <= 89999) begin
        address_a = alu_result[16:0];
        result = image_rom_q_a;
      end
      else begin
        address_a = alu_result[16:0] - 17'd90000;
        result = ram_q_a;
      end
    end
    else begin
      address_a = alu_result[16:0];
      result = alu_ff_result;
    end

    if(address_b <= 89999) begin
      address_b_aux = address_b;
      read_data_b = image_rom_q_b;
    end
    else begin
      address_b_aux = address_b - 17'd90000;
      read_data_b = ram_q_b;
    end
  end
endmodule