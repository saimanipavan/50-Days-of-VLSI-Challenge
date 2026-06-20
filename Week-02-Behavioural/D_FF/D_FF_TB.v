`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2026 12:02:39
// Design Name: 
// Module Name: D_FF_TB
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


module D_FF_TB(
    );
    reg clk;
    reg rst_n;
    reg D;
    wire Q;
    wire Q_bar;
    
    D_FF dut (.clk(clk),.rst_n(rst_n),.D(D),.Q(Q),.Q_bar(Q_bar));
    
    initial begin 
    clk = 1'b1;     rst_n = 1'b1;
    D = 1'b0;
    #4 D = 1'b1;
    #4 rst_n = 0;       D = 1'b0;
    #4 D = 1'b1;
    #8 rst_n = 1;
    end
    always #2 clk =~clk;
    initial # 30 $finish;
endmodule
