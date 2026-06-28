`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2026 16:15:22
// Design Name: 
// Module Name: traffic_fsm
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


module traffic_fsm(
    input clk,
    input rst_n,
    input timer_done,
    input [5:0] adaptive_green_time,
    output reg [1:0] next_line,
    output reg [1:0] current_line,
    output reg [1:0] current_line_light,
    output reg start_timer,
    output reg [5:0] load_timer
    );
    
    reg [1:0] current_state,next_state;
    parameter IDLE = 2'b00,
              green = 2'b01,
              yellow = 2'b10,
              all_red = 2'b11;
    always @ (posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            current_state <= IDLE;
            current_line <= 2'b00;
            next_line <= 2'b00;
        end
        else begin
            current_state <= next_state;
            case (current_state) 
                all_red : current_line <= next_line;
                yellow : begin
                    if (current_line == 2'b11)
                        next_line <= 2'b00;
                    else 
                        next_line <= current_line + 1'b1;
                end
                default : begin
                    current_line <= current_line;
                    next_line <= next_line;
                end
            endcase
        end  
    end
    always @ (*) begin
        case (current_state)
            IDLE : begin
                next_state = green;
            end
            green : begin
                if (timer_done)
                    next_state = yellow;
                else
                    next_state = green;
            end
            yellow : begin
                if (timer_done)
                    next_state = all_red;
                else 
                    next_state = yellow;
            end
            all_red : begin
                if (timer_done)
                    next_state = green;
                else
                    next_state = all_red;
            end
            default : next_state = current_state;
        endcase
    end
    always @ (*) begin
        //current_line = 2'b00;
        //next_line = 2'b00;
        //load_timer = 6'd00;
        //start_timer = 1'b0;
        //current_line_light = 2'b00; 
        case (current_state)
            IDLE : begin
                //current_line = 2'b00;
                //next_line = 2'b00;
                load_timer = 6'd00;
                start_timer = 1'b0;
                current_line_light = 2'b00;
            end
            green : begin
                //current_line = next_line;
                load_timer = adaptive_green_time;
                start_timer = 1'b1;
                current_line_light = 2'b01;
            end
            yellow : begin
                load_timer = 6'd05;
                start_timer = 1'b1;
                //if (current_line == 2'b11)
                    //next_line = 2'b00;
                //else 
                    //next_line = current_line + 1'b1;
                current_line_light = 2'b10;
            end
            all_red : begin
                load_timer = 6'd01;
                start_timer = 1'b1;
                current_line_light = 2'b11;
            end
            default : begin
                //current_line = 2'b00;
                //next_line = 2'b00;
                load_timer = 6'd00;
                start_timer = 1'b0;
                current_line_light = 2'b00; 
            end
        endcase
    end
endmodule
