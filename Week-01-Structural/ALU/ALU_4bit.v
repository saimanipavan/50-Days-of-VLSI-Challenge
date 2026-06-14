`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2026 14:48:54
// Design Name: 
// Module Name: ALU_4bit
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


module ALU_4bit(
    input [3:0] a,
    input [3:0] b,
    input carry_in,
    input [2:0] opcode,
    output [3:0] result,
    output carry_out
    );
    
    wire [3:0] addition_out;
    wire [3:0] add_carry;
    Full_Adder add1(.a(a[0]),.b(b[0]),.carry_in(carry_in),.sum(addition_out[0]),.carry_out(add_carry[0]));
    Full_Adder add2(.a(a[1]),.b(b[1]),.carry_in(add_carry[0]),.sum(addition_out[1]),.carry_out(add_carry[1]));
    Full_Adder add3(.a(a[2]),.b(b[2]),.carry_in(add_carry[1]),.sum(addition_out[2]),.carry_out(add_carry[2]));
    Full_Adder add4(.a(a[3]),.b(b[3]),.carry_in(add_carry[2]),.sum(addition_out[3]),.carry_out(add_carry[3]));
    
    wire [3:0] subtraction_out;
    wire [3:0] sub_carry;
    Full_Subtractor sub1(.a(a[0]),.b(b[0]),.borrow_in(carry_in),.difference(subtraction_out[0]),.borrow_out(sub_carry[0]));
    Full_Subtractor sub2(.a(a[1]),.b(b[1]),.borrow_in(sub_carry[0]),.difference(subtraction_out[1]),.borrow_out(sub_carry[1]));
    Full_Subtractor sub3(.a(a[2]),.b(b[2]),.borrow_in(sub_carry[1]),.difference(subtraction_out[2]),.borrow_out(sub_carry[2]));
    Full_Subtractor sub4(.a(a[3]),.b(b[3]),.borrow_in(sub_carry[2]),.difference(subtraction_out[3]),.borrow_out(sub_carry[3]));
    
    wire [3:0] and_out;
    wire [3:0] or_out;
    wire [3:0] not_a_out;
    AND_OR_NOT gate1(.x(a[0]),.y(b[0]),.and_out(and_out[0]),.or_out(or_out[0]),.not_x_out(not_a_out[0]));
    AND_OR_NOT gate2(.x(a[1]),.y(b[1]),.and_out(and_out[1]),.or_out(or_out[1]),.not_x_out(not_a_out[1]));
    AND_OR_NOT gate3(.x(a[2]),.y(b[2]),.and_out(and_out[2]),.or_out(or_out[2]),.not_x_out(not_a_out[2]));
    AND_OR_NOT gate4(.x(a[3]),.y(b[3]),.and_out(and_out[3]),.or_out(or_out[3]),.not_x_out(not_a_out[3]));
    
    wire [3:0] nand_out;
    wire [3:0] nor_out;
    wire [3:0] xor_out;
    NAND_NOR_XOR gate5(.x(a[0]),.y(b[0]),.nand_out(nand_out[0]),.nor_out(nor_out[0]),.xor_out(xor_out[0]));
    NAND_NOR_XOR gate6(.x(a[1]),.y(b[1]),.nand_out(nand_out[1]),.nor_out(nor_out[1]),.xor_out(xor_out[1]));
    NAND_NOR_XOR gate7(.x(a[2]),.y(b[2]),.nand_out(nand_out[2]),.nor_out(nor_out[2]),.xor_out(xor_out[2]));
    NAND_NOR_XOR gate8(.x(a[3]),.y(b[3]),.nand_out(nand_out[3]),.nor_out(nor_out[3]),.xor_out(xor_out[3]));
    
    MUX_8x1 mux0(.i({xor_out[0],nor_out[0],nand_out[0],not_a_out[0],or_out[0],and_out[0],subtraction_out[0],addition_out[0]}),.sel(opcode),.y(result[0]));
    MUX_8x1 mux1(.i({xor_out[1],nor_out[1],nand_out[1],not_a_out[1],or_out[1],and_out[1],subtraction_out[1],addition_out[1]}),.sel(opcode),.y(result[1]));
    MUX_8x1 mux2(.i({xor_out[2],nor_out[2],nand_out[2],not_a_out[2],or_out[2],and_out[2],subtraction_out[2],addition_out[2]}),.sel(opcode),.y(result[2]));
    MUX_8x1 mux3(.i({xor_out[3],nor_out[3],nand_out[3],not_a_out[3],or_out[3],and_out[3],subtraction_out[3],addition_out[3]}),.sel(opcode),.y(result[3]));
    
    MUX_8x1 mux_carry(.i({6'b000000,sub_carry[3],add_carry[3]}),.sel(opcode),.y(carry_out));
    
endmodule

module AND_OR_NOT(
    input x,
    input y,
    output and_out,
    output or_out,
    output not_x_out,
    );
    and g1(and_out,x,y);
    or g2(or_out,x,y);
    not g3(not_x_out,x);
endmodule

module NAND_NOR_XOR(
    input x,
    input y,
    output nand_out,
    output nor_out,
    output xor_out,
    );
    nand g1(nand_out,x,y);
    nor g2(nor_out,x,y);
    xor g3(xor_out,x,y);
endmodule


module Full_Adder(
    input a,
    input b,
    input carry_in,
    output sum,
    output carry_out
    );
    
    wire xor_out;
    wire [1:0] and_out;
    
    xor g1(xor_out, a, b);
    and g2(and_out[0], a, b);
    xor g3(sum, xor_out, carry_in);
    and g4(and_out[1], xor_out, carry_in);
    or g5(carry_out, and_out[0], and_out[1]);
    
endmodule

module Full_Subtractor(
    input a,
    input b,
    input borrow_in,
    output difference,
    output borrow_out
    );
    
    wire xor_out;
    wire a_neg,xor_out_neg;
    wire [1:0] and_out;
    
    not g1(a_neg, a);
    xor g2(xor_out, a, b);
    and g3(and_out[0], a_neg, b);
    
    not g4(xor_out_neg, xor_out);
    xor g5(difference, xor_out, borrow_in);
    and g6(and_out[1], xor_out_neg, borrow_in);
    
    or g7(borrow_out, and_out[0], and_out[1]);
    
endmodule

module MUX_8x1(
    input [7:0] i,
    input [2:0] sel,
    output y
    );
    wire [2:0] sel_neg;
    wire [7:0] and_out;
    
    not g1(sel_neg[0], sel[0]);
    not g2(sel_neg[1], sel[1]);
    not g3(sel_neg[2], sel[2]);
    
    and g4(and_out[0], sel_neg[2], sel_neg[1], sel_neg[0], i[0]);
    and g5(and_out[1], sel_neg[2], sel_neg[1], sel[0], i[1]);
    and g6(and_out[2], sel_neg[2], sel[1], sel_neg[0], i[2]);
    and g7(and_out[3], sel_neg[2], sel[1], sel[0], i[3]);
    and g8(and_out[4], sel[2], sel_neg[1], sel_neg[0], i[4]);
    and g9(and_out[5], sel[2], sel_neg[1], sel[0], i[5]);
    and g10(and_out[6], sel[2], sel[1], sel_neg[0], i[6]);
    and g11(and_out[7], sel[2], sel[1], sel[0], i[7]);
    
    or g12(y, and_out[0], and_out[1], and_out[2], and_out[3], and_out[4], and_out[5], and_out[6], and_out[7]);
    
endmodule
