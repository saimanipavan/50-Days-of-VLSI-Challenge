`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2026 11:29:01
// Design Name: 
// Module Name: UP_DOWN_Counter_4bit_Asyn_D_FF_TB
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


module UP_DOWN_Counter_4bit_Asyn_D_FF_TB(
    );
    reg clk;
    reg rst_n;
    reg UP_DOWN;
    wire [3:0] out;

    
    UP_DOWN_COUNTER_4bit_Asyn_D_FF dut(.clk(clk),.rst_n(rst_n),.UP_DOWN(UP_DOWN),.out(out));
    
    initial begin
        clk = 1'b0;
        rst_n = 1'b0;
        UP_DOWN = 1'b0;
        
        #10 rst_n = 1'b1;
        
        #60 UP_DOWN = 1'b1;
        #60 rst_n = 1'b0;
    end
    always #2 clk = ~clk;
    initial $monitor (" clk = %b, rst_n = %b, UP_DOWN = %b, out = %b",clk,rst_n,UP_DOWN,out);
    initial #200 $finish;
    
endmodule
