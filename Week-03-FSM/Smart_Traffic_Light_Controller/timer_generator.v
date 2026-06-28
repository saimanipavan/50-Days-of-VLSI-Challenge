`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2026 13:53:23
// Design Name: 
// Module Name: timer_generator
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


module timer_generator(
    input clk,
    input rst_n,
    output reg done
    );
    
    parameter device_clk = 26'd5;//0_000_000;
    reg [25:0] div_clk;
    always @ (posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            div_clk <= 26'h0000000;
            done <= 1'b0;
        end
        else if (div_clk == device_clk-1'b1) begin
            div_clk <= 26'h0000000;
            done <= 1'b1;
        end
        else begin
            div_clk <= div_clk+1'b1;
            done <= 1'b0;
        end
    end
endmodule
