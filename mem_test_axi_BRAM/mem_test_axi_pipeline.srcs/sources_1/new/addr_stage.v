`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2025 16:09:39
// Design Name: 
// Module Name: addr_stage
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


module addr_stage(
    input [31:0] wr_data,  //already validated data by handshake from data stage
    input [14:0] wr_addr,  //yet to be validated
    input rst,
    input awready, //from axi slave
    input stall_i,
    
    output reg [31:0] data,
    output reg [14:0] addr,
    output reg wr_stall, err, awvalid,
    output pipe_en
    );
    
    assign pipe_en = ~wr_stall;
    
    always @(*) begin 
        if(!rst) begin //active low synchronous reset 
            wr_stall = 0;
            data = 0;
            addr = 0;
            err = 0;
            awvalid = 1;
        end
        else begin 
            if(stall_i) begin 
               data = 0;
               addr = 0;
               wr_stall = 1;
               err = 0;
               awvalid = 0;
            end
            else begin 
                if(awready) begin 
                data = wr_data;
                addr = wr_addr;
                wr_stall = 0;
                err = 0;
                awvalid = 1;
                end
                else begin 
                data = 0;
                addr = 0;
                wr_stall = 1;
                err = 1;
                awvalid = 0; // need to look 
                end
            end
            end
        end    
endmodule
