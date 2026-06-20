`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2026 12:52:30
// Design Name: 
// Module Name: JK_FF_TB
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


module JK_FF_TB(
    );
    reg clk;
    reg rst;
    reg J;
    reg K;
    wire Q;
    wire Q_bar;
    
    JK_FF dut (.clk(clk),.rst(rst),.J(J),.K(K),.Q(Q),.Q_bar(Q_bar));
    
    initial begin 
    clk = 1'b1;     rst = 1'b0;
    {J,K} = 2'b01;
    #10 rst = 1'b1;
    #30 rst = 1'b0;
    end
    always #2 clk =~clk;
    always #4 {J,K} = {J,K} +1'b1;
    initial #50 $finish;
endmodule
