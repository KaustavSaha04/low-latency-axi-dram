`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2025 01:33:56
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

  reg aclk, aresetn;

  //WRITE ADDRESS CHANNEL 
  reg [14:0] awaddr;
  reg [1:0] awburst; //useless
  reg [3:0] awcache; //useless
  reg [7:0] awlen;   //useless
  reg awlock;        //useless
  reg [2:0] awprot;  //useless
  wire awready;
  reg [2:0] awsize;  //useless
  reg awvalid;
  
  //WRITE DATA CHANNEL
  reg [31:0] wdata;
  reg wlast;
  wire wready;
  reg [3:0] wstrb; //useless
  reg wvalid;
  
  //WRITE RESPONSE CHANNEL  
  reg bready;
  wire [1:0] bresp;  //useless
  wire bvalid;
  
  //READ ADDRESS CHANNEL
  reg [14:0] araddr;
  reg [1:0] arburst;
  reg [3:0] arcache;
  reg [7:0] arlen;
  reg arlock;
  reg [2:0] arprot;
  wire arready;
  reg [2:0] arsize;
  reg arvalid;  
  
  //READ DATA CHANNEL
  wire [31:0] rdata;
  wire rlast;  //useless
  reg rready;  //useless
  wire [1:0] rresp;
  wire rvalid;
  
  //Module instantiation 
  design_1_wrapper dut ( 
    .s_axi_aclk_0(aclk),
    .s_axi_araddr_0(araddr),
    .s_axi_arburst_0(arburst),
    .s_axi_arcache_0(arcache),
    .s_axi_aresetn_0(aresetn),
    .s_axi_arlen_0(arlen),
    .s_axi_arlock_0(arlock),
    .s_axi_arprot_0(arprot),
    .s_axi_arready_0(arready),
    .s_axi_arsize_0(arsize),
    .s_axi_arvalid_0(arvalid),
    .s_axi_awaddr_0(awaddr),
    .s_axi_awburst_0(awburst),
    .s_axi_awcache_0(awcache),
    .s_axi_awlen_0(awlen),
    .s_axi_awlock_0(awlock),
    .s_axi_awprot_0(awprot),
    .s_axi_awready_0(awready),
    .s_axi_awsize_0(awsize),
    .s_axi_awvalid_0(awvalid),
    .s_axi_bready_0(bready),
    .s_axi_bresp_0(bresp),
    .s_axi_bvalid_0(bvalid),
    .s_axi_rdata_0(rdata),
    .s_axi_rlast_0(rlast),
    .s_axi_rready_0(rready),
    .s_axi_rresp_0(rresp),
    .s_axi_rvalid_0(rvalid),
    .s_axi_wdata_0(wdata),
    .s_axi_wlast_0(wlast),
    .s_axi_wready_0(wready),
    .s_axi_wstrb_0(wstrb),
    .s_axi_wvalid_0(wvalid)
  );
  
  //Assigning values to useless signals 
  initial begin 
    awburst <= 0;
    awlen <= 0;
    awprot <= 0;
    awlock <= 0;
    awcache <= 0;
    awsize <= 3'b010;
    
    wstrb <= 4'b1111;
    
    arburst <= 2'b00;
    arlen <= 0;
    arprot <= 0;
    arlock <= 0;
    arcache <= 0;
    arsize <= 3'b010;
    
    aclk <= 0;
    aresetn <= 1;     
  end
  
  //Clock generation 
  always #5 aclk <= ~aclk;
   
  
  //Process (test case)-> writes to a SINGLE LOCATION AND READS FROM THERE
  initial begin 
   aresetn = 0;
   #12;
   aresetn = 1;
   @(posedge aclk);

   
   //write to addr 0 (latency = 2 cycles) (WDATA -> AW -> BRESP)
    wdata = 32'h12345671;
    awaddr = 15'd0;
    awvalid = 1;
    wvalid = 1;
    wlast = 1;
    bready = 1;
    //pipeline (wstage, awsateg, bstage)
//    @(posedge aclk); //w0 done
//    wdata = 32'h1234562; //pushed data2 in wstage
//    @(posedge aclk); //aw0 done, w1 done
//    wdata = 32'h1234567a; //pushed data3 in wstage 
//    awaddr = 15'd4;       //pushed addr2 awaddr 
//   @(posedge aclk); //observe the bresp of packet1, awaddr of packet 2 and wdata of packet 3
//   wdata = 32'h1234567b;
//   awaddr = 15'd8;
//   @(posedge aclk);
      #100;
    $finish;
end

//    wait(wready);
//    @(posedge aclk);    
  
//    wait(awready);
//    @(posedge aclk);
//    awvalid <= 0;
                
    //wait(bvalid); //Skipping the response check here we will do this only at the end
    //@(posedge aclk);

//    //write to addr 1 (latency = 2 cycles)
//    wdata <= 32'h12345679;
//    awaddr <= 15'd4;
//    awvalid <= 1;
//    wvalid <= 1;
    
//    wait(wready);
//    @(posedge aclk);
//    wvalid <= 0;
    
//    wait(awready);
//    @(posedge aclk);
//    awvalid <= 0;
    
//    //write to addr 2 (latency = 2 cycles)
//    wdata <= 32'h1234567A;
//    awaddr <= 15'd8;
//    awvalid <= 1;
//    wvalid <= 1;
    
//    wait(wready);
//    @(posedge aclk);
//    wvalid <= 0;
    
//    wait(awready);
//    @(posedge aclk);
//    awvalid <= 0;
    
//    //write to addr 3 (latency = 2 cycles)
//    wdata <= 32'h1234567B;
//    awaddr <= 15'd12;
//    awvalid <= 1;
//    wvalid <= 1;
    
//    wait(wready);
//    @(posedge aclk);
//    wvalid <= 0;
    
//    wait(awready);
//    @(posedge aclk);
//    awvalid <= 0;
    

    
//   // wait(bvalid);
//   // @(posedge aclk);
//    bready <= 0;
//    wlast <= 0;
    
//    //read from address 0  (latency = 4cycles)
//    araddr <= 15'd0;
//    arvalid <= 1;
//    rready <= 1;
    
//    wait(arready);
//    @(posedge aclk);
//    arvalid <= 0;
    
//    wait(rvalid);
//    @(posedge aclk);
    
//    //read from address 1 (latency = 4 cycles)
//    araddr <= 15'd4;
//    arvalid <= 1;
    
//    wait(arready);
//    @(posedge aclk);
//    arvalid <= 0;
    
//    wait(rvalid);
//    @(posedge aclk);
    
//    //read from address 2 (latency = 4 cycles)
//    araddr <= 15'd8;
//    arvalid <= 1;
    
//    wait(arready);
//    @(posedge aclk);
//    arvalid <= 0;
    
//    wait(rvalid);
//    @(posedge aclk);
    
//    //read from address 3 (latency = 4 cycles)
//    araddr <= 15'd12;
//    arvalid <= 1;
    
//    wait(arready);
//    @(posedge aclk);
//    arvalid <= 0;
    
//    wait(rvalid);
//    @(posedge aclk);    
//    rready <= 0;
   endmodule
