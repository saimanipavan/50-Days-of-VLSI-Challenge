`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2026 10:38:18
// Design Name: 
// Module Name: Decoder_3x8_TB
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


module Decoder_3x8_TB(
    );
    reg [2:0]i;
    wire [7:0]y;
    
    Decoder_3x8 dut(.i(i),.y(y));
    
    initial begin
    i = 3'b000;
    #10 i = 3'b001;
    #10 i = 3'b010;
    #10 i = 3'b011;
    #10 i = 3'b100;
    #10 i = 3'b101;
    #10 i = 3'b110;
    #10 i = 3'b111;
    end
    
    initial #100 $finish;
    
endmodule
