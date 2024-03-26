/*
-Project: blinky-pll
-Author: poge-st
-Created: 2024.03.26
-Board: Tang Nano 9k
-Description:
usage of the tang nano 9k pll, 2 blinky instances are used with different clocks
*/


module top (
    output [1:0] led,
    input clk
);

wire led1;
wire led2;

wire fastclk;
wire fastclkp;

Gowin_rPLL pll (fastclk,fastclkp,clk);

blinky b1 (led1, clk);
blinky b2 (led2, fastclk);

assign led[0] = led1;
assign led[1] =  ~led2;

endmodule