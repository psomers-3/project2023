`timescale 1ns / 1ps

module stochastic_multiplier
#(parameter seed1 = 'd1, parameter seed2 = 'd2)
(
    input [15:0] pixel,
    input [15:0] weight,
    input clk,
    input reset,
    input counter_reset,
    output reg [3:0] ans
);

wire sng1out;
wire sng2out;
wire and_ans;

sng sng1(
    .clk(clk),
    .reset(reset),
    .x(pixel),
    .ans(sng1out)
);
defparam sng1.seed_sng = seed1;

sng sng2(
    .clk(clk),
    .reset(reset),
    .x(weight),
    .ans(sng2out)
);
defparam sng2.seed_sng = seed2;

assign and_ans = sng1out & sng2out;

always @ (posedge clk) begin
    if(counter_reset) begin
        ans <= 0;
    end
    else begin
        if(and_ans)
            ans <= ans + 1;
    end
end



endmodule
