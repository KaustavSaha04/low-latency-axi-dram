module stall_reg (
    input stall_i,
    input clk,rst, en,
    output reg stall
);

    always @(posedge clk) begin 
        if(!rst)  //active low, synchronous clk
            stall <= 0;
        else begin 
            if(en)
                stall <= stall_i;
            else 
                stall <= 0;
        end
    end

endmodule