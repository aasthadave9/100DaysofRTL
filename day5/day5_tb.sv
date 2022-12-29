module day5_tb();
  
  parameter binWidth = 3;
  
  reg [binWidth-1:0] bin;
  wire [(2**binWidth)-1:0] onehot;
  
  day5 #(binWidth) DAY5(.bin(bin), .onehot(onehot)); 
  
  initial begin
    for(int i = 0; i < 2**binWidth; i = i+1)
      begin
        bin=i;
        #2;
      end
    $finish();
  end

   initial begin
     $dumpfile("day5.vcd");
     $dumpvars(2, day5_tb);
  end
  
endmodule
