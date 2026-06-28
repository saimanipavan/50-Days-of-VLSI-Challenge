`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2026 17:51:25
// Design Name: 
// Module Name: seven_seg_driver
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

module seven_seg_driver(
    input [1:0] current_line,
    input [5:0] time_left,
    output [6:0] main_line_1_ones_position,
    output [6:0] main_line_1_tens_position,
    output [6:0] main_line_2_ones_position,
    output [6:0] main_line_2_tens_position,
    output [6:0] side_line_1_ones_position,
    output [6:0] side_line_1_tens_position,
    output [6:0] side_line_2_ones_position,
    output [6:0] side_line_2_tens_position
    );
    wire [3:0] tens,ones;
    binary_to_bcd bin_to_bcd (.binary(time_left),.tens(tens),.ones(ones));
    wire [6:0] tens_seven_seg,ones_seven_seg;
    bcd_seven_seg_decoder bcd_seven_seg_tens (.bcd(tens),.seg(tens_seven_seg));
    bcd_seven_seg_decoder bcd_seven_seg_ones (.bcd(ones),.seg(ones_seven_seg));
    display_mux seven_seg_out(.current_line(current_line),
                              .current_line_ones_position(ones_seven_seg),
                              .current_line_tens_position(tens_seven_seg),
                              .main_line_1_ones_position(main_line_1_ones_position),
                              .main_line_1_tens_position(main_line_1_tens_position),
                              .main_line_2_ones_position(main_line_2_ones_position),
                              .main_line_2_tens_position(main_line_2_tens_position),
                              .side_line_1_ones_position(side_line_1_ones_position),
                              .side_line_1_tens_position(side_line_1_tens_position),
                              .side_line_2_ones_position(side_line_2_ones_position),
                              .side_line_2_tens_position(side_line_2_tens_position));
                              
endmodule
