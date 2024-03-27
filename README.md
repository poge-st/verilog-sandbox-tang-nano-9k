# verilog-sandbox-tang-nano-9k

Collection of simple FPGA example designs for tang nano 9k.
The provided examples are using Verilog.

### 01-counter
Simple counter with is output to the 6 available leds of the tang nano 9k.

### 02-blinky
Simple blinky design whih the help of a 32bit long counter.

### 03-btn-led
Read input btn1 and output it to led[0].

### 04-debounce
Basic debounce algorithm with 2*8-bit counters.

### 05-blinky-pll
Usage of the tang nano 9k pll, 2 parallel blinky instances are used with different clocks.

### 06-counter-testbench
testbench for counter (top.v)
commands to run testbench:
- iverilog -o top_tb.vvp top_tb.v 
- vvp top_tb.vvp
- gtkwave counter.vcd 
gtkwave can be skipped if signals are viewed in vscode with extension: WaveTrace

## Board overview 

|Board name		|Series	|Device		|
|---------------|-------|-----------|
|Tang Nano		|GW1N	|GW1N-1		|
|Tang Nano 1K	|GW1NZ	|GW1NZ-1	|
|Tang Nano 4K	|GW1NSR	|GW1NSR-4C	|
|Tang Nano 9K	|GW1NR	|GW1NR-9C	|
|Tang Nano 20K	|GW2AR	|GW2AR-18C	|
|Tang Primer 20K|GW2A	|GW2A-18C	|

## Links
More information find at [tech-hobbyist.com](https://www.tech-hobbyist.com/).