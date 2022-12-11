module day5 #(
  parameter binWidth = 
)(
  input [3:0] bin,
  output [6:0] onehot
);
  
  assign onehot = 1'b1<<bin; 

endmodule
