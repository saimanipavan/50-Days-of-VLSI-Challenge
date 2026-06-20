`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2026 11:54:17
// Design Name: 
// Module Name: T_FF
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


module T_FF(
    input clk,
    input rst,
    input T,
    output reg Q,
    output Q_bar
    );
    assign Q_bar = ~Q;
    always @ (posedge clk or posedge rst) begin
        if (rst)
            Q <= 1'b0;
        else begin
            if(T)
                Q <= ~Q;
            else 
                Q <= Q;
        end
    end
endmodule
