`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2026 11:44:55
// Design Name: 
// Module Name: PIPO_Shift_reg
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


module PIPO_Shift_reg(
    input clk,
    input rst_n,
    input load_en,
    input [3:0]parallel_in,
    output [3:0]parallel_out
    );
    reg [3:0] shift_reg;
    always @ (posedge clk or negedge rst_n) begin
        if (!rst_n)
            shift_reg <= 4'b0000;
        else if (load_en)
            shift_reg <= parallel_in;
        else
            shift_reg <= shift_reg;
    end
    assign parallel_out = shift_reg;
endmodule
