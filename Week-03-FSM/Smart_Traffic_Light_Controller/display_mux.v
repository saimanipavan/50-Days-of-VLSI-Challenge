`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2026 11:38:49
// Design Name: 
// Module Name: display_mux
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


module display_mux(
    input [1:0] current_line,
    input [6:0] current_line_ones_position,
    input [6:0] current_line_tens_position,
    output [6:0] main_line_1_ones_position,
    output [6:0] main_line_1_tens_position,
    output [6:0] main_line_2_ones_position,
    output [6:0] main_line_2_tens_position,
    output [6:0] side_line_1_ones_position,
    output [6:0] side_line_1_tens_position,
    output [6:0] side_line_2_ones_position,
    output [6:0] side_line_2_tens_position
    );
    
    assign main_line_1_ones_position = current_line == 2'b00 ? current_line_ones_position : 7'b0000001;
    assign main_line_1_tens_position = current_line == 2'b00 ? current_line_tens_position : 7'b0000001;
    assign main_line_2_ones_position = current_line == 2'b01 ? current_line_ones_position : 7'b0000001;
    assign main_line_2_tens_position = current_line == 2'b01 ? current_line_tens_position : 7'b0000001;
    assign side_line_1_ones_position = current_line == 2'b10 ? current_line_ones_position : 7'b0000001;
    assign side_line_1_tens_position = current_line == 2'b10 ? current_line_tens_position : 7'b0000001;
    assign side_line_2_ones_position = current_line == 2'b11 ? current_line_ones_position : 7'b0000001;
    assign side_line_2_tens_position = current_line == 2'b11 ? current_line_tens_position : 7'b0000001;
    
endmodule
