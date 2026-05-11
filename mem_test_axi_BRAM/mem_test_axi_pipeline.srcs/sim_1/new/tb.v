`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2025 11:30:41
// Design Name: 
// Module Name: tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb();

  wire err_0;
  wire err_1;
  wire err_2;
  wire arready;
  wire wr_stall_0;
  wire wr_stall_1;
  wire wr_stall_2;
  wire [1:0]bresp;
  wire [31:0]rdata;
  wire rlast;
  wire [1:0]rresp;
  wire rvalid;
  
  reg wlast;
  reg [3:0]wstrb;
  reg rready;
  reg aclk;
  reg [14:0]araddr;
  reg [1:0]arburst;
  reg [3:0]arcache;
  reg aresetn;
  reg [7:0]arlen;
  reg arlock;
  reg [2:0]arprot;
  reg [2:0]arsize;
  reg arvalid;
  reg [1:0]awburst;
  reg [3:0]awcache;
  reg [7:0]awlen;
  reg awlock;
  reg [2:0]awprot;
  reg [2:0]awsize;
  
    design_1_wrapper dut (
    // Outputs from DUT
    .err_0         (err_0),
    .err_1         (err_1),
    .err_2         (err_2),

    .s_axi_arready_0 (arready),
    .s_axi_bresp_0   (bresp),
    .s_axi_rdata_0   (rdata),
    .s_axi_rlast_0   (rlast),
    .s_axi_rresp_0   (rresp),
    .s_axi_rvalid_0  (rvalid),

    .wr_stall_0      (wr_stall_0),
    .wr_stall_1      (wr_stall_1),
    .wr_stall_2      (wr_stall_2),

    // Inputs to DUT
    .s_axi_aclk_0     (aclk),
    .s_axi_aresetn_0  (aresetn),

    .s_axi_araddr_0   (araddr),
    .s_axi_arburst_0  (arburst),
    .s_axi_arcache_0  (arcache),
    .s_axi_arlen_0    (arlen),
    .s_axi_arlock_0   (arlock),
    .s_axi_arprot_0   (arprot),
    .s_axi_arsize_0   (arsize),
    .s_axi_arvalid_0  (arvalid),

    .s_axi_awburst_0  (awburst),
    .s_axi_awcache_0  (awcache),
    .s_axi_awlen_0    (awlen),
    .s_axi_awlock_0   (awlock),
    .s_axi_awprot_0   (awprot),
    .s_axi_awsize_0   (awsize),

    .s_axi_wlast_0    (wlast),
    .s_axi_wstrb_0    (wstrb),

    .s_axi_rready_0   (rready)
  );
  
  initial begin 
    // AXI4-Lite configuration (single beat transactions)
     awlen = 8'd0;
     awsize = 3'b010;  // 4 bytes
     awburst = 2'b00;
     awlock = 1'b0;
     awcache = 4'b0;
     awprot = 3'b0;
    
     wstrb = 4'b1111;  // All bytes valid    
     arlen = 8'd0;
     arsize = 3'b010;  // 4 bytes
     arburst = 2'b00;
     arlock = 1'b0;
     arcache = 4'b0;
     arprot = 3'b0;
     
     wlast = 1;
  end
  
  //clock process
  initial begin 
    aclk = 0;
    aresetn = 0;
    #12;
    aresetn = 1;
  end
  
  always #5 aclk = ~aclk;

endmodule
