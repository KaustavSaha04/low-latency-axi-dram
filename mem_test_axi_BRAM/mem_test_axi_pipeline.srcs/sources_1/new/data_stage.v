`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2025 16:08:38
// Design Name: 
// Module Name: data_stage
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


module data_stage(
    input rst, wready,
    output reg [31:0] wr_data,
    output reg [14:0] wr_addr,
    output reg wr_stall, err, wvalid,
    output  pipe_en
    );
    
    reg [3:0] counter = 0;
    assign pipe_en = ~wr_stall;
    
    always @(*)
    begin 
        if(!rst) begin  //active low, synchronous reset 
            counter = 0;
            wr_stall = 0;
            wr_data = 0;
            wr_addr = 0;
            err = 0;
            wvalid = 1;
        end
        else begin
            if(counter == 15) begin 
                counter = 15;
                wr_stall = 1'b1; //stall if all 16 writes are done
                wvalid = 0;
                wr_data = 0;
                wr_addr = 0;
                err = 0;
            end
            else begin 
                if(wready) begin 
                wr_data = {8{counter}};
                wr_addr = {11'd0,counter} << 2;
                wr_stall = 0;
                wvalid = 1;
                err = 0;
                counter = counter + 1;
                end
                else begin 
                    counter = 0;
                    wr_stall = 1; //stall if wready didnt come this is not an expected behaviour
                    wvalid = 0; //keeping it 0, need to look at this later
                    wr_data = 0;
                    wr_addr = 0;
                    err = 1;
                end
            end
        end
    end
endmodule
