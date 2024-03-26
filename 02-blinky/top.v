/*
-Project: blinky
-Author: poge-st
-Created: 2024.03.26
-Board: Tang Nano 9k
-Description:
simple blinky design whih the help of a 32bit long counter
*/

module top (
    output [5:0] led,
    input clk
);

reg [31:0] clockCounter = 0; //32 bit counter


always @(posedge clk) begin
    clockCounter <= clockCounter + 1;
end

//assign led[0] = clockCounter[0];  // 2^24@27MHZ ~ 37n sec - for debugging 
//assign led[0] = clockCounter[22]; // 2^22@27MHZ ~ 0.15 sec
//assign led[0] = clockCounter[23]; // 2^23@27MHZ ~ 0.31 sec
assign led[0] = clockCounter[24];   // 2^24@27MHZ ~ 0.62 sec
assign led[5:1] = 5'b11111;         // led 5:1 - off 

endmodule