module day2(
  input [7:0] a,
  input [7:0] b,
  input cin,
  output [7:0] sum,
  output cout
);
  
  assign sum = (a ^ b ^ cin);
  assign cout = (a & b) | (b & cin) | (cin & a);
 
endmodule
