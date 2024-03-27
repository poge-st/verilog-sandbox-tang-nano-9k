/*
-Project: counter-testbench
-Author: poge-st
-Created: 2024.03.27
-Board: Tang Nano 9k
-Description:
testbench for counter (top.v)
commands to run testbench:
    iverilog -o top_tb.vvp top_tb.v 
    vvp top_tb.vvp
    gtkwave counter.vcd 

gtkwave can be skipped if signals are viewed in vscode with extension: WaveTrace
*/
`include "top.v"

module top_tb ();

reg clk;
wire [5:0] led;

initial clk = 0;

top cnt0 (clk, led);

initial
    begin        
        $dumpfile("top_tb.vcd");
        $dumpvars(0,top_tb);
        #20
        $finish;
    end

always
    #1  clk = ~clk;
    
endmodule