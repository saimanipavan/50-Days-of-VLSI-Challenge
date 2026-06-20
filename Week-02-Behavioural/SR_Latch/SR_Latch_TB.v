`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2026 10:15:09
// Design Name: 
// Module Name: SR_Latch_TB
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


module SR_Latch_TB(
    );
    reg S;
    reg R;
    wire Q;
    wire Q_bar;
    
    SR_Latch dut (.S(S),.R(R),.Q(Q),.Q_bar(Q_bar));
    
    initial begin
    S = 1'b0;   R = 1'b1;
    #10 S = 1'b1;   R = 1'b0;
    #10 S = 1'b0;   R = 1'b0;
    #10 S = 1'b1;   R = 1'b1;
    end
    initial #50 $finish;
    
endmodule
