module day6 (
  input clk, rst,
  output reg [3:0] count 
);
  
  always @(posedge clk)
    begin
      
      if(!rst)
        begin
          
          if(count >= 4'd0 && count < 4'd10)
            begin
              count = count+1;
            end else begin
              count <= 4'd0;
            end
          
        end else begin
          count <= 4'd0;
        end
      
    end
  
endmodule
