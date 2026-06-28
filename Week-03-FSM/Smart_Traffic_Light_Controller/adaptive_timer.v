`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2026 15:11:24
// Design Name: 
// Module Name: adaptive_timer
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


module adaptive_timer(
    input [1:0] side_line_1_density,
    input [1:0] side_line_2_density,
    input side_line_1_request,
    input side_line_2_request,
    input [1:0] next_line,
    output reg [5:0] green_time
    );
    parameter side_line_1_green = 3'b10,
              side_line_2_green = 3'b11;
    always @ (*) begin
        case (next_line)
            side_line_1_green : begin
                if (!side_line_1_request)
                    green_time <= 6'h00;
                else begin 
                    case (side_line_1_density)
                        2'b00 : green_time <= 6'h00;
                        2'b01 : green_time <= 6'd10;
                        2'b10 : green_time <= 6'd20;
                        2'b11 : green_time <= 6'd30;
                        default : green_time <= 6'd20;
                    endcase
                end
            end
            side_line_2_green : begin
                if (!side_line_2_request)
                    green_time <= 6'd00;
                else begin 
                    case (side_line_2_density)
                        2'b00 : green_time <= 6'd00;
                        2'b01 : green_time <= 6'd10;
                        2'b10 : green_time <= 6'd20;
                        2'b11 : green_time <= 6'd30;
                        default : green_time <= 6'd20;
                    endcase
                end
            end
            default : green_time <= 6'd40;
        endcase
    end
endmodule
