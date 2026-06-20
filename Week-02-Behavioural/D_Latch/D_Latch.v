`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2026 08:36:15
// Design Name: 
// Module Name: D_Latch
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


module D_Latch(
    input D,
    input en,
    output reg Q,
    output Q_bar
    );
    assign Q_bar = ~Q;
    always @ (*) begin
        if(en)
            Q <= D;
        else 
            Q <= Q;
    end
endmodule
