`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2026 18:10:06
// Design Name: 
// Module Name: ALU_nbit_TB
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


module ALU_nbit_TB(
    );
    
    reg [3:0] a;
    reg [3:0] b;
    reg carry_in;
    reg [2:0] opcode;
    wire [3:0] result;
    wire carry_out;
    
    ALU_nbit dut(.a(a),.b(b),.carry_in(carry_in),.opcode(opcode),.result(result),.carry_out(carry_out));
    
    initial begin
    a = 4'b0101;   b = 4'b0010;  carry_in = 1'b0; opcode = 3'b000;
    #5 opcode = 3'b001;
    #5 opcode = 3'b010;
    #5 opcode = 3'b011;
    #5 opcode = 3'b100;
    #5 opcode = 3'b101;
    #5 opcode = 3'b110;
    #5 opcode = 3'b111;
    end
    
    initial #50 $finish;

endmodule
