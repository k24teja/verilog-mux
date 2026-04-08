`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2026 03:20:56 PM
// Design Name: 
// Module Name: mux_tb
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


module mux_tb;
 reg [15:0]in;
 reg [3:0]sel;
 wire out;
 mux DUT(.in(in),.sel(sel),.out(out));
 initial begin
 in =16'h0000;
 sel=4'h0;
 #5;
 in=16'hAC5A;
 sel=4'h0;
 #10;
 sel=4'h5;
 #20;
 sel=4'hF;
 #20;
 $stop;
 end
 initial begin
 $monitor("TIME=%0t |sel=%h |in[%0d]=%b |out=%b",$time,sel,sel,in[sel],out);
 end

endmodule