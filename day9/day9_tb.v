module day9_tb();
  
  parameter width = 8;
  
  reg [width-1:0] a, b;
  reg [2:0] opcode;
  wire [width-1:0] out;
  wire zero;
  
  day9 #(width) DAY9 (.a(a), .b(b), .opcode(opcode), .out(out), .zero(zero));
  
  initial begin
    opcode = 3'b000;
    a = 8'h00;
    b = 8'h00;
    #10;
    opcode = 3'b000;
    a = 8'hF0;
    b = 8'h11;
    #10;
    opcode = 3'b001;
    a = 8'hF0;
    b = 8'h11;
    #10;
    opcode = 3'b010;
    a = 8'hF0;
    b = 8'h11;
    #10;
    opcode = 3'b011;
    a = 8'hF0;
    b = 8'h11;
    #10;
    opcode = 3'b100;
    a = 8'hF0;
    b = 8'h11;
    #10;
    opcode = 3'b101;
    a = 8'h11;
    b = 8'h2F;
    #10;
    opcode = 3'b110;
    a = 8'h11;
    b = 8'h2F;
    #10;
    opcode = 3'b111;
    a = 8'hF0;
    b = 8'h11;
    #10;
    opcode = 3'b111;
    a = 8'h11;
    b = 8'h11;
    #10;
    $finish();
  end
  
  initial begin
    $dumpfile("day9.vcd");
    $dumpvars(0, day9_tb);
  end
  
endmodule

