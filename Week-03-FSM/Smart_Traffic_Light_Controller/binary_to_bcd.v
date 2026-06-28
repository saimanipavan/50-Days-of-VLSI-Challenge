`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2026 11:34:16
// Design Name: 
// Module Name: binary_to_bcd
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


module binary_to_bcd
    (
        input  [5:0] binary,
        output reg [3:0] tens,
        output reg [3:0] ones
    );

    integer i;
    reg [13:0] shift_reg;
    
    always @(*) begin
    
        shift_reg = 14'd0;
    
        shift_reg[5:0] = binary;
    
        for(i = 0; i < 6; i = i + 1) begin
    
            if(shift_reg[9:6] >= 5)
                shift_reg[9:6] = shift_reg[9:6] + 3;
    
            if(shift_reg[13:10] >= 5)
                shift_reg[13:10] = shift_reg[13:10] + 3;
    
            shift_reg = shift_reg << 1;
        end
    
        ones = shift_reg[9:6];
        tens = shift_reg[13:10];
    
    end

endmodule
