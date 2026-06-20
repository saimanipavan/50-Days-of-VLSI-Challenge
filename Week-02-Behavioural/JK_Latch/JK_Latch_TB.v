`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2026 10:38:18
// Design Name: 
// Module Name: JK_Latch_TB
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


module JK_Latch_TB(
    );
    reg J;
    reg K;
    wire Q;
    wire Q_bar;
    
    JK_Latch dut (.J(J),.K(K),.Q(Q),.Q_bar(Q_bar));
    
    initial begin
    J = 1'b0;   K = 1'b1;
    #10 J = 1'b1;   K = 1'b1;
    #10 J = 1'b1;   K = 1'b0;
    #10 J = 1'b0;    K = 1'b0;
    end
    initial #50 $finish;
endmodule
