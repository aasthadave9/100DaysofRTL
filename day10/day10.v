module day10 #(
  parameter width = 4
)(
  input [width-1:0] data,
  output reg err_check
);

  always @*
    begin
      err_check = 0;
      for(int i = 0; i<width; i=i+1)
        begin
          err_check = err_check ^ data[i];
        end
    end
  
endmodule
