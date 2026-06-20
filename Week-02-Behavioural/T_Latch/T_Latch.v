`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2026 09:21:39
// Design Name: 
// Module Name: T_Latch
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


module T_Latch(
    input T,
    input en,
    output reg Q,
    output Q_bar
    );
    assign Q_bar = ~Q;
    always @ (T or en) begin
        if (en) begin
            if (T)
                Q <= ~Q;
            else
                Q <= Q;
         end
         else 
         Q <= 1'b0;
    end
endmodule
