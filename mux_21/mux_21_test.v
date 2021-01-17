`timescale 1ns / 1ps

module mux_21_test;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux_21 uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.y(y)
	);

	initial begin
		$dumpfile("mux_21_test.vcd");
     	$dumpvars(0,mux_21_test);
		// Initialize Inputs
		a = 1'b0;
		b = 1'b0;
		c = 1'b0;

		// Wait 100 ns for global reset to finish
		#100 $finish;
		end
		
		always #25 c=~c;
		always #10 b=~b;
		always #5 a=~a;
        
		// Add stimulus here
	always @(y)
    $display( "time =%0t \t c=%b b=%b a=%b \t output value y  =%b",$time,c,b,a,y);
      
endmodule

