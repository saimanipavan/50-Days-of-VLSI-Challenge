`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2026 16:36:13
// Design Name: 
// Module Name: Half_Subtractor
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


module Half_Subtractor(
    input a,
    input b,
    output difference,
    output borrow
    );
    
    assign difference = a ^ b;
    assign borrow = ~a & b;
    
endmodule
