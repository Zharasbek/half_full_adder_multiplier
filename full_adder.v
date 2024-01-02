`timescale 1ns/10ps


module full_adder(
    input A, B, Cin,
    output S, Cout
);
    wire t1, t2, t3;

    half_adder H1(A, B, t1, t2);
    half_adder H2(t1, Cin, S, t3);
    or(Cout, t3, t2);

	// Your code goes here.  DO NOT change anything that is already given! Otherwise, you will not be able to pass the tests!

endmodule
