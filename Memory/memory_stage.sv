module memory_stage(
  input logic rst,
  input logic clk_a,
  input logic clk_b,
  input logic writeback_enable,
  input logic read_enable,
  input logic write_enable,
  input logic [3:0] instruction_dest,
  input logic [23:0] alu_result,
  input logic [23:0] write_data_a,
  input logic [17:0] address_b,
  output logic writeback_enable_out,
  output logic read_enable_out,
  output logic [3:0] instruction_dest_out,
  output logic [23:0] memory_out,
  output logic [23:0] alu_result_out,
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
  
  D_FF #(.NUM_BITS(24)) alu_result_input_pipe(
    .CLK(clk_a),
    .RST(rst), 
    .D(alu_result),
    .Q(alu_result_out)
  );
  
  D_FF #(.NUM_BITS(1)) read_enable_input_pipe(
    .CLK(clk_a),
    .RST(rst), 
    .D(read_enable),
    .Q(read_enable_out)
  );

  logic [17:0] address_a_18_bits;
  always_comb begin
    if(alu_result <= 89999) begin
      address_a = alu_result[16:0];
      memory_out = image_rom_q_a;
    end
    else if(alu_result > 89999 && alu_result <= 90299) begin
      address_a = alu_result[16:0] - 17'd90000;
      memory_out = sin_rom_q_a;
    end
    else begin
      address_a = address_a_18_bits[16:0];
      memory_out = ram_q_a;
    end
  end

  logic [17:0] address_b_18_bits;
  always_comb begin
    if(address_b <= 89999) begin
      address_b_aux = address_b[16:0];
      read_data_b = image_rom_q_b;
    end
    else if(address_b > 89999 && address_b <= 90299) begin
      address_b_aux = 17'b0;
      read_data_b = 24'b0;
    end
    else begin
      address_b_aux = address_b_18_bits[16:0];
      read_data_b = ram_q_b;
    end
  end

  always_comb begin
    address_a_18_bits = alu_result[17:0] - 17'd90300;
    address_b_18_bits = address_b[17:0] - 17'd90300;

    writeback_enable_out = writeback_enable;
    instruction_dest_out = instruction_dest;
  end
endmodule