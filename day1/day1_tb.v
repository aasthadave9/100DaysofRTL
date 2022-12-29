module day1_tb();
  
  reg a, b, sel;
  wire y;
  
  day1 mux(.a(a), .b(b), .sel(sel), .y(y));
  
  initial begin
    a <= 0;
    b <= 1;
    sel <= 0;
    #1;
    
    sel <= 1;
    #1;
    
    a <= 1;
    b <= 0;
    #1;
    
  end
  
  initial begin
    $dumpfile("day1.vcd");
    $dumpvars(0, day1_tb);
  end
  
endmodule
