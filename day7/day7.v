//1011 overlapping sequence detector FSM
module day7 (
  input in, rst, clk,
  output reg out
);
  reg [1:0] state, nstate;
  localparam s0 = 2'd0, s1 = 2'd1, s2 = 2'd2, s3 = 2'd3;
  
  always @*
    begin
      case(state)
        s0: nstate = in ? s1 : s0;
        s1: nstate = in ? s1 : s2;
        s2: nstate = in ? s3 : s0;
        s3: nstate = in ? s1 : s0;
      endcase
    end
  
  always @(posedge clk)
    begin
      if(rst) 
        state <= s0;
      else
    	state <= nstate;
    end
  
  always @*
    begin
      case(state)
        s0: out = 0;
        s1: out = 0;
        s2: out = 0;
        s3: out = in ? 1 : 0;
      endcase
    end

endmodule
