`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2026 08:17:55
// Design Name: 
// Module Name: SR_Latch
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


module SR_Latch(
    input S,
    input R,
    output reg Q,
    output Q_bar
    );
    assign Q_bar = ~Q;
    always @(*) begin
        if (S == 1'b0 && R == 1'b0)
            Q <= Q;
        else if (S == 1'b0 && R == 1'b1)
            Q <= 1'b0;
        else if (S == 1'b1 && R == 1'b0)
            Q <= 1'b1;
        else if (S == 1'b1 && R == 1'b1)
            Q <= 1'bx;
        else
            Q <= Q;
    end
endmodule
