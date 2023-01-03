module day9 #(
  parameter width = 4
)(
  input [width-1:0] a, b,
  input [2:0] opcode,
  output reg [width-1:0] out,
  output reg zero
);
  
  reg cout;
  
  localparam ADD = 3'b000, SUB = 3'b001, AND = 3'b010, OR = 3'b011, XOR = 3'b100, SL = 3'b101, SR = 3'b110, LEQ = 3'b111;  
  
  always @*
    begin
      case(opcode)
        3'b000: {cout, out} = {1'b0, a} + {1'b0, b}; //addition
        3'b001: out = a - b; //subtraction
        3'b010: out = a&b; //AND
        3'b011: out = a|b; //OR
        3'b100: out = a^b; //XOR a << b; 
        3'b101: out = a[width-1:0] << b[1:0]; //shift left
        3'b110: out = a[width-1:0] >> b[1:0]; //shift right
        3'b111: out = a==b; //logical equality
      endcase
      
      if(!out) begin
        zero = 1;
      end else begin
        zero = 0;
      end
      
    end
endmodule
