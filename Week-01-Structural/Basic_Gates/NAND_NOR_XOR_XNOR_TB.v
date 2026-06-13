`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 12:25:40
// Design Name: 
// Module Name: NAND_NOR_XOR_XNOR_TB
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


module NAND_NOR_XOR_XNOR_TB(

    );
    reg x;
    reg y;
    wire nand_out;
    wire nor_out;
    wire xor_out;
    wire xnor_out;
        
    NAND_NOR_XOR_XNOR dut(.x(x),.y(y),.nand_out(nand_out),.nor_out(nor_out),.xor_out(xor_out),.xnor_out(xnor_out));
    initial begin
    x = 1'b0; y = 1'b0;
    #10 x = 1'b0; y = 1'b1;
    #10 x = 1'b1; y = 1'b0;
    #10 x = 1'b1; y = 1'b1;
    end
    initial #50 $finish;
endmodule
