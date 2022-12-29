module day6_tb();
  reg clk, rst;
  wire count;
  
  day6 DAY6(.clk(clk), .rst(rst), .count(count));
  
  initial begin
    clk=0;
    forever #10 clk = ~clk;
  end
    
  initial begin
    rst=1;
    #10;
    rst=0;
    #350;
    rst=1;
    #30;
    $finish();
  end
  
  initial begin
    $dumpfile("day6.vcd");
    $dumpvars(2, day6_tb);
  end
  
endmodule
