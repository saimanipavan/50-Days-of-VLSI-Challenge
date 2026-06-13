`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2026 09:45:51
// Design Name: 
// Module Name: Full_Subtractor
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


module Full_Subtractor(
    input a,
    input b,
    input borrow_in,
    output difference,
    output borrow_out
    );
    
    wire xor_out;
    wire a_neg,xor_out_neg;
    wire [1:0] and_out;
    
    not g1(a_neg, a);
    xor g2(xor_out, a, b);
    and g3(and_out[0], a_neg, b);
    
    not g4(xor_out_neg, xor_out);
    xor g5(difference, xor_out, borrow_in);
    and g6(and_out[1], xor_out_neg, borrow_in);
    
    or g7(borrow_out, and_out[0], and_out[1]);
    
endmodule
