module blinky (
    output out,
    input clk
);

reg [31:0] clockCounter = 0; //32 bit counter

always @(posedge clk) begin
    clockCounter <= clockCounter + 1;
end

assign out = clockCounter[24]; // 2^24@27MHZ ~0.6 sec

endmodule