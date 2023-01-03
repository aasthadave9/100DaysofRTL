module day8_tb();
  
  parameter n = 8;
  
  reg s_in, clk, rst;
  wire s_out;
  
  day8 #(n) DAY8 (.s_in(s_in), .clk(clk), .rst(rst), .s_out(s_out));
  
  initial begin
    clk = 0;
    forever #10 clk = ~clk;
  end
 
  initial begin
    rst = 1;
    s_in = 0;
    #50;
    rst = 0;
    s_in = 0;
    #20;
    s_in = 1;
    #20;
    s_in = 1;
    #20;
    s_in = 0;
    #20;
    s_in = 1;
    #20;
    s_in = 0;
    #20;
    s_in = 0;
    #20;
    s_in = 1;
    #20;
    s_in = 0;
    #20;
    $finish();
  end
  
  initial begin
    $dumpfile("day8_tb.vcd");
    $dumpvars(0, day8_tb);
  end
  
endmodule


