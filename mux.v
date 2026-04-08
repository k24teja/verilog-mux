`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2026 03:15:33 PM
// Design Name: 
// Module Name: mux
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


module mux(in,sel,out);
 input [15:0]in;
 input [3:0]sel;
 output out;
 wire [3:0]t;
 mux4 m1(.in(in[3:0]),.sel(sel[1:0]),.out(t[0]));
 mux4 m2(.in(in[7:4]),.sel(sel[1:0]),.out(t[1]));
 mux4 m3(.in(in[11:8]),.sel(sel[1:0]),.out(t[2]));
 mux4 m4(.in(in[15:12]),.sel(sel[1:0]),.out(t[3]));
 mux4 m5(.in(t),.sel(sel[3:2]),.out(out));



endmodule