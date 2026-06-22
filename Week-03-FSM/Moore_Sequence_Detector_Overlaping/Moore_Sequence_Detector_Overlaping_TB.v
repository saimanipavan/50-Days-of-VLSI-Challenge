`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2026 14:01:32
// Design Name: 
// Module Name: Moore_Sequence_Detector_Overlaping_TB
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


module Moore_Sequence_Detector_Overlaping_TB(
    );
    reg clk;
    reg rst_n;
    reg in;
    wire out;
    
    Moore_Sequence_Detector_Overlaping dut (
        .clk(clk),
        .rst_n(rst_n),
        .in(in),
        .out(out)
        );
        
    initial begin 
    clk = 1'b0;     rst_n = 1'b0;
    in = 1'b1;
    #4 in = 1'b0;
    #4 in = 1'b1;
    #4 in = 1'b1;
    #4 in = 1'b0;
    #4 in = 1'b1;
    rst_n = 1'b1;
    #4 in = 1'b1;
    #4 in = 1'b0;
    #4 in = 1'b1;
    #4 in = 1'b1;
    #4 in = 1'b0;
    #4 in = 1'b1;
    #4 in = 1'b1;
    #4 in = 1'b0;
    #4 in = 1'b1;
    #4 in = 1'b1;
    #4 in = 1'b0;
    #4 in = 1'b1;
    #4 in = 1'b1;
    #4 in = 1'b0;
    #4 in = 1'b0;
    #4 in = 1'b1;
    #4 in = 1'b0;
    #4 in = 1'b0;
    end
    always #2 clk = ~clk;
    initial #100 $finish;
endmodule
