`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 12:21:20
// Design Name: 
// Module Name: NAND_NOR_XOR_XNOR
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


module NAND_NOR_XOR_XNOR(
    input x,
    input y,
    output nand_out,
    output nor_out,
    output xor_out,
    output xnor_out
    );
    nand g1(nand_out,x,y);
    nor g2(nor_out,x,y);
    xor g3(xor_out,x,y);
    xnor g4(xnor_out,x,y);
endmodule
