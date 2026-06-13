`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 10:10:23
// Design Name: 
// Module Name: MUX_8x1_TB
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


module MUX_8x1_TB(
    );
    reg [7:0] i;
    reg [2:0]sel;
    wire y;
            
    MUX_8x1 dut(.i(i),.sel(sel),.y(y));
            
    initial begin
    i = 8'b00000000;  sel = 3'b000;
    end
    always #2 sel = sel+1'b1;
    always #16 i = i+2'b11;
            
    initial #100 $finish;
endmodule
