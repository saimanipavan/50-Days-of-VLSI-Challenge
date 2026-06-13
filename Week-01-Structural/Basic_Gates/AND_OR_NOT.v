`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 11:48:18
// Design Name: 
// Module Name: AND_OR_NOT
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


module AND_OR_NOT(
    input x,
    input y,
    output and_out,
    output or_out,
    output not_x_out,
    output not_y_out
    );
    and g1(and_out,x,y);
    or g2(or_out,x,y);
    not g3(not_x_out,x);
    not g4(not_y_out,y);
endmodule
