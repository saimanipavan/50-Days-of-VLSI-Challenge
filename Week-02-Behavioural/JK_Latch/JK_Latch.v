`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2026 11:15:28
// Design Name: 
// Module Name: JK_Latch
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


module JK_Latch(
    input J,
    input K,
    output reg Q,
    output Q_bar
    );
    assign Q_bar = ~Q;
    always @ (J or K) begin
        if (J == 1'b0 && K == 1'b0)
            Q <= Q;
        else if (J == 1'b0 && K == 1'b1)
            Q <= 1'b0;
        else if (J == 1'b1 && K == 1'b0)
            Q <= 1'b1;
        else if (J == 1'b1 && K == 1'b1)
            Q <= ~Q;
        else 
            Q <= Q;
    end
endmodule
