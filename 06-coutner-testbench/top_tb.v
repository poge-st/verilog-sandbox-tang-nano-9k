/*
-Project: counter-testbench
-Author: poge-st
-Created: 2024.03.27
-Board: Tang Nano 9k
-Description:
testbench for counter (top.v)
commands to run testbench:
    iverilog -o top.vvp top_tb.v 
    vvp top.vvp
    gtkwave top.vcd 

gtkwave can be skipped if signals are viewed in vscode with extension: WaveTrace
*/
`timescale 1us/1us
`include "top.v"

module top_tb ();

reg clk;
wire [5:0] led;

top cnt0 (clk, led);

initial
    begin        
        clk = 0;
        $dumpfile("top.vcd");
        $dumpvars(0,top_tb);
        #20
        $finish;
    end

always #1 clk = ~clk;
    
endmodule