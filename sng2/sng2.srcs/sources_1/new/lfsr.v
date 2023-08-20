`timescale 1ns / 1ps

module lfsr
#(parameter seed = 'd1)
(
    input clk,
    input reset,
    output [1:16] Q
);

reg [1:16] Q_reg, Q_next;
wire taps;

always @ (posedge clk) begin
    if(reset)
        Q_reg <= seed;
    else
        Q_reg <= Q_next;
end

always @ (posedge clk) begin
    Q_next = {taps, Q_reg[1:16 - 1]};
end

assign Q = Q_reg;

assign taps = Q_reg[16] ^ Q_reg[15] ^ Q_reg[13] ^ Q_reg[4];

endmodule
