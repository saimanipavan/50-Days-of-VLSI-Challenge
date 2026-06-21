`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2026 11:44:27
// Design Name: 
// Module Name: PISO_Shift_reg
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


module PISO_Shift_reg(
    input clk,
    input rst_n,
    input load_en,
    input [3:0] parallel_in,
    output serial_out
    );
    reg [3:0] shift_reg;
    always @ (posedge clk or negedge rst_n) begin
        if (!rst_n)
            shift_reg <= 4'b0000;
        else if (load_en)
            shift_reg <= parallel_in;
        else
            shift_reg <= {1'b0,shift_reg[3:1]};
    end
    assign serial_out = shift_reg[0];
endmodule
