`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2025 11:14:09
// Design Name: 
// Module Name: axi_config
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


module axi_config(
    output [7:0] awlen, arlen,
    output [2:0] awsize, awprot, arsize, arprot,
    output [3:0] awcache, wstrb, arcache,
    output [1:0] awburst, arburst,
    output awock, arlock
    );
    
        // AXI4-Lite configuration (single beat transactions)
    assign awlen = 8'd0;
    assign awsize = 3'b010;  // 4 bytes
    assign awburst = 2'b00;
    assign awlock = 1'b0;
    assign awcache = 4'b0;
    assign awprot = 3'b0;
    
    assign wstrb = 4'b1111;  // All bytes valid
    
    assign arlen = 8'd0;
    assign arsize = 3'b010;  // 4 bytes
    assign arburst = 2'b00;
    assign arlock = 1'b0;
    assign arcache = 4'b0;
    assign arprot = 3'b0;
    
endmodule
