`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2026 17:14:48
// Design Name: 
// Module Name: output_driver
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


module output_driver(
    input [1:0] current_line,
    input [1:0] current_line_light,
    output [2:0] main_line_1_lights,
    output [2:0] main_line_2_lights,
    output [2:0] side_line_1_lights,
    output [2:0] side_line_2_lights
    );
    assign main_line_1_lights = (current_line==2'b00) ? (current_line_light == 2'b01) ? 3'b001 : (current_line_light == 2'b10) ? 3'b010 : 3'b100 :3'b100;
    assign main_line_2_lights = (current_line==2'b01) ? (current_line_light == 2'b01) ? 3'b001 : (current_line_light == 2'b10) ? 3'b010 : 3'b100 :3'b100;
    assign side_line_1_lights = (current_line==2'b10) ? (current_line_light == 2'b01) ? 3'b001 : (current_line_light == 2'b10) ? 3'b010 : 3'b100 :3'b100;
    assign side_line_2_lights = (current_line==2'b11) ? (current_line_light == 2'b01) ? 3'b001 : (current_line_light == 2'b10) ? 3'b010 : 3'b100 :3'b100;
endmodule
