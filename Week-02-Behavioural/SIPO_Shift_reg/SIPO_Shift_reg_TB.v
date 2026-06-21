`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2026 12:30:30
// Design Name: 
// Module Name: SIPO_Shift_reg_TB
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


module SIPO_Shift_reg_TB(
    );
    reg clk;
    reg rst_n;
    reg serial_in;
    wire [3:0] parallel_out;
    
    SIPO_Shift_reg dut(.clk(clk),.rst_n(rst_n),.serial_in(serial_in),.parallel_out(parallel_out));
    
    initial begin 
    clk = 1'b0;     rst_n = 1'b0;
    serial_in = 1'b1;
    #10 serial_in = 1'b0;
    #10 rst_n = 1'b1;
    serial_in = 1'b1;
    #4 serial_in = 1'b0;
    #4 serial_in = 1'b1;
    #4 serial_in = 1'b0;
    #4serial_in = 1'b1;
    #4 serial_in = 1'b0;
    #14 rst_n = 1'b0;
    end
    always #2 clk = ~clk;
    initial #100 $finish;
endmodule
