`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2026 12:41:48
// Design Name: 
// Module Name: Mod_n_UP_DOWN_COUNTER_Syn
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


module Mod_n_UP_DOWN_COUNTER_Syn#(
    parameter N = 10,
    parameter Data_Width = 4
    )(
    input clk,
    input rst_n,
    input UP_DOWN,
    output reg [Data_Width-1:0] out
    );
    always @ (posedge clk or negedge rst_n) begin
        if (!rst_n)
            out <= {Data_Width{1'b0}};
        else begin
            if (UP_DOWN == 1'b1) begin
                if (out >= N - 1'b1)
                    out <= {Data_Width{1'b0}};
                else
                    out <= out +1'b1;
            end
            else if (UP_DOWN == 1'b0) begin
                if (out == {Data_Width{1'b0}})
                    out <= N - 1'b1;
                else
                    out <= out - 1'b1;
            end
            else
                out <= out;
        end
    end
endmodule
