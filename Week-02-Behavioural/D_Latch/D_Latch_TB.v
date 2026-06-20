`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2026 10:30:23
// Design Name: 
// Module Name: D_Latch_TB
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


module D_Latch_TB(
    );
    reg D;
    reg en;
    wire Q;
    wire Q_bar;
    
    D_Latch dut (.D(D),.en(en),.Q(Q),.Q_bar(Q_bar));
    
    initial begin
    en = 1'b1;      D = 1'b0;
    #10 en = 1'b1;      D = 1'b1;
    #10 en = 1'b0;      D = 1'b0;
    #10 en = 1'b0;      D = 1'b1;
    end
    
    initial #50 $finish;
endmodule
