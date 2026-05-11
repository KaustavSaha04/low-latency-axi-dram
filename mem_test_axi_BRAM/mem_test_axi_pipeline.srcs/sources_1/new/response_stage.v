`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2025 16:09:39
// Design Name: 
// Module Name: response_stage
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


module response_stage(
    input [31:0] wr_data,
    input [14:0] wr_addr,
    input rst,
    input bvalid,
    input stall_i,
    
    output reg err, bready
    );
    
    always @(*) begin 
        if(!rst) begin //active low synchronous reset 
            err = 0;
            bready = 1;
        end
        else begin 
            if(stall_i) begin 
               err = 0;
               bready = 0;
            end
            else begin 
                if(bvalid) begin 
                err = 0;
                bready = 1;
                end
                else begin 
                err = 1;
                bready = 0; //need to look 
                end
            end
            end
        end    
endmodule

