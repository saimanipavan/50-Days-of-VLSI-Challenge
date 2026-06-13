`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 18:00:00
// Design Name: 
// Module Name: MUX_4x1_TB
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


module MUX_4x1_TB(
    );
    reg [3:0] i;
    reg [1:0]sel;
    wire y;
        
    MUX_4x1 dut(.i(i),.sel(sel),.y(y));
        
    initial begin
    i = 4'b0000;  sel = 2'b00;
    end
    always #5 sel = sel+1'b1;
    always #20 i = i+1'b1;
    
        
    initial #320 $finish;
endmodule
