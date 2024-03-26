/*
-Project: counter
-Author: poge-st
-Created: 2024.03.26
-Board: Tang Nano 9k
-Description:
simple counter with 6 bit led output
*/

module top
(
    input clk,
    output [5:0] led
);

//localparam WAIT_TIME = 1; //for debugging
localparam WAIT_TIME = 13500000;
reg [5:0] ledCounter = 0;
reg [23:0] clockCounter = 0;

always @(posedge clk) begin
    clockCounter <= clockCounter + 1;
    if (clockCounter == WAIT_TIME) begin
        clockCounter <= 0;
        ledCounter <= ledCounter + 1;
    end
end

assign led = ~ledCounter;
endmodule