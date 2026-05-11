//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Wed Mar 18 16:32:09 2026
//Host        : BOOK-JQV0ANCMAK running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXI_ACLK_0, ASSOCIATED_RESET s_axi_aresetn_0, CLK_DOMAIN design_1_s_axi_aclk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input s_axi_aclk_0;
  input [14:0]s_axi_araddr_0;
  input [1:0]s_axi_arburst_0;
  input [3:0]s_axi_arcache_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXI_ARESETN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axi_aresetn_0;
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

  wire [14:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire axi_bram_ctrl_0_s_axi_arready;
  wire axi_bram_ctrl_0_s_axi_awready;
  wire [1:0]axi_bram_ctrl_0_s_axi_bresp;
  wire axi_bram_ctrl_0_s_axi_bvalid;
  wire [31:0]axi_bram_ctrl_0_s_axi_rdata;
  wire axi_bram_ctrl_0_s_axi_rlast;
  wire [1:0]axi_bram_ctrl_0_s_axi_rresp;
  wire axi_bram_ctrl_0_s_axi_rvalid;
  wire axi_bram_ctrl_0_s_axi_wready;
  wire s_axi_aclk_0_1;
  wire [14:0]s_axi_araddr_0_1;
  wire [1:0]s_axi_arburst_0_1;
  wire [3:0]s_axi_arcache_0_1;
  wire s_axi_aresetn_0_1;
  wire [7:0]s_axi_arlen_0_1;
  wire s_axi_arlock_0_1;
  wire [2:0]s_axi_arprot_0_1;
  wire [2:0]s_axi_arsize_0_1;
  wire s_axi_arvalid_0_1;
  wire [14:0]s_axi_awaddr_0_1;
  wire [1:0]s_axi_awburst_0_1;
  wire [3:0]s_axi_awcache_0_1;
  wire [7:0]s_axi_awlen_0_1;
  wire s_axi_awlock_0_1;
  wire [2:0]s_axi_awprot_0_1;
  wire [2:0]s_axi_awsize_0_1;
  wire s_axi_awvalid_0_1;
  wire s_axi_bready_0_1;
  wire s_axi_rready_0_1;
  wire [31:0]s_axi_wdata_0_1;
  wire s_axi_wlast_0_1;
  wire [3:0]s_axi_wstrb_0_1;
  wire s_axi_wvalid_0_1;

  assign s_axi_aclk_0_1 = s_axi_aclk_0;
  assign s_axi_araddr_0_1 = s_axi_araddr_0[14:0];
  assign s_axi_arburst_0_1 = s_axi_arburst_0[1:0];
  assign s_axi_arcache_0_1 = s_axi_arcache_0[3:0];
  assign s_axi_aresetn_0_1 = s_axi_aresetn_0;
  assign s_axi_arlen_0_1 = s_axi_arlen_0[7:0];
  assign s_axi_arlock_0_1 = s_axi_arlock_0;
  assign s_axi_arprot_0_1 = s_axi_arprot_0[2:0];
  assign s_axi_arready_0 = axi_bram_ctrl_0_s_axi_arready;
  assign s_axi_arsize_0_1 = s_axi_arsize_0[2:0];
  assign s_axi_arvalid_0_1 = s_axi_arvalid_0;
  assign s_axi_awaddr_0_1 = s_axi_awaddr_0[14:0];
  assign s_axi_awburst_0_1 = s_axi_awburst_0[1:0];
  assign s_axi_awcache_0_1 = s_axi_awcache_0[3:0];
  assign s_axi_awlen_0_1 = s_axi_awlen_0[7:0];
  assign s_axi_awlock_0_1 = s_axi_awlock_0;
  assign s_axi_awprot_0_1 = s_axi_awprot_0[2:0];
  assign s_axi_awready_0 = axi_bram_ctrl_0_s_axi_awready;
  assign s_axi_awsize_0_1 = s_axi_awsize_0[2:0];
  assign s_axi_awvalid_0_1 = s_axi_awvalid_0;
  assign s_axi_bready_0_1 = s_axi_bready_0;
  assign s_axi_bresp_0[1:0] = axi_bram_ctrl_0_s_axi_bresp;
  assign s_axi_bvalid_0 = axi_bram_ctrl_0_s_axi_bvalid;
  assign s_axi_rdata_0[31:0] = axi_bram_ctrl_0_s_axi_rdata;
  assign s_axi_rlast_0 = axi_bram_ctrl_0_s_axi_rlast;
  assign s_axi_rready_0_1 = s_axi_rready_0;
  assign s_axi_rresp_0[1:0] = axi_bram_ctrl_0_s_axi_rresp;
  assign s_axi_rvalid_0 = axi_bram_ctrl_0_s_axi_rvalid;
  assign s_axi_wdata_0_1 = s_axi_wdata_0[31:0];
  assign s_axi_wlast_0_1 = s_axi_wlast_0;
  assign s_axi_wready_0 = axi_bram_ctrl_0_s_axi_wready;
  assign s_axi_wstrb_0_1 = s_axi_wstrb_0[3:0];
  assign s_axi_wvalid_0_1 = s_axi_wvalid_0;
  design_1_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(s_axi_aclk_0_1),
        .s_axi_araddr(s_axi_araddr_0_1),
        .s_axi_arburst(s_axi_arburst_0_1),
        .s_axi_arcache(s_axi_arcache_0_1),
        .s_axi_aresetn(s_axi_aresetn_0_1),
        .s_axi_arlen(s_axi_arlen_0_1),
        .s_axi_arlock(s_axi_arlock_0_1),
        .s_axi_arprot(s_axi_arprot_0_1),
        .s_axi_arready(axi_bram_ctrl_0_s_axi_arready),
        .s_axi_arsize(s_axi_arsize_0_1),
        .s_axi_arvalid(s_axi_arvalid_0_1),
        .s_axi_awaddr(s_axi_awaddr_0_1),
        .s_axi_awburst(s_axi_awburst_0_1),
        .s_axi_awcache(s_axi_awcache_0_1),
        .s_axi_awlen(s_axi_awlen_0_1),
        .s_axi_awlock(s_axi_awlock_0_1),
        .s_axi_awprot(s_axi_awprot_0_1),
        .s_axi_awready(axi_bram_ctrl_0_s_axi_awready),
        .s_axi_awsize(s_axi_awsize_0_1),
        .s_axi_awvalid(s_axi_awvalid_0_1),
        .s_axi_bready(s_axi_bready_0_1),
        .s_axi_bresp(axi_bram_ctrl_0_s_axi_bresp),
        .s_axi_bvalid(axi_bram_ctrl_0_s_axi_bvalid),
        .s_axi_rdata(axi_bram_ctrl_0_s_axi_rdata),
        .s_axi_rlast(axi_bram_ctrl_0_s_axi_rlast),
        .s_axi_rready(s_axi_rready_0_1),
        .s_axi_rresp(axi_bram_ctrl_0_s_axi_rresp),
        .s_axi_rvalid(axi_bram_ctrl_0_s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata_0_1),
        .s_axi_wlast(s_axi_wlast_0_1),
        .s_axi_wready(axi_bram_ctrl_0_s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb_0_1),
        .s_axi_wvalid(s_axi_wvalid_0_1));
  design_1_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE));
endmodule
