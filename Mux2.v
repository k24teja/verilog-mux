`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2026 03:18:44 PM
// Design Name: 
// Module Name: Mux2
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


module Mux2(in,sel,out);
 input [1:0]in;
 input sel;
 output out;
 wire t1,t2;


 assign t1=in[0] & ~sel;
 assign t2=in[1] & sel;
 assign out=t1 | t2;


 //assign out=in[sel];

endmodule
