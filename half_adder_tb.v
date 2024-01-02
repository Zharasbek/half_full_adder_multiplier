`timescale 1ns/10ps

module half_adder_tb;

	// Your code goes here.  DO NOT change anything that is already given! Otherwise, you will not be able to pass the tests!
	reg A, B;
	wire S, C;

	half_adder uut(
		.A(A),
		.B(B),
		.S(S),
		.C(C)
	);

	initial begin
		A = 1'b0;
		B = 1'b0;

		#10 A = 1'b1; B = 1'b0;
		#10 A = 1'b0; B = 1'b1;
		#10 A = 1'b1; B = 1'b1;
	end

	initial begin
		$monitor("A=%b, B=%b, S=%b, C=%b", A, B, S, C);
	end

	initial begin
		$dumpfile("half_adder_tb.vcd");
		$dumpvars(0, half_adder_tb);
	end

	initial begin
		#50 $finish;
	end

endmodule
