module wr_addr_pipe_reg (
    input [14:0] wr_addr,
    input clk,rst, en,
    output reg [14:0] addr
);

    always @(posedge clk) begin 
        if(!rst)  //active low, synchronous clk
            addr <= 0;
        else begin 
            if(en)
                addr <= wr_addr;
            else 
                addr <= 0;
        end
    end

endmodule