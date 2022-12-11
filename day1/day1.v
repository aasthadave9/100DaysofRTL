module day1 (
  input [7:0] a,
  input [7:0] b,
  input sel,
  output reg [7:0] y
);
  
  assign y = sel? a : b;

endmodule
