`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:02:05 03/12/2022 
// Design Name: 
// Module Name:    Dadda_mul 
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
module Dadda_mul(a,b,o);

input [7:0] a,b;
output [15:0] o;
wire [7:0] p0,p1,p2,p3,p4,p5,p6,p7;

partial_product pp1(a[0],b[0],p0[0],p0[1],p0[2],p0[3],p0[4],p0[5],p0[6],p0[7]);
partial_product pp2(a[1],b[1],p1[0],p1[1],p1[2],p1[3],p1[4],p1[5],p1[6],p1[7]);
partial_product pp3(a[2],b[2],p2[0],p2[1],p2[2],p2[3],p2[4],p2[5],p2[6],p2[7]);
partial_product pp4(a[3],b[3],p3[0],p3[1],p3[2],p3[3],p3[4],p3[5],p3[6],p3[7]);
partial_product pp5(a[4],b[4],p4[0],p4[1],p4[2],p4[3],p4[4],p4[5],p4[6],p4[7]);
partial_product pp6(a[5],b[5],p5[0],p5[1],p5[2],p5[3],p5[4],p5[5],p5[6],p5[7]);
partial_product pp7(a[6],b[6],p6[0],p6[1],p6[2],p6[3],p6[4],p6[5],p6[6],p6[7]);
partial_product pp8(a[7],b[7],p7[0],p7[1],p7[2],p7[3],p7[4],p7[5],p7[6],p7[7]);

////Level 1............
//stage 1...
ha h1(p0[6],p1[5],s11,c11);
FA f1(p0[7],p1[6],p2[5],s12,c12);
FA f2(p1[7],p2[6],p3[5],s13,c13);
FA f3(p2[7],p3[6],p4[5],s14,c14);
//stage 2...
ha h2(p3[4],p4[3],s21,c21);
ha h3(p4[4],p5[3],s22,c22);

////Level 2............
//stage 1...
ha h4(p0[4],p1[3],s31,c31);
FA f4(p0[5],p1[4],p2[3],s32,c32);
FA f5(s11,p2[4],p3[3],s33,c33);
FA f6(s12,c11,s21,s34,c34);
FA f7(s13,c12,s22,s35,c35);
FA f8(s14,c13,c22,s36,c36);
FA f9(c14,p3[7],p4[6],s37,c37);
FA f10(p4[7],p5[6],p6[5],s38,c38);
//stage 2...
ha h5(p3[2],p4[1],s41,c41);
FA f11(p4[2],p5[1],p6[0],s42,c42);
FA f12(p5[2],p6[1],p7[0],s43,c43);
FA f13(c21,p6[2],p7[1],s44,c44);
FA f14(p5[4],p6[3],p7[2],s45,c45);
FA f15(p5[5],p6[4],p7[3],s46,c46);

////Level 3............
ha h6(p0[3],p1[2],s51,c51);
FA f16(s31,p2[2],p3[1],s52,c52);
FA f17(s32,c31,s41,s53,c53);
FA f18(s33,c32,c41,s54,c54);
FA f19(s34,c33,c42,s55,c55);
FA f20(s35,c34,c43,s56,c56);
FA f21(s36,c35,c44,s57,c57);
FA f22(s37,c36,c45,s58,c58);
FA f23(s38,c37,p7[4],s59,c59);
FA f24(c38,p5[7],p6[6],s510,c510);

////Level 4............
ha h7(p0[2],p1[1],s61,c61);
FA f25(s51,p2[1],p3[0],s62,c62);
FA f26(s52,c51,p4[0],s63,c63);
FA f27(s53,c52,p5[0],s64,c64);
FA f28(s54,c53,s42,s65,c65);
FA f29(s55,c54,s43,s66,c66);
FA f30(s56,c55,s44,s67,c67);
FA f31(s57,c56,s45,s68,c68);
FA f32(s58,c57,s46,s69,c69);
FA f33(s59,c58,c46,s610,c610);
FA f34(s510,c59,p7[5],s611,c611);
FA f35(c510,p7[6],p6[7],s612,c612);

////Level 5............
ha h8(p0[1],p1[0],s71,c71);
FA f36(s61,p2[0],c71,s72,c72);
FA f37(s62,c61,c72,s73,c73);
FA f38(s63,c62,c73,s74,c74);
FA f39(s64,c63,c74,s75,c75);
FA f40(s65,c64,c75,s76,c76);
FA f41(s66,c65,c76,s77,c77);
FA f42(s67,c66,c77,s78,c78);
FA f43(s68,c67,c78,s79,c79);
FA f44(s69,c68,c79,s710,c710);
FA f45(s610,c69,c710,s711,c711);
FA f46(s611,c610,c711,s712,c712);
FA f47(s612,c611,c712,s713,c713);
FA f48(p7[7],c612,c713,s714,c714);

assign o= {c714,s714,s713,s712,s711,s710,s79,s78,s77,s76,s75,s74,s73,s72,s71,p0[0]};


endmodule
