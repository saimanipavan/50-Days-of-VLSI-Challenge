`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2026 14:05:36
// Design Name: 
// Module Name: sensor_interface
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


module sensor_interface(
    input en,
    input [2:0] side_line_1_sensors,
    input [2:0] side_line_2_sensors,
    output reg [1:0] side_line_1_density,
    output reg [1:0] side_line_2_density,
    output side_line_1_request,
    output side_line_2_request
    );
    
    always @ (*) begin
        if (!en) begin
            side_line_1_density <= 2'b10;
            side_line_2_density <= 2'b10;
        end
        else begin
            case (side_line_1_sensors)
                3'b000 : side_line_1_density <= 2'b00;
                3'b001,
                3'b010,
                3'b100 : side_line_1_density <= 2'b01;
                3'b011,
                3'b110,
                3'b101 : side_line_1_density <= 2'b10;
                3'b111 : side_line_1_density <= 2'b11;
                default : side_line_1_density <= 2'b10;
            endcase
            case (side_line_2_sensors)
                3'b000 : side_line_2_density <= 2'b00;
                3'b001,
                3'b010,
                3'b100 : side_line_2_density <= 2'b01;
                3'b011,
                3'b110,
                3'b101 : side_line_2_density <= 2'b10;
                3'b111 : side_line_2_density <= 2'b11;
                default : side_line_2_density <= 2'b10;
            endcase
        end
    end
    assign side_line_1_request = side_line_1_sensors[0] |side_line_1_sensors[1] |side_line_1_sensors[2] | ~en;
    assign side_line_2_request = side_line_2_sensors[0] |side_line_2_sensors[1] |side_line_2_sensors[2] | ~en;
endmodule
