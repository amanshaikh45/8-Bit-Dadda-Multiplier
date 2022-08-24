`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:11:57 03/25/2022
// Design Name:   Dedda_mul
// Module Name:   C:/Users/as355/Downloads/PROJ/OUTPUT/2 method/Dadda_tb.v
// Project Name:  Dadda_Mul
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Dedda_mul
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Dadda_tb;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;

	// Outputs
	wire [15:0] op;

	// Instantiate the Unit Under Test (UUT)
	Dadda_mul uut (
		.a(a), 
		.b(b), 
		.op(op)
	);

	
	
initial
repeat(15)
begin
	#10 a = $random; b = $random;
	#100//give required simulation time to complete the operation one by one.
	#100
	#10
	//-----VERIFICATION OF THE OBTAINED RESULT WITH EXISTING RESULT------
	$display(" a=%d,b=%d,axb=%d",(a),(b),(op));

	if( (a)*(b) != (op)) 
		$display(" *ERROR* ");

end

endmodule

