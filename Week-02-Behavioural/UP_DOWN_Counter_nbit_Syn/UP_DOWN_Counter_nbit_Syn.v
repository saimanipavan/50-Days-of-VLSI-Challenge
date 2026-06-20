`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2026 12:31:10
// Design Name: 
// Module Name: UP_DOWN_Counter_nbit_Syn
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


module UP_DOWN_Counter_nbit_Syn#(
    parameter Data_Width = 4
    )(
    input clk,
    input rst_n,
    input UP_DOWN,
    output reg [Data_Width-1:0] out
    );
    always @ (posedge clk or negedge rst_n) begin
        if(!rst_n)
            out <= {Data_Width{1'b0}};
        else begin
            if(UP_DOWN == 1'b1)
                out <= out + 1'b1;
            else if (UP_DOWN == 1'b0)
                out <= out - 1'b1;
            else
                out <= out;
        end
    end
endmodule
