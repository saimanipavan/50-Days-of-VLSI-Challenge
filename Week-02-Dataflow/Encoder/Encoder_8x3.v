`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2026 10:54:03
// Design Name: 
// Module Name: Encoder_8x3
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


module Encoder_8x3(
    input [7:0] i,
    output [2:0] y
    );
    
    assign y[2] = i[7] | i[6] | i[5] | i[4];
    assign y[1] = i[7] | i[6] | i[3] | i[2];
    assign y[0] = i[7] | i[5] | i[3] | i[1];
    
endmodule
