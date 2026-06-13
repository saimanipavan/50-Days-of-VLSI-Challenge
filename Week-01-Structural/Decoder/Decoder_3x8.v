`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2026 10:30:50
// Design Name: 
// Module Name: Decoder_3x8
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


module Decoder_3x8(
    input [2:0]i,
    output [7:0]y
    );
    
    wire [2:0] i_neg;
    
    not g1(i_neg[2],i[2]);
    not g2(i_neg[1],i[1]);
    not g3(i_neg[0],i[0]);
    
    and g4(y[0], i_neg[2], i_neg[1], i_neg[0]);
    and g5(y[1], i_neg[2], i_neg[1], i[0]);
    and g6(y[2], i_neg[2], i[1], i_neg[0]);
    and g7(y[3], i_neg[2], i[1], i[0]);
    and g8(y[4], i[2], i_neg[1], i_neg[0]);
    and g9(y[5], i[2], i_neg[1], i[0]);
    and g10(y[6], i[2], i[1], i_neg[0]);
    and g11(y[7], i[2], i[1], i[0]);
    
endmodule
