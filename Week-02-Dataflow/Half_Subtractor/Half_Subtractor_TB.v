`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2026 17:59:33
// Design Name: 
// Module Name: Half_Subtractor_TB
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


module Half_Subtractor_TB(
    );
    reg a;
    reg b;
    wire difference;
    wire borrow;
    
    Half_Subtractor dut(.a(a),.b(b),.difference(difference),.borrow(borrow));
    
    initial begin 
    a = 1'b0;  b = 1'b0;
    #10 a = 1'b0;  b = 1'b1;
    #10 a = 1'b1;  b = 1'b0;
    #10 a = 1'b1;  b = 1'b1;
    end
    
    initial #50 $finish;

endmodule
