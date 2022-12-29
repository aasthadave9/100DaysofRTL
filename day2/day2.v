module day2 (
  input a,
  input b,
  input cin,
  output reg sum,
  output reg cout
);
  
  assign sum = (a ^ b ^ cin);
  assign cout = (a & b) | (b & cin) | (cin & a);
 
endmodule
