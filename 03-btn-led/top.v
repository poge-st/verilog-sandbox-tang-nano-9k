/*
-Project: btn-led
-Author: poge-st
-Created: 2024.03.26
-Board: Tang Nano 9k
-Description:
read input btn1 and output it
*/

module top (
    output [5:0] led,
    input btn1  
);
    assign led[5:1] = 31;
    assign led[0] = btn1;
endmodule