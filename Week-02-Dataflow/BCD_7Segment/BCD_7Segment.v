`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2026 17:23:12
// Design Name: 
// Module Name: BCD_7Segment
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


module BCD_7Segment(
    input [3:0] bcd,
    output [6:0] seg
    );
    
    assign seg = (bcd == 4'b0000) ? 7'b0111111 :
                 (bcd == 4'b0001) ? 7'b0000110 :
                 (bcd == 4'b0010) ? 7'b1011011 :
                 (bcd == 4'b0011) ? 7'b1001111 :
                 (bcd == 4'b0100) ? 7'b1100110 :
                 (bcd == 4'b0101) ? 7'b1101101 :
                 (bcd == 4'b0110) ? 7'b1111101 :
                 (bcd == 4'b0111) ? 7'b0000111 :
                 (bcd == 4'b1000) ? 7'b1111111 :
                 (bcd == 4'b1001) ? 7'b1101111 :
                                    7'b0000000 ;


endmodule
