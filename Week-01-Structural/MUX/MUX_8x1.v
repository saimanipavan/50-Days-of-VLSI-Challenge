`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 10:00:18
// Design Name: 
// Module Name: MUX_8x1
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


module MUX_8x1(
    input [7:0] i,
    input [2:0] sel,
    output y
    );
    wire [2:0] sel_neg;
    wire [7:0] and_out;
    
    not g1(sel_neg[0], sel[0]);
    not g2(sel_neg[1], sel[1]);
    not g3(sel_neg[2], sel[2]);
    
    and g4(and_out[0], sel_neg[2], sel_neg[1], sel_neg[0], i[0]);
    and g5(and_out[1], sel_neg[2], sel_neg[1], sel[0], i[1]);
    and g6(and_out[2], sel_neg[2], sel[1], sel_neg[0], i[2]);
    and g7(and_out[3], sel_neg[2], sel[1], sel[0], i[3]);
    and g8(and_out[4], sel[2], sel_neg[1], sel_neg[0], i[4]);
    and g9(and_out[5], sel[2], sel_neg[1], sel[0], i[5]);
    and g10(and_out[6], sel[2], sel[1], sel_neg[0], i[6]);
    and g11(and_out[7], sel[2], sel[1], sel[0], i[7]);
    
    or g12(y, and_out[0], and_out[1], and_out[2], and_out[3], and_out[4], and_out[5], and_out[6], and_out[7]);
    
endmodule
