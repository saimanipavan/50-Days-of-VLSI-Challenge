`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2026 14:53:12
// Design Name: 
// Module Name: DOWN_Counter_4bit_Asyn_D_FF_TB
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


module DOWN_Counter_4bit_Asyn_D_FF_TB(
    );
    reg clk;
    reg rst_n;
    wire [3:0] out;
    
    DOWN_Conter_4bit_Asyn_D_FF dut(.clk(clk),.rst_n(rst_n),.out(out));
    
    initial begin
        clk = 1'b0;
        rst_n = 1'b0;
        
        #10 rst_n = 1'b1;
        
        #72 rst_n = 1'b0;
    end
    always #2 clk = ~clk;
    
    initial #100 $finish;
endmodule
