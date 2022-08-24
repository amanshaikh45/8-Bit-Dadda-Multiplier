`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:36:29 06/14/2019 
// Design Name: 
// Module Name:    partial_product 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module partial_product(a,b,p0,p1,p2,p3,p4,p5,p6,p7);

input [7:0] b;
input a;
output p0,p1,p2,p3,p4,p5,p6,p7;
assign p0 = b[0] & a;
assign p1 = b[1] & a;
assign p2 = b[2] & a;
assign p3 = b[3] & a;
assign p4 = b[4] & a;
assign p5 = b[5] & a;
assign p6 = b[6] & a;
assign p7 = b[7] & a;
endmodule
