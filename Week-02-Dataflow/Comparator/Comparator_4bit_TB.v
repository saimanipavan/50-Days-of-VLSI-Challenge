`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2026 10:09:09
// Design Name: 
// Module Name: Comparator_4bit_TB
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


module Comparator_4bit_TB(
    );
    
    reg [3:0] a;
    reg [3:0] b;
    wire a_gt_b;
    wire a_eq_b;
    wire a_lt_b;
    
    Comparator_4bit dut(.a(a),.b(b),.a_gt_b(a_gt_b),.a_eq_b(a_eq_b),.a_lt_b(a_lt_b));
    
    initial begin
    a = 4'b1111;  b = 4'b0000;
    #10 a = 4'b0000;  b = 4'b1111;
    #10 a = 4'b0000;  b = 4'b0000;
    #10 a = 4'b1111;  b = 4'b1111;
    end
    
    initial #50 $finish;

endmodule
