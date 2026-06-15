`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2026 17:57:31
// Design Name: 
// Module Name: Full_Adder_TB
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


module Full_Adder_TB(
    );
    reg a;
    reg b;
    reg carry_in;
    wire sum;
    wire carry_out;
    
    Full_Adder dut(.a(a),.b(b),.carry_in(carry_in),.sum(sum),.carry_out(carry_out));
    
    initial begin
    {a,b,carry_in} = 3'b000;
    #10 {a,b,carry_in} = 3'b001;
    #10 {a,b,carry_in} = 3'b010;
    #10 {a,b,carry_in} = 3'b011;
    #10 {a,b,carry_in} = 3'b100;
    #10 {a,b,carry_in} = 3'b101;
    #10 {a,b,carry_in} = 3'b110;
    #10 {a,b,carry_in} = 3'b111;
    end
    
    initial #90 $finish;
endmodule
