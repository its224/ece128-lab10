`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2023 01:48:11 PM
// Design Name: 
// Module Name: multiplier_tb
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


module multiplier_tb();
    reg [3:0] a, b;
    wire [7:0] p;
    
    multiplier dut(p, a, b);
    
    initial begin
        #10 a=0; b=0;
        #10 a=1; b=5;
        #10 a=2; b=3;
        #10 a=3; b=4;
        #10 a=4; b=8;
        #10 a=5; b=9;
        #10 a=6; b=10;
        #10 a=7; b=12;
        #10 a=8; b=11;
        #10 a=9; b=1;
        #10 $stop;
    end
endmodule
