`timescale 1ns / 1ps

module sng
#(parameter seed_sng = 'd1)
(
    input clk,
    input reset,
    input [15:0] x,
    output ans
);

wire [15:0] lfsr_out;

lfsr lfsr1(
    .clk(clk),
    .reset(reset),
    .Q(lfsr_out)
);

defparam lfsr1.seed = seed_sng;

comparator comp1(
    .clk(clk),
    .a(x),
    .b(lfsr_out),
    .ans(ans)
);

endmodule