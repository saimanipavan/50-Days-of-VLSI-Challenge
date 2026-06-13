`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 17:56:37
// Design Name: 
// Module Name: MUX_4x1
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


module MUX_4x1(
    input [3:0] i,
    input [1:0]sel,
    output y
    );
    wire [1:0]sel_neg;
    wire [3:0] and_out;
    
    not g1(sel_neg[0],sel[0]);
    not g2(sel_neg[1],sel[1]);
    and g3(and_out[0],i[0],sel_neg[1],sel_neg[0]);
    and g4(and_out[1],i[1],sel_neg[1],sel[0]);
    and g5(and_out[2],i[1],sel[1],sel_neg[0]);
    and g6(and_out[3],i[1],sel[1],sel[0]);
    or g7(y,and_out[3],and_out[2],and_out[1],and_out[0]);
    //assign y = sel[1] ? sel[0] ? i[3] : i[2] : sel[0] ? i[1] : i[0];
endmodule
