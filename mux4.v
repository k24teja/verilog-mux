`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2026 03:17:12 PM
// Design Name: 
// Module Name: mux4
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


module mux4(in,sel,out);
 input[3:0]in;
 input[1:0]sel;
 output out;
 wire [1:0]t;
 Mux2 m6(.in(in[1:0]),.sel(sel[0]),.out(t[0]));
 Mux2 m7(.in(in[3:2]),.sel(sel[0]),.out(t[1]));
 Mux2 m8(.in(t),.sel(sel[1]),.out(out));


endmodule