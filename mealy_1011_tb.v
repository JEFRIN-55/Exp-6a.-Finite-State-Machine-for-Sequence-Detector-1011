`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2025 18:37:41
// Design Name: 
// Module Name: mealy_1011_tb
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


module mealy_1011_tb;

reg clk_t, rst_t, xin_t;
wire zout_t;

mealy_1011 dut (.clk(clk_t), .rst(rst_t), .xin(xin_t), .zout(zout_t));
always #5 clk_t = ~clk_t;

initial
    begin
        clk_t = 0;
        rst_t = 1'b1;
    #10
        rst_t = 0;
        xin_t = 1'b1;
    #10 
        xin_t =1'b1;
    #10 
        xin_t = 1'b0;
    #10 
        xin_t = 1'b1;
    #10 
        xin_t = 1'b1;
    #10 
        xin_t =1'b0;
    #10 
        xin_t = 1'b0;
    #10 
        xin_t = 1'b1;
    #10 
        xin_t = 1'b0;
    #10 
        xin_t =1'b1;
    #10 
        xin_t = 1'b1;
    #10 
        xin_t = 1'b0;
    end
endmodule
