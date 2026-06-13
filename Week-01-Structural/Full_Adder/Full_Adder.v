`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 09:31:00
// Design Name: 
// Module Name: Full_Adder
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


module Full_Adder(
    input a,
    input b,
    input carry_in,
    output sum,
    output carry_out
    );
    
    wire xor_out;
    wire [1:0] and_out;
    
    xor g1(xor_out, a, b);
    and g2(and_out[0], a, b);
    xor g3(sum, xor_out, carry_in);
    and g4(and_out[1], xor_out, carry_in);
    or g5(carry_out, and_out[0], and_out[1]);
    
endmodule
