`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2026 16:25:26
// Design Name: 
// Module Name: Universal_Shit_register_TB
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


module Universal_Shift_register_TB(
    );
    reg clk;
    reg rst_n;
    reg [1:0] ctrl;
    reg [3:0] parallel_in;
    reg serial_left_in;
    reg serial_right_in;
    wire [3:0] parallel_out;
    
    Universal_Shift_register dut (.clk(clk),.rst_n(rst_n),.ctrl(ctrl),.parallel_in(parallel_in),.serial_left_in(serial_left_in),.serial_right_in(serial_right_in),.parallel_out(parallel_out));
    
    initial begin
    clk = 1'b0;     rst_n = 1'b0;
    ctrl = 2'b00;
    parallel_in = 4'b1111;
    serial_left_in = 1'b1;
    serial_right_in = 1'b1;
    #20 rst_n = 1'b1;
    end
    always #2 clk = ~clk;
    always #5 ctrl = ctrl+1;
    initial #50 $finish;
    
endmodule
