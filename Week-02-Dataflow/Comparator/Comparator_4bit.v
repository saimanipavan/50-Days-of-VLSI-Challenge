`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2026 09:19:47
// Design Name: 
// Module Name: Comparator_4bit
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


module Comparator_4bit(
    input [3:0] a,
    input [3:0] b,
    output a_gt_b,
    output a_eq_b,
    output a_lt_b
    );
    
    assign a_gt_b = a > b;
    assign a_eq_b = a == b;
    assign a_lt_b = a < b;
    
endmodule
