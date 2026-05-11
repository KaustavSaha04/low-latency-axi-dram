//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Wed Mar 18 16:32:09 2026
//Host        : BOOK-JQV0ANCMAK running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (s_axi_aclk_0,
    s_axi_araddr_0,
    s_axi_arburst_0,
    s_axi_arcache_0,
    s_axi_aresetn_0,
    s_axi_arlen_0,
    s_axi_arlock_0,
    s_axi_arprot_0,
    s_axi_arready_0,
    s_axi_arsize_0,
    s_axi_arvalid_0,
    s_axi_awaddr_0,
    s_axi_awburst_0,
    s_axi_awcache_0,
    s_axi_awlen_0,
    s_axi_awlock_0,
    s_axi_awprot_0,
    s_axi_awready_0,
    s_axi_awsize_0,
    s_axi_awvalid_0,
    s_axi_bready_0,
    s_axi_bresp_0,
    s_axi_bvalid_0,
    s_axi_rdata_0,
    s_axi_rlast_0,
    s_axi_rready_0,
    s_axi_rresp_0,
    s_axi_rvalid_0,
    s_axi_wdata_0,
    s_axi_wlast_0,
    s_axi_wready_0,
    s_axi_wstrb_0,
    s_axi_wvalid_0);
  input s_axi_aclk_0;
  input [14:0]s_axi_araddr_0;
  input [1:0]s_axi_arburst_0;
  input [3:0]s_axi_arcache_0;
  input s_axi_aresetn_0;
  input [7:0]s_axi_arlen_0;
  input s_axi_arlock_0;
  input [2:0]s_axi_arprot_0;
  output s_axi_arready_0;
  input [2:0]s_axi_arsize_0;
  input s_axi_arvalid_0;
  input [14:0]s_axi_awaddr_0;
  input [1:0]s_axi_awburst_0;
  input [3:0]s_axi_awcache_0;
  input [7:0]s_axi_awlen_0;
  input s_axi_awlock_0;
  input [2:0]s_axi_awprot_0;
  output s_axi_awready_0;
  input [2:0]s_axi_awsize_0;
  input s_axi_awvalid_0;
  input s_axi_bready_0;
  output [1:0]s_axi_bresp_0;
  output s_axi_bvalid_0;
  output [31:0]s_axi_rdata_0;
  output s_axi_rlast_0;
  input s_axi_rready_0;
  output [1:0]s_axi_rresp_0;
  output s_axi_rvalid_0;
  input [31:0]s_axi_wdata_0;
  input s_axi_wlast_0;
  output s_axi_wready_0;
  input [3:0]s_axi_wstrb_0;
  input s_axi_wvalid_0;

  wire s_axi_aclk_0;
  wire [14:0]s_axi_araddr_0;
  wire [1:0]s_axi_arburst_0;
  wire [3:0]s_axi_arcache_0;
  wire s_axi_aresetn_0;
  wire [7:0]s_axi_arlen_0;
  wire s_axi_arlock_0;
  wire [2:0]s_axi_arprot_0;
  wire s_axi_arready_0;
  wire [2:0]s_axi_arsize_0;
  wire s_axi_arvalid_0;
  wire [14:0]s_axi_awaddr_0;
  wire [1:0]s_axi_awburst_0;
  wire [3:0]s_axi_awcache_0;
  wire [7:0]s_axi_awlen_0;
  wire s_axi_awlock_0;
  wire [2:0]s_axi_awprot_0;
  wire s_axi_awready_0;
  wire [2:0]s_axi_awsize_0;
  wire s_axi_awvalid_0;
  wire s_axi_bready_0;
  wire [1:0]s_axi_bresp_0;
  wire s_axi_bvalid_0;
  wire [31:0]s_axi_rdata_0;
  wire s_axi_rlast_0;
  wire s_axi_rready_0;
  wire [1:0]s_axi_rresp_0;
  wire s_axi_rvalid_0;
  wire [31:0]s_axi_wdata_0;
  wire s_axi_wlast_0;
  wire s_axi_wready_0;
  wire [3:0]s_axi_wstrb_0;
  wire s_axi_wvalid_0;

  design_1 design_1_i
       (.s_axi_aclk_0(s_axi_aclk_0),
        .s_axi_araddr_0(s_axi_araddr_0),
        .s_axi_arburst_0(s_axi_arburst_0),
        .s_axi_arcache_0(s_axi_arcache_0),
        .s_axi_aresetn_0(s_axi_aresetn_0),
        .s_axi_arlen_0(s_axi_arlen_0),
        .s_axi_arlock_0(s_axi_arlock_0),
        .s_axi_arprot_0(s_axi_arprot_0),
        .s_axi_arready_0(s_axi_arready_0),
        .s_axi_arsize_0(s_axi_arsize_0),
        .s_axi_arvalid_0(s_axi_arvalid_0),
        .s_axi_awaddr_0(s_axi_awaddr_0),
        .s_axi_awburst_0(s_axi_awburst_0),
        .s_axi_awcache_0(s_axi_awcache_0),
        .s_axi_awlen_0(s_axi_awlen_0),
        .s_axi_awlock_0(s_axi_awlock_0),
        .s_axi_awprot_0(s_axi_awprot_0),
        .s_axi_awready_0(s_axi_awready_0),
        .s_axi_awsize_0(s_axi_awsize_0),
        .s_axi_awvalid_0(s_axi_awvalid_0),
        .s_axi_bready_0(s_axi_bready_0),
        .s_axi_bresp_0(s_axi_bresp_0),
        .s_axi_bvalid_0(s_axi_bvalid_0),
        .s_axi_rdata_0(s_axi_rdata_0),
        .s_axi_rlast_0(s_axi_rlast_0),
        .s_axi_rready_0(s_axi_rready_0),
        .s_axi_rresp_0(s_axi_rresp_0),
        .s_axi_rvalid_0(s_axi_rvalid_0),
        .s_axi_wdata_0(s_axi_wdata_0),
        .s_axi_wlast_0(s_axi_wlast_0),
        .s_axi_wready_0(s_axi_wready_0),
        .s_axi_wstrb_0(s_axi_wstrb_0),
        .s_axi_wvalid_0(s_axi_wvalid_0));
endmodule
