// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2.1 (lin64) Build 1957588 Wed Aug  9 16:32:10 MDT 2017
// Date        : Sat Nov 24 17:28:46 2018
// Host        : ccblincad04.ece.gatech.edu running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /nethome/ahimanshu3/DSP_Project/team_10_codes_CDR/Vga_projrct/project_1/project_1.srcs/sources_1/bd/clk_25/ip/clk_25_clk_wiz_0_0/clk_25_clk_wiz_0_0_stub.v
// Design      : clk_25_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_25_clk_wiz_0_0(clk_out1, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,clk_in1" */;
  output clk_out1;
  input clk_in1;
endmodule
