`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2026 11:09:08
// Design Name: 
// Module Name: T_Latch_TB
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


module T_Latch_TB(
    );
    reg T;
    reg en;
    wire Q;
    wire Q_bar;
    
    T_Latch dut (.T(T),.en(en),.Q(Q),.Q_bar(Q_bar));
    
    initial begin
    T = 1'b0;       en = 1'b0;
    #10 T = 1'b1;       en = 1'b0;
    #10 T = 1'b0;       en = 1'b1;
    #10 T = 1'b1;       en = 1'b1;
    end
    initial #50 $finish;
endmodule
