module day4 #(
  parameter width = 4
  
)(
  input [width-1:0] bin,
  output reg [width-1:0] gray
);
  
  assign gray[width-1] = bin[width-1];

  genvar i;
  generate
    for(i=width-2; i>=0; i=i-1)
      begin
       assign gray[i] = bin[i+1] ^ bin[i]; 
      end
  endgenerate

endmodule
