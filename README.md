# verilog-sandbox-tang-nano-9k

Collection of simple FPGA example designs for tang nano 9k.
The provided examples are using Verilog.


## FPGA toolchain with Verilog
for development (coding, design and build):
- install [Visual studio Code](https://code.visualstudio.com/)
- install [Yosys oss-cad-suite](https://github.com/YosysHQ/oss-cad-suite-build)
- install Vistual Studio Code Addons
    - [Lushay Code](https://marketplace.visualstudio.com/items?itemName=lushay-labs.lushay-code)
    - [Verilog-HDL/SystemVerilog/Bluespec SystemVerilog](https://marketplace.visualstudio.com/items?itemName=mshr-h.VerilogHDL)

for simulation:
- install [icarus iverilog](https://bleyer.org/icarus/) + GTKWave (included in same package)
- install Visual Studio Code Addon: [WaveTrace](https://marketplace.visualstudio.com/items?itemName=wavetrace.wavetrace) - optional if you want to view simulation results directly in VSCode

## Examples

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
    iverilog -o top.vvp top_tb.v 
    vvp top.vvp
    gtkwave top.vcd 

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