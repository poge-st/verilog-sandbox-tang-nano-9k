/*
-Project: blinky
-Author: poge-st
-Created: 2024.03.26
-Board: Tang Nano 9k
-Description:
basic debounce algorithm with 2 8 bit counters
pin information:
Y - LED[0]
A - btn1
*/

module top (
    output Y,
    input clk,
    input A
);

reg [7:0] counter_pos;
reg [7:0] counter_neg;
reg [0:0] State = 1;

localparam DEBOUNCE_TIME = 3;

reg out_state;

always @(posedge CLK) begin
    if (A == 1) begin
        counter_pos = counter_pos + 1;
        counter_neg = 0;
    end
    else begin
        counter_pos = 0;
        counter_neg = counter_neg + 1;
    end

    if (counter_pos > DEBOUNCE_TIME) begin
        out_state = 1;
        counter_pos = DEBOUNCE_TIME;
    end
    
    if (counter_neg > DEBOUNCE_TIME) begin
        out_state = 0;
        counter_neg = DEBOUNCE_TIME;
    end
end

assign Y = out_state;

endmodule