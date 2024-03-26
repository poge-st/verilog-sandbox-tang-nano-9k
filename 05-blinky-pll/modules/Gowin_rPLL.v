// GOWIN FPGA PLL Calculator: https://juj.github.io/gowin_fpga_code_generators/pll_calculator.html

module Gowin_rPLL (clkout, clkoutp, clkin);

output clkout;
output clkoutp;
input clkin;

wire lock_o;
wire clkoutd_o;
wire clkoutd3_o;
wire gw_vcc;
wire gw_gnd;

assign gw_vcc = 1'b1;
assign gw_gnd = 1'b0;

rPLL rpll_inst (
    .CLKOUT(clkout),
    .LOCK(lock_o),
    .CLKOUTP(clkoutp),
    .CLKOUTD(clkoutd_o),
    .CLKOUTD3(clkoutd3_o),
    .RESET(gw_gnd),
    .RESET_P(gw_gnd),
    .CLKIN(clkin),
    .CLKFB(gw_gnd),
    .FBDSEL({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd}),
    .IDSEL({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd}),
    .ODSEL({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd}),
    .PSDA({gw_gnd,gw_gnd,gw_gnd,gw_gnd}),
    .DUTYDA({gw_gnd,gw_gnd,gw_gnd,gw_gnd}),
    .FDLY({gw_vcc,gw_vcc,gw_vcc,gw_vcc})
);

defparam rpll_inst.FCLKIN = "27";
defparam rpll_inst.DYN_IDIV_SEL = "false";
// 81 Mhz, LATENCY=3
//defparam rpll_inst.IDIV_SEL = 0;       
//defparam rpll_inst.FBDIV_SEL = 2;
//defparam rpll_inst.ODIV_SEL = 8;

// 102 MHz
defparam rpll_inst.IDIV_SEL = 8;
defparam rpll_inst.FBDIV_SEL = 33;
defparam rpll_inst.ODIV_SEL = 8;

// Other possible clock speed:
// 51 Mhz
//defparam rpll_inst.IDIV_SEL = 8;
//defparam rpll_inst.FBDIV_SEL = 16;
//defparam rpll_inst.ODIV_SEL = 8;

// 74.25 Mhz, 720p pixel clock
//defparam rpll_inst.IDIV_SEL = 3;
//defparam rpll_inst.FBDIV_SEL = 10;
//defparam rpll_inst.ODIV_SEL = 8;

// 11 Mhz
//defparam rpll_inst.IDIV_SEL = 7;
//defparam rpll_inst.FBDIV_SEL = 2;
//defparam rpll_inst.ODIV_SEL = 48;

// 40.5MHz 
//defparam rpll_inst.IDIV_SEL = 1;
//defparam rpll_inst.FBDIV_SEL = 2;
//defparam rpll_inst.ODIV_SEL = 16;

// 150 MHz
//defparam rpll_inst.IDIV_SEL = 8;
//defparam rpll_inst.FBDIV_SEL = 49;
//defparam rpll_inst.ODIV_SEL = 4;

// 66 MHz
//defparam rpll_inst.IDIV_SEL = 8;
//defparam rpll_inst.FBDIV_SEL = 21;
//defparam rpll_inst.ODIV_SEL = 8;

// 75 MHz
//defparam rpll_inst.IDIV_SEL = 8;
//defparam rpll_inst.FBDIV_SEL = 24;
//defparam rpll_inst.ODIV_SEL = 8;

// 24 MHz
//defparam rpll_inst.IDIV_SEL = 8;
//defparam rpll_inst.FBDIV_SEL = 7;
//defparam rpll_inst.ODIV_SEL = 32;

// 120 MHz
//defparam rpll_inst.IDIV_SEL = 8;
//defparam rpll_inst.FBDIV_SEL = 39;
//defparam rpll_inst.ODIV_SEL = 4;

// 60 MHz
//defparam rpll_inst.IDIV_SEL = 8;
//defparam rpll_inst.FBDIV_SEL = 19;
//defparam rpll_inst.ODIV_SEL = 8;


defparam rpll_inst.DYN_FBDIV_SEL = "false";
defparam rpll_inst.DYN_ODIV_SEL = "false";
defparam rpll_inst.PSDA_SEL = "0100";
defparam rpll_inst.DYN_DA_EN = "false";
defparam rpll_inst.DUTYDA_SEL = "1000";
defparam rpll_inst.CLKOUT_FT_DIR = 1'b1;
defparam rpll_inst.CLKOUTP_FT_DIR = 1'b1;
defparam rpll_inst.CLKOUT_DLY_STEP = 0;
defparam rpll_inst.CLKOUTP_DLY_STEP = 0;
defparam rpll_inst.CLKFB_SEL = "internal";
defparam rpll_inst.CLKOUT_BYPASS = "false";
defparam rpll_inst.CLKOUTP_BYPASS = "false";
defparam rpll_inst.CLKOUTD_BYPASS = "false";
defparam rpll_inst.DYN_SDIV_SEL = 2;
defparam rpll_inst.CLKOUTD_SRC = "CLKOUT";
defparam rpll_inst.CLKOUTD3_SRC = "CLKOUT";
defparam rpll_inst.DEVICE = "GW1NR-9C";

endmodule //Gowin_rPLL
