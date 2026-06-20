`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2026 13:00:43
// Design Name: 
// Module Name: T_FF_TB
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


module T_FF_TB(
    );
    reg clk;
    reg rst;
    reg T;
    wire Q;
    wire Q_bar;
    
    T_FF dut (.clk(clk),.rst(rst),.T(T),.Q(Q),.Q_bar(Q_bar));
    
    initial begin
    clk = 1'b0;     rst = 1'b1;
    T = 1'b1;
    # 20 rst = 1'b0;
    # 20 rst = 1'b1;
    end
    always #2 clk = ~clk;
    always #4 T = ~T;
    initial #50 $finish;
endmodule
