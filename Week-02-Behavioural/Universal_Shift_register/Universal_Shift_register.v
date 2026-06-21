`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2026 16:09:04
// Design Name: 
// Module Name: Universal_Shift_register
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


module Universal_Shift_register(
    input clk,
    input rst_n,
    input [1:0] ctrl,
    input [3:0] parallel_in,
    input serial_left_in,
    input serial_right_in,
    output [3:0] parallel_out
    );
    reg [3:0] shift_reg;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            shift_reg <= 4'b0000;
        else begin
            case (ctrl) 
            2'b00: shift_reg <= shift_reg;
            2'b01: shift_reg <= {serial_left_in,shift_reg[3:1]};
            2'b10: shift_reg <= {shift_reg[2:0],serial_right_in};
            2'b11: shift_reg <= parallel_in;
            default: shift_reg <= shift_reg;
            endcase
        end
    end
    assign parallel_out = shift_reg;
endmodule
