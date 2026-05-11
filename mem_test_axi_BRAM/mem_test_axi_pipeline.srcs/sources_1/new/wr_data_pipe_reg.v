module wr_data_pipe_reg (
    input [31:0] wr_data,
    input clk,rst, en,
    output reg [31:0] data
);

    always @(posedge clk) begin 
        if(!rst)  //active low, synchronous clk
            data <= 0;
        else begin 
            if(en)
                data <= wr_data;
            else 
                data <= 0;
        end
    end

endmodule