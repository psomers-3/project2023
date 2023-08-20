`timescale 1ns / 1ps

module comparator (
    input wire [15:0] a,
    input wire [15:0] b,
    input clk,
    output reg ans
    );

    always @(posedge clk) begin
      if (a>b)
        ans = 1;
      else if (a==b)
        ans = 1;
      else
        ans = 0;
    end
endmodule