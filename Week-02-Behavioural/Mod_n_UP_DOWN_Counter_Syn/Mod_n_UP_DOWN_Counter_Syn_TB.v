`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2026 17:32:00
// Design Name: 
// Module Name: Mod_n_UP_DOWN_COUNTER_Syn_TB
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


module Mod_n_UP_DOWN_COUNTER_Syn_TB(
    );
    reg clk;
    reg rst_n;
    reg UP_DOWN;
    wire [3:0] out;

    
    Mod_n_UP_DOWN_COUNTER_Syn #(.N(10),.Data_Width(4)) dut(.clk(clk),.rst_n(rst_n),.UP_DOWN(UP_DOWN),.out(out));
    
    initial begin
        clk = 1'b0;
        rst_n = 1'b0;
        UP_DOWN = 1'b0;
        
        #10 rst_n = 1'b1;
        
        #60 UP_DOWN = 1'b1;
        #60 rst_n = 1'b0;
    end
    always #2 clk = ~clk;
    initial #200 $finish;
    
endmodule
