`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2026 07:45:48
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
    input [1:0] sel,
    output y
    );
    
    assign y = sel[1] ? sel[0] ? i[3] : i[2] : sel [0] ? i[1] : i[0];
    
endmodule
