`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2023 01:52:31 PM
// Design Name: 
// Module Name: rom_tb
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


module rom_tb(
    );
    wire [3:0] ROM_data;
    reg [2:0] ROM_addr;
    
    rom dut(ROM_data, ROM_addr);
    
    initial begin
        #10 ROM_addr = 0;
        #10 ROM_addr = 1;
        #10 ROM_addr = 2;
        #10 ROM_addr = 3;
        #10 ROM_addr = 4;
        #10 ROM_addr = 5;
        #10 ROM_addr = 6;
        #10 ROM_addr = 7;
        #10 $stop;

    end
endmodule
