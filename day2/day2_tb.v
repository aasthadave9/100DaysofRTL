module day2_tb();
  
  reg a, b, cin;
  wire sum, cout;
  
  day2 DAY2(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
  
  initial begin
    cin=0;
    for(int i=0; i<2; i=i+1) begin
      for(int j=0; j<2; j=j+1) begin
        a=i;
        b=j;
        #2;
      end
      #2;
    end
    cin=1;
    for(int i=0; i<2; i=i+1) begin
      for(int j=0; j<2; j=j+1) begin
        a=i;
        b=j;
        #2;
      end
      #2;
    end
  end
  
  initial begin
    $dumpfile("day2.vcd");
    $dumpvars(0, day2_tb);
  end
  
endmodule
