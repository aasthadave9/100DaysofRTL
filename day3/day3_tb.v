module day3_tb();
  
  reg d, clk, rst;
  wire q;
  
  day3 DAY3(.d(d), .clk(clk), .rst(rst), .q(q));
  
  initial begin
    clk=0;
    forever #10 clk = ~clk;
  end
   
  initial begin
    rst=1'b0;
    d=1'b0;
    #5;
    d=1'b1;
    #15;
    d=1'b0;
    #5;
    d=1'b1;
    rst=1'b1;
    #15;
    $finish();
  end
  
  initial begin
    $dumpfile("day3.vcd");
    $dumpvars(0, day3_tb);
  end
  
endmodule
