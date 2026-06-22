`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2026 13:50:59
// Design Name: 
// Module Name: Moore_Sequence_Detector_Non_Overlaping
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


module Moore_Sequence_Detector_Non_Overlaping(
    input clk,
    input rst_n,
    input in,
    output out
    );
    parameter  IDLE = 3'b000,
               S_1 = 3'b001,
               S_10 = 3'b010,
               S_101 = 3'b011,
               S_1011 = 3'b100,
               S_10110 = 3'b101,
               S_101101 = 3'b110;
    reg [2:0] cur_state, next_state;
    always @ (posedge clk or negedge rst_n) begin
        if(!rst_n)
            cur_state <= IDLE;
        else 
            cur_state <= next_state;
    end
    
    always @ (cur_state or in) begin
        case(cur_state) 
            IDLE : begin
                if (in) next_state = S_1;
                else next_state = IDLE;
            end
            S_1 : begin
                if (in) next_state = S_1;
                else next_state = S_10;
            end
            S_10 : begin
                if (in) next_state = S_101;
                else next_state = IDLE;
            end
            S_101 : begin
                if (in) next_state = S_1011;
                else next_state = S_10;
            end
            S_1011 : begin
                if (in) next_state = S_1;
                else next_state = S_10110;
            end
            S_10110 : begin
                if (in) next_state = S_101101;
                else next_state = IDLE;
            end
            S_101101 : begin
                if (in) next_state = S_1;
                else next_state = IDLE;
            end
            default : next_state = IDLE;           
        endcase
    end
    
    assign out = cur_state == S_101101;
endmodule
