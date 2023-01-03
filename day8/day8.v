module day8 #(
  parameter n = 8
)(
  input s_in, clk, rst,
  output reg s_out
);
  
  reg [n-1:0] r;
  wire [n-1:0] r_next;
  
  always @(posedge clk) 
    begin
      if(rst) begin
        r <= 0;
      end else begin
        r <= r_next;
      end
    end
  
  assign r_next = {s_in, r[n-1:1]};
  assign s_out = r[0];
  
endmodule

