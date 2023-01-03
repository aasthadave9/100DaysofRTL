module day7_tb();
  
  reg in, rst, clk;
  wire out;
  
  day7 DAY7 (.in(in), .rst(rst), .clk(clk), .out(out));
  
  initial begin
    clk = 0;
    forever #10 clk = ~clk;
  end
  
  initial begin
    rst = 1;
    in = 0;
    #30;
    rst = 0;
    #30;
    in = 1;
    #10;
    in = 0;
    #10;
    in = 1;
    #10;
    in = 1;
    #10;
    in = 0;
    #10;
    in = 1;
    #10;
    in = 1;
    #10;
    $finish(); 
  end
  
  initial begin
    $dumpfile("day7.vcd");
    $dumpvars(2, day7_tb);
  end
  
endmodule
