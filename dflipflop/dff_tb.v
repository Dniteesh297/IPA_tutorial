`timescale 1ns / 1ps

module dff_tb;

	// Inputs
	reg d;
	reg r;
	reg clk;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	dff uut (
		.d(d), 
		.q(q), 
		.r(r), 
		.clk(clk)
	);

	initial begin
		$monitor("time =%t \t d=%b \t q=%b \t r=%b \t clk=%b", $time , d , q , r , clk) ; 

		d = 0;
		r = 0;
		clk = 0;
		$dumpfile("dff.vcd");
		$dumpvars(0 , dff_tb);
	end
	always #1  clk = ~clk ; 
	always #1.94 r = ~r ; 
	always #3.5 d = ~d ; 
	initial #16 $finish  ; 

endmodule

