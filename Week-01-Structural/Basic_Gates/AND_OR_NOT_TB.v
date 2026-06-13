`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 11:56:36
// Design Name: 
// Module Name: AND_OR_NOT_TB
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


module AND_OR_NOT_TB(
    );
    reg x;
    reg y;
    wire and_out;
    wire or_out;
    wire not_x_out;
    wire not_y_out;
    
    AND_OR_NOT dut(.x(x),.y(y),.and_out(and_out),.or_out(or_out),.not_x_out(not_x_out),.not_y_out(not_y_out));
    initial begin
    x = 1'b0; y = 1'b0;
    #10 x = 1'b0; y = 1'b1;
    #10 x = 1'b1; y = 1'b0;
    #10 x = 1'b1; y = 1'b1;
    end
    initial #50 $finish;
endmodule
