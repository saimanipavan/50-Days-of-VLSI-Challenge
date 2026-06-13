`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2026 10:22:07
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
    output[2:0] y
    );
    
    or g1(y[2], i[7], i[6], i[5], i[4]);
    or g2(y[1], i[7], i[6], i[3], i[2]);
    or g3(y[0], i[7], i[5], i[3], i[1]); 
    
endmodule
