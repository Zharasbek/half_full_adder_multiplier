`timescale 1ns/10ps

module multiplier (
    input [2:0] A, B,
    output [5:0] P
);

	// Your code goes here.  DO NOT change anything that is already given! Otherwise, you will not be able to pass the tests!
    wire [7:0] S;
    wire [4:0] Carries;
    wire [1:0] G;

    and(P[0], A[0], B[0]);
    and(S[0], A[1], B[0]);
    and(S[1], A[0], B[1]);
    and(S[2], A[2], B[0]);
    and(S[3], A[1], B[1]); 
    and(S[4], A[2], B[1]);
    and(S[5], A[0], B[2]);
    and(S[6], A[1], B[2]);
    and(S[7], A[2], B[2]);

    half_adder H1(S[0], S[1], P[1], Carries[0]);
    half_adder H2(S[2], S[3], G[0], Carries[1]);

    full_adder F1(S[5], G[0], Carries[0], P[2], Carries[2]);
    full_adder F2(S[6], S[4], Carries[1], G[1], Carries[3]);

    half_adder H3(G[1], Carries[2], P[3], Carries[4]);
    full_adder F3(S[7], Carries[3], Carries[4], P[4], P[5]);

endmodule
