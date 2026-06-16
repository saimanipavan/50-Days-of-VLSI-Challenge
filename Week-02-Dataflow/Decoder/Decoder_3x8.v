`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2026 11:15:24
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
    input [2:0] i,
    output [7:0] y
    );
    
    assign y[0] = ~i[2] & ~i[1] & ~i[0];
    assign y[1] = ~i[2] & ~i[1] & i[0];
    assign y[2] = ~i[2] & i[1] & ~i[0];
    assign y[3] = ~i[2] & i[1] & i[0];
    assign y[4] = i[2] & ~i[1] & ~i[0];
    assign y[5] = i[2] & ~i[1] & i[0];
    assign y[6] = i[2] & i[1] & ~i[0];
    assign y[7] = i[2] & i[1] & i[0];
    
endmodule
