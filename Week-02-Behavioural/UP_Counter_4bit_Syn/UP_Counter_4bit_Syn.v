`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2026 12:12:22
// Design Name: 
// Module Name: UP_Counter_4bit_Syn
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


module UP_Counter_4bit_Syn(
    input clk,
    input rst_n,
    output reg [3:0] out
    );
    always @ (posedge clk or negedge rst_n) begin
        if (!rst_n) 
            out <= 4'b0000;
        else 
            out <= out + 1'b1;
    end
endmodule
