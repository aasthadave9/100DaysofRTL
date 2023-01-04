module day10_tb();
  
  parameter width = 4;
  
  reg [width-1:0] data;
  wire err_check;
  
  day10 #(width) DAY10 (.data(data), .err_check(err_check));
  
  initial begin
    for(int i = 0; i<2**width; i=i+1)
      begin
        data = i;
        #2;
      end
    $finish();
  end
  
  
  initial begin
    $dumpfile("day10.vcd");
    $dumpvars(0, day10_tb);
  end
  
endmodule
