`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2026 09:20:45
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
    
    wire a_neg;
    
    not g1(a_neg,a);
    xor g2(difference,a,b);
    and g3(borrow,a_neg,b);
    
endmodule
