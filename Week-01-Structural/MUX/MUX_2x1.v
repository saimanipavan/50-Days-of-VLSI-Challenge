`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 14:08:09
// Design Name: 
// Module Name: MUX_2x1
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


module MUX_2x1(
    input [1:0] i,
    input sel,
    output y
    );
    wire sel_neg;
    wire [1:0]and_out;
    not g1(sel_neg,sel);
    and g2(and_out[0],i[0],sel_neg);
    and g3(and_out[1],i[1],sel);
    or g4 (y,and_out[0],and_out[1]);
    //assign y = sel ? i[1] : i[0];
endmodule
