`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2026 07:48:24
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
    
    assign y = sel[2] ? sel[1] ? sel[0] ? i[7] : i[6] : sel[0] ? i[5] : i[4] :sel[1] ? sel[0] ? i[3] : i[2] : sel[0] ? i[1] : i[0];
    
endmodule
