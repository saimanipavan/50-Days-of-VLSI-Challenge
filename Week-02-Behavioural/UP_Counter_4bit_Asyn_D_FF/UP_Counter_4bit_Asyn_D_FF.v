`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2026 14:23:10
// Design Name: 
// Module Name: UP_Counter_4bit_Asyn_D_FF
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


module UP_Counter_4bit_Asyn_D_FF(
    input clk,
    input rst_n,
    output [3:0] out
    );
    wire Q0,Q1,Q2,Q3,Q0_bar,Q1_bar,Q2_bar,Q3_bar;
    
    D_FF dff0(.clk(clk),.rst_n(rst_n),.D(Q0_bar),.Q(Q0),.Q_bar(Q0_bar));
    
    D_FF dff1(.clk(Q0_bar),.rst_n(rst_n),.D(Q1_bar),.Q(Q1),.Q_bar(Q1_bar));
    
    D_FF dff2(.clk(Q1_bar),.rst_n(rst_n),.D(Q2_bar),.Q(Q2),.Q_bar(Q2_bar));
    
    D_FF dff3(.clk(Q2_bar),.rst_n(rst_n),.D(Q3_bar),.Q(Q3),.Q_bar(Q3_bar));
    
    assign out = {Q3,Q2,Q1,Q0};
    
endmodule

module D_FF(
    input clk,
    input rst_n,
    input D,
    output reg Q,
    output Q_bar
    );
    assign Q_bar = ~Q;
    always @ ( posedge clk or negedge rst_n) begin
        if (!rst_n)
            Q <= 1'b0;
        else begin
            Q <= D;
        end
    end
endmodule
