module memory_stage(
  input logic rst,
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
  // !!! Las entradas y salidas de las memorias tienen flip-flops
  logic [16:0] address_a;
  logic [16:0] address_b_aux;

  logic [23:0] image_rom_q_a;
  logic [23:0] image_rom_q_b;
  image_rom image_rom(
    .aclr_a(rst),
    .aclr_b(rst),
    .address_a(address_a),
    .address_b(address_b_aux),
    .clock_a(clk_a),
    .clock_b(clk_b),
    .rden_a(read_enable),
    .rden_b(1'b1),
    .q_a(image_rom_q_a),
    .q_b(image_rom_q_b)
  );

  logic [23:0] sin_rom_q_a;
  logic [23:0] sin_rom_q_b;
  sin_rom sin_rom(
    .aclr(rst),
    .address(address_a),
    .clock(clk_a),
    .rden(read_enable),
    .q(sin_rom_q_a)
  );

  logic [23:0] ram_q_a;
  logic [23:0] ram_q_b;
  data_ram ram(
    .aclr_a(rst),
    .aclr_b(rst),
    .address_a(address_a),
    .address_b(address_b_aux),
    .clock_a(clk_a),
    .clock_b(clk_b),
    .data_a(write_data_a),
    .data_b(24'b0),
    .rden_a(read_enable),
    .rden_b(1'b1),
    .wren_a(write_enable),
    .wren_b(1'b0),
    .q_a(ram_q_a),
    .q_b(ram_q_b)
  );

  // logic [23:0] alu_ff_result;
  // D_FF #(.NUM_BITS(24)) alu_ff(
  //   .CLK(clk_a),
  //   .RST(reset), 
  //   .D(alu_result),
  //   .Q(alu_ff_result)
  // );

  always_comb begin
    if(mem_to_reg) begin
      if(alu_result[16:0] <= 89999) begin
        address_a = alu_result[16:0];
        result = image_rom_q_a;
      end
      else if(alu_result > 89999 && alu_result <= 90299) begin
        address_a = alu_result[16:0] - 17'd90000;
        result = sin_rom_q_a;
      end
      else begin
        address_a = alu_result[16:0] - 17'd90300;
        result = ram_q_a;
      end
    end
    else begin
      address_a = 17'b0;
      result = alu_result;
    end
  end

  always_comb begin
    if(address_b <= 89999) begin
      address_b_aux = address_b;
      read_data_b = image_rom_q_b;
    end
    else if(address_b > 89999 && address_b <= 90299) begin
      address_b_aux = 17'b0;
      read_data_b = 24'b0;
    end
    else begin
      address_b_aux = address_b - 17'd90300;
      read_data_b = ram_q_b;
    end
  end
endmodule 