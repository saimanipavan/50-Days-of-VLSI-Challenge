`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2026 17:37:09
// Design Name: 
// Module Name: ALU_nbit
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


module ALU_nbit 
    #(parameter Data_Width = 4
    )(
    input [Data_Width-1:0] a,
    input [Data_Width-1:0] b,
    input carry_in,
    input [2:0] opcode,
    output [Data_Width-1:0] result,
    output carry_out
    );
    
    assign {carry_out,result} = (opcode == 3'b000) ? {1'b0,a} + {1'b0,b} + carry_in :
                                (opcode == 3'b001) ? {1'b0,a} - {1'b0,b} - carry_in :
                                (opcode == 3'b010) ? {1'b0, (a & b )} :
                                (opcode == 3'b011) ? {1'b0, (a | b )} :
                                (opcode == 3'b100) ? {1'b0, (~a)} :
                                (opcode == 3'b101) ? {1'b0, (~(a & b))} :
                                (opcode == 3'b110) ? {1'b0, (~(a | b))} :
                                (opcode == 3'b111) ? {1'b0, (a ^ b)} :
                                                     {(Data_Width + 1){1'b0}};

endmodule
