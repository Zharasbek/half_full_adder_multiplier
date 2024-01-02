`timescale 1 ns/10 ps
module full_adder_tb;

    // Your code goes here.  DO NOT change anything that is already given! Otherwise, you will not be able to pass the tests!
    reg A;
    reg B;
    reg Cin;
    wire S;
    wire Cout;

    // Instantiate the module to be tested
    full_adder uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Cout(Cout)
    );

    initial begin 
        A = 0; B = 0; Cin = 0;
        #10 A = 0; B = 0; Cin = 1;
        #10 A = 0; B = 1; Cin = 0;
        #10 A = 0; B = 1; Cin = 1;
        #10 A = 1; B = 0; Cin = 0;
        #10 A = 1; B = 0; Cin = 1;
        #10 A = 1; B = 1; Cin = 0;
        #10 A = 1; B = 1; Cin = 1;
        #10 $finish;
    end

    // Dump waveform for GTKWave
    initial begin
        $dumpfile("full_adder_tb.vcd");
        $dumpvars(0, full_adder_tb);
    end

endmodule
