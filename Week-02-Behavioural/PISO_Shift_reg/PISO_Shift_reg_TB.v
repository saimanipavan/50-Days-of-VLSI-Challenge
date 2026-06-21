`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2026 12:31:03
// Design Name: 
// Module Name: PISO_Shift_reg_TB
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


module PISO_Shift_reg_TB(
    );
    reg clk;
    reg rst_n;
    reg load_en;
    reg [3:0] parallel_in;
    wire serial_out;
    
    PISO_Shift_reg dut(.clk(clk),.rst_n(rst_n),.load_en(load_en),.parallel_in(parallel_in),.serial_out(serial_out));
    
    initial begin 
    clk = 1'b0;     rst_n = 1'b0;   load_en = 1'b0;
    parallel_in = 4'b1111;
    #10 parallel_in = 4'b0000;      load_en = 1'b1;
    #10 rst_n = 1'b1;
    parallel_in = 4'b1111;
    #4 load_en = 1'b0;
    #12 parallel_in = 4'b1010;
    load_en = 1'b1;
    #4 load_en = 1'b0;
    #24 rst_n = 1'b0;
    end
    always #2 clk = ~clk;
    initial #100 $finish;
endmodule
