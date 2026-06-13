`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 22:14:06
// Design Name: 
// Module Name: Half_Adder_TB
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


module Half_Adder_TB(

    );
    reg a;
    reg b;
    wire sum;
    wire carry;
    
    Half_Adder dut(.a(a),.b(b),.sum(sum),.carry(carry));
    
    initial begin
    a = 1'b0; b = 1'b0;
    #10 a = 1'b0; b = 1'b1;
    #10 a = 1'b1; b = 1'b0;
    #10 a = 1'b1; b = 1'b1;
    end
    initial #50 $finish;
endmodule
