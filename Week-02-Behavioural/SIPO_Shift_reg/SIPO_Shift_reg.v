`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2026 11:41:30
// Design Name: 
// Module Name: SIPO_Shift_reg
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


module SIPO_Shift_reg(
    input clk,
    input rst_n,
    input serial_in,
    output [3:0] parallel_out
    );
    reg [3:0] shift_reg;
    always @ (posedge clk or negedge rst_n) begin
        if (!rst_n)
            shift_reg <= 4'b0000;
        else
            shift_reg <= {serial_in,shift_reg[3:1]};
    end
    assign parallel_out = shift_reg;
endmodule
