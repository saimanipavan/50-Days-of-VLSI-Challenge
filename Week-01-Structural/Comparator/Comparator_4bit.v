`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2026 13:38:48
// Design Name: 
// Module Name: Comparator_4bit
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


module Comparator_4bit(
    input [3:0] a,
    input [3:0] b,
    output a_gt_b,
    output a_eq_b,
    output a_lt_b
    );
    
    wire [3:0] a_neg;
    wire [3:0] b_neg;
    
    wire [3:0] eq_bit;
    
    not g1 (a_neg[3],a[3]);
    not g2 (a_neg[2],a[2]);
    not g3 (a_neg[1],a[1]);
    not g4 (a_neg[0],a[0]);
    
    not g5 (b_neg[3],b[3]);
    not g6 (b_neg[2],b[2]);
    not g7 (b_neg[1],b[1]);
    not g8 (b_neg[0],b[0]);
    
    xnor g9(eq_bit[3],a[3],b[3]);
    xnor g10(eq_bit[2],a[2],b[2]);
    xnor g11(eq_bit[1],a[1],b[1]);
    xnor g12(eq_bit[0],a[0],b[0]);
    
    and g13(a_eq_b,eq_bit[3],eq_bit[2],eq_bit[1],eq_bit[0]);
    
    wire [3:0]gt_bit;
    and g14(gt_bit[3],a[3],b_neg[3]);
    and g15(gt_bit[2],eq_bit[3],a[2],b_neg[2]);
    and g16(gt_bit[1],eq_bit[3],eq_bit[2],a[1],b_neg[1]);
    and g17(gt_bit[0],eq_bit[3],eq_bit[2],eq_bit[1],a[0],b_neg[0]);
    
    or g18(a_gt_b,gt_bit[3],gt_bit[2],gt_bit[1],gt_bit[0]);
    
    wire [3:0]lt_bit;
    and g19(lt_bit[3],a_neg[3],b[3]);
    and g20(lt_bit[2],eq_bit[3],a_neg[2],b[2]);
    and g21(lt_bit[1],eq_bit[3],eq_bit[2],a_neg[1],b[1]);
    and g22(lt_bit[0],eq_bit[3],eq_bit[2],eq_bit[1],a_neg[0],b[0]);
        
    or g23(a_lt_b,lt_bit[3],lt_bit[2],lt_bit[1],lt_bit[0]);
endmodule
