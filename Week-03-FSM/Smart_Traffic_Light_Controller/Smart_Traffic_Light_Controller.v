`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2026 19:05:25
// Design Name: 
// Module Name: Smart_Traffic_Light_Controller
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


module Smart_Traffic_Light_Controller(
    input clk,
    input rst_n,
    input en_adaptive,
    input [2:0] side_line_1_sensors,
    input [2:0] side_line_2_sensors,
    output [2:0] main_line_1_lights,
    output [2:0] main_line_2_lights,
    output [2:0] side_line_1_lights,
    output [2:0] side_line_2_lights,
    output [1:0] current_line,
    output [6:0] main_line_1_ones_position,
    output [6:0] main_line_1_tens_position,
    output [6:0] main_line_2_ones_position,
    output [6:0] main_line_2_tens_position,
    output [6:0] side_line_1_ones_position,
    output [6:0] side_line_1_tens_position,
    output [6:0] side_line_2_ones_position,
    output [6:0] side_line_2_tens_position
    );
    wire sec_done;
    timer_generator time_1sec_generator(.clk(clk),
                                        .rst_n(rst_n),
                                        .done(sec_done));
    wire [1:0]side_line_1_density,side_line_2_density;
    wire side_line_1_request,side_line_2_request;
    sensor_interface sensor_values_interface(.en(en_adaptive),
                     .side_line_1_sensors(side_line_1_sensors),
                     .side_line_2_sensors(side_line_2_sensors),
                     .side_line_1_density(side_line_1_density),
                     .side_line_2_density(side_line_2_density),
                     .side_line_1_request(side_line_1_request),
                     .side_line_2_request(side_line_2_request));
    wire [1:0] next_line;
    wire [5:0] next_line_green_time;
    adaptive_timer adaptive_timer_generator(.side_line_1_density(side_line_1_density),
                                            .side_line_2_density(side_line_2_density),
                                            .side_line_1_request(side_line_1_request),
                                            .side_line_2_request(side_line_2_request),
                                            .next_line(next_line),
                                            .green_time(next_line_green_time));
    wire start_timer,timer_done;
    wire [5:0] load_time,timer_left;
    programmable_timer time_counter(.clk(clk),
                                    .rst_n(rst_n),
                                    .done_1_sec(sec_done),
                                    .start_timer(start_timer),
                                    .load_time(load_time),
                                    .timer_done(timer_done),
                                    .timer_left(timer_left));
    wire [1:0] current_line_light;//current_line_light;
    traffic_fsm traffic_fsm_main(.clk(clk),
                                 .rst_n(rst_n),
                                 .timer_done(timer_done),
                                 .adaptive_green_time(next_line_green_time),
                                 .next_line(next_line),
                                 .current_line(current_line),
                                 .current_line_light(current_line_light),
                                 .start_timer(start_timer),
                                 .load_timer(load_time));
    output_driver output_lights_driver(.current_line(current_line),
                                       .current_line_light(current_line_light),
                                       .main_line_1_lights(main_line_1_lights),
                                       .main_line_2_lights(main_line_2_lights),
                                       .side_line_1_lights(side_line_1_lights),
                                       .side_line_2_lights(side_line_2_lights));
    seven_seg_driver output_seven_seg_driver(.current_line(current_line),
                                             .time_left(timer_left),
                                             .main_line_1_ones_position(main_line_1_ones_position),
                                             .main_line_1_tens_position(main_line_1_tens_position),
                                             .main_line_2_ones_position(main_line_2_ones_position),
                                             .main_line_2_tens_position(main_line_2_tens_position),
                                             .side_line_1_ones_position(side_line_1_ones_position),
                                             .side_line_1_tens_position(side_line_1_tens_position),
                                             .side_line_2_ones_position(side_line_2_ones_position),
                                             .side_line_2_tens_position(side_line_2_tens_position));          
endmodule