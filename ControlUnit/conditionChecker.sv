module conditionChecker (
  input flag,
  input [3:0] branch_comm,
  output reg brCond);

  always_comb begin
    case (branch_comm)
      4'b1011: brCond <= 1;
		4'b1010: brCond <= (flag == 1) ? 1 : 0;
      default: brCond <= 0;
    endcase
  end
endmodule // conditionChecker