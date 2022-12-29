module day6 (
  input clk, rst,
  output [3:0] count 
);
  
  always @(posedge clk)
    begin
      
      if(!rst)
        begin
          
          if(count >= 4'b0000 && count < 4'b1010)
            begin
              count = count+1;
            end else begin
              count <= 4'b0000;
            end
          
        end else begin
          count <= 4'b0000;
        end
      
    end
  
endmodule
