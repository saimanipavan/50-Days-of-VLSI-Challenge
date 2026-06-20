`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2026 11:50:47
// Design Name: 
// Module Name: SR_FF_TB
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


module SR_FF_TB(
    );
    reg clk;
    reg rst_n;
    reg S;
    reg R;
    wire Q;
    wire Q_bar;
    
    SR_FF dut (.clk(clk),.rst_n(rst_n),.S(S),.R(R),.Q(Q),.Q_bar(Q_bar));
    
    initial begin
    clk = 1'b0;     rst_n = 1'b0;
    {S,R} = 2'b00;
    #16 rst_n = 1'b1;
    end
    always #2 clk = ~clk;
    always #4 {S,R} = {S,R} + 1'b1;
    initial #32 $finish;
endmodule
