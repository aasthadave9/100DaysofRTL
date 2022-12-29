module day4_tb();
  
  parameter width = 4;  
  
  reg [width-1:0] bin; 
  wire [width-1:0] gray;
  
  day4 #(width) DAY4 (.bin(bin), .gray(gray));
  
  initial begin
    for(int i=0; i< 2**width; i=i+1)
      begin
        bin = i;
        #2;
      end
    $finish(); 
  end
  
  initial begin
    $dumpfile("day4.vcd");
    $dumpvars(2, day4_tb);
  end
  
endmodule
