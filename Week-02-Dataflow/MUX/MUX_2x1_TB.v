`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2026 18:02:50
// Design Name: 
// Module Name: MUX_2x1_TB
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


module MUX_2x1_TB(
    );
    reg [1:0] i;
    reg sel;
    wire y;
    
    MUX_2x1 dut(.i(i),.sel(sel),.y(y));
    
    initial begin
    i = 2'b00;  sel = 1'b0;
    #5 sel = 1'b1;
    #5 i = 2'b01;  sel = 1'b0;
    #5 sel = 1'b1;
    #5 i = 2'b10;  sel = 1'b0;
    #5 sel = 1'b1;
    #5 i = 2'b11;  sel = 1'b0;
    #5 sel = 1'b1;
    end
    
    initial #50 $finish;
    

endmodule
