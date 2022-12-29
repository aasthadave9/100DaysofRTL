module day5 #(
  parameter binWidth = 4
)(
  input [binWidth-1:0] bin,
  output [(2**binWidth)-1:0] onehot
);
  
  assign onehot = 1'b1<<bin; 

endmodule
