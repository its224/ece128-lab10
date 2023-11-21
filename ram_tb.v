`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2023 01:59:39 PM
// Design Name: 
// Module Name: ram_tb
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


module ram_tb();
    reg i_clk;
    reg i_rst;
    reg i_write_en;
    reg [2:0] i_addr;
    reg [3:0] i_write_data;
    wire [3:0] o_read_data;
    
    ram dut(i_clk, i_rst, i_write_en, i_addr, i_write_data, o_read_data);
   
    initial begin
    i_clk = 0;
        forever #5 i_clk = ~i_clk;
    end
    
    initial begin
    #10 i_rst = 1; 
    #10 i_rst = 0; i_write_en = 1; i_addr = 3; i_write_data = 7;
    #10 i_write_en = 0; i_addr = 3;
    #10 i_rst = 0; i_write_en = 1; i_addr = 5; i_write_data = 3;
    #10 i_write_en = 0; i_addr = 5;
    #10 i_rst = 0; i_write_en = 1; i_addr = 7; i_write_data = 5;
    #10 i_write_en = 0; i_addr = 7;
    #10 i_rst = 1;
    #10 $stop;
   
    end
    
endmodule
