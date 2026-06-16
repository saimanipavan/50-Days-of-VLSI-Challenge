`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2026 11:08:01
// Design Name: 
// Module Name: Encoder_8x3_TB
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


module Encoder_8x3_TB(
    );
    reg [7:0]i;
    wire [2:0]y;
    
    Encoder_8x3 dut(.i(i),.y(y));
    
    initial begin
    i = 8'b00000000;
    #10 i = 8'b00000001;
    #10 i = 8'b00000010;
    #10 i = 8'b00000100;
    #10 i = 8'b00001000;
    #10 i = 8'b00010000;
    #10 i = 8'b00100000;
    #10 i = 8'b01000000;
    #10 i = 8'b10000000;
    end
    
    initial #100 $finish;

endmodule
