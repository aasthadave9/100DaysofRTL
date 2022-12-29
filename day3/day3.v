module day3(
  input d,
  input clk,
  input rst,
  output reg q
);
  
  //synchronous reset
  always @(posedge clk)
    begin
      if(rst)
        q <= 1'b0;
      else
        q <= d;
    end
endmodule
