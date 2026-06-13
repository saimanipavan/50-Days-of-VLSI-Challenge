`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2026 09:54:25
// Design Name: 
// Module Name: Full_Subtractor_TB
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


module Full_Subtractor_TB(
    );
    reg a;
    reg b;
    reg borrow_in;
    wire difference;
    wire borrow_out;
    
    Full_Subtractor dut(.a(a),.b(b),.borrow_in(borrow_in),.difference(difference),.borrow_out(borrow_out));
    
    initial begin
        {a,b,borrow_in} = 3'b000;
        #10 {a,b,borrow_in} = 3'b001;
        #10 {a,b,borrow_in} = 3'b010;
        #10 {a,b,borrow_in} = 3'b011;
        #10 {a,b,borrow_in} = 3'b100;
        #10 {a,b,borrow_in} = 3'b101;
        #10 {a,b,borrow_in} = 3'b110;
        #10 {a,b,borrow_in} = 3'b111;
        end
        
        initial #90 $finish;
endmodule
