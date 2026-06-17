`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2026 18:12:18
// Design Name: 
// Module Name: BCD_7Segment_TB
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


module BCD_7Segment_TB(
    );
    reg [3:0] bcd;
    wire [6:0] seg;
    
    BCD_7Segment dut(.bcd(bcd),.seg(seg));
    
    initial begin
    bcd = 4'b0000;
    #5 bcd = 4'b0001;
    #5 bcd = 4'b0010;
    #5 bcd = 4'b0011;
    #5 bcd = 4'b0100;
    #5 bcd = 4'b0101;
    #5 bcd = 4'b0110;
    #5 bcd = 4'b0111;
    #5 bcd = 4'b1000;
    #5 bcd = 4'b1001;
    #5 bcd = 4'b1010;
    #5 bcd = 4'b1011;
    #5 bcd = 4'b1100;
    #5 bcd = 4'b1101;
    #5 bcd = 4'b1110;
    #5 bcd = 4'b1111;
    end
    
    initial #80 $finish;
endmodule
