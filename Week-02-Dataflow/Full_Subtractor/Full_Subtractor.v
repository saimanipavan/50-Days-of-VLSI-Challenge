`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2026 16:38:27
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
    
    assign {borrow_out,difference} = a - b - borrow_in;
    
endmodule
