`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2026 11:40:38
// Design Name: 
// Module Name: JK_FF
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


module JK_FF(
    input clk,
    input rst,
    input J,
    input K,
    output reg Q,
    output Q_bar
    );
    assign Q_bar = Q;
    always @ (posedge clk or posedge rst) begin
        if (rst)
            Q <= 1'b0;
        else begin
            case ({J,K}) 
                2'b00: Q <= Q;
                2'b01: Q <= 1'b0;
                2'b10: Q <= 1'b1;
                2'b11: Q <= ~Q;
                default: Q <= Q;
            endcase
        end
    end
endmodule
