`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2026 12:27:27
// Design Name: 
// Module Name: Smart_Traffic_Light_Controller_TB
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


module Smart_Traffic_Light_Controller_TB(
    );
    reg clk;
    reg rst_n;
    reg en_adaptive;
    reg [2:0] side_line_1_sensors;
    reg [2:0] side_line_2_sensors;
    wire [2:0] main_line_1_lights;
    wire [2:0] main_line_2_lights;
    wire [2:0] side_line_1_lights;
    wire [2:0] side_line_2_lights;
    wire [1:0] current_line;
    wire [6:0] main_line_1_ones_position;
    wire [6:0] main_line_1_tens_position;
    wire [6:0] main_line_2_ones_position;
    wire [6:0] main_line_2_tens_position;
    wire [6:0] side_line_1_ones_position;
    wire [6:0] side_line_1_tens_position;
    wire [6:0] side_line_2_ones_position;
    wire [6:0] side_line_2_tens_position;

    Smart_Traffic_Light_Controller dut(.clk(clk),
                                       .rst_n(rst_n),
                                       .en_adaptive(en_adaptive),
                                       .side_line_1_sensors(side_line_1_sensors),
                                       .side_line_2_sensors(side_line_2_sensors),
                                       .main_line_1_lights(main_line_1_lights),
                                       .main_line_2_lights(main_line_2_lights),
                                       .side_line_1_lights(side_line_1_lights),
                                       .side_line_2_lights(side_line_2_lights),
                                       .current_line(current_line),
                                       .main_line_1_ones_position(main_line_1_ones_position),
                                       .main_line_1_tens_position(main_line_1_tens_position),
                                       .main_line_2_ones_position(main_line_2_ones_position),
                                       .main_line_2_tens_position(main_line_2_tens_position),
                                       .side_line_1_ones_position(side_line_1_ones_position),
                                       .side_line_1_tens_position(side_line_1_tens_position),
                                       .side_line_2_ones_position(side_line_2_ones_position),
                                       .side_line_2_tens_position(side_line_2_tens_position));
                                       
    initial clk = 1'b0;
    always #2 clk = ~clk;
    initial begin
        rst_n = 1'b0;
        en_adaptive = 1'b1;
        side_line_1_sensors = 3'b011;
        side_line_2_sensors = 3'b111;
        #50rst_n = 1'b1;
        #6500 en_adaptive = 1'b0;
    end
    
    initial begin
        // Run for 1000 clock cycles
        repeat (4_000) @(posedge clk);
        $finish;
    end
endmodule
