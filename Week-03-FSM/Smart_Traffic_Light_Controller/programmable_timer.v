`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2026 15:29:20
// Design Name: 
// Module Name: programmable_timer
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


module programmable_timer(
    input clk,
    input rst_n,
    input done_1_sec,
    input start_timer,
    input [5:0] load_time,
    
    output reg timer_done,
    output reg [5:0] timer_left
    );
    reg [1:0] current_state, next_state;
    parameter IDLE = 2'b00,
              Load_timer = 2'b01,
              Timer_running = 2'b10,
              Timer_done = 2'b11;
    always @ (posedge clk or negedge rst_n) begin
        if(!rst_n)
            current_state <= IDLE;
        else 
            current_state <= next_state;  
    end
    
    always @ (*) begin
        case(current_state)
            IDLE : begin
                if (start_timer) 
                    next_state = Load_timer;
                else 
                    next_state = IDLE;
            end
            Load_timer : 
                next_state = Timer_running;
            Timer_running : begin
                if (timer_left == 6'd00 && done_1_sec) 
                    next_state = Timer_done;
                else
                    next_state = Timer_running;
            end
            Timer_done : 
                next_state = IDLE;
            default : next_state = IDLE;
        endcase
    end
    
    always @ (posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            timer_done <= 1'b0;
            timer_left <= 6'd00;
        end
        else begin
            timer_done <= 1'b0;
            case (current_state)
                IDLE : begin
                    timer_left <= 6'd00;
                end
                Load_timer : begin
                    timer_left <= load_time;
                end
                Timer_running : begin
                    if (done_1_sec && timer_left > 6'd00)
                        timer_left <= timer_left - 1'b1;
                    else 
                        timer_left <= timer_left;
                end
                Timer_done : begin
                    timer_done <= 1'b1;
                end
            endcase    
        end
    end
endmodule
