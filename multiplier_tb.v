`timescale 1ns/10ps

module multiplier_tb;

	reg [2:0] A, B;
	wire [5:0] P;

	multiplier uut(
		.A(A),
		.B(B),
		.P(P)
	);


	initial begin
        // Test vectors
        A = 3'b000; B = 3'b000; #10; 
        A = 3'b000; B = 3'b001; #10;  
        A = 3'b000; B = 3'b010; #10;  
        A = 3'b000; B = 3'b011; #10;  
        A = 3'b000; B = 3'b100; #10; 
        A = 3'b000; B = 3'b101; #10;
        A = 3'b000; B = 3'b110; #10;
        A = 3'b000; B = 3'b111; #10;
        A = 3'b001; B = 3'b000; #10;
        A = 3'b001; B = 3'b001; #10;
        A = 3'b001; B = 3'b010; #10;
        A = 3'b001; B = 3'b011; #10;
        A = 3'b001; B = 3'b100; #10;
        A = 3'b001; B = 3'b101; #10;
        A = 3'b001; B = 3'b110; #10;
        A = 3'b001; B = 3'b111; #10;
        A = 3'b010; B = 3'b000; #10;
        A = 3'b010; B = 3'b001; #10;
        A = 3'b010; B = 3'b010; #10;
        A = 3'b010; B = 3'b011; #10;
        A = 3'b010; B = 3'b100; #10;
        A = 3'b010; B = 3'b101; #10;
        A = 3'b010; B = 3'b110; #10;
        A = 3'b010; B = 3'b111; #10;
        A = 3'b011; B = 3'b000; #10;
        A = 3'b011; B = 3'b001; #10;
        A = 3'b011; B = 3'b010; #10;
        A = 3'b011; B = 3'b011; #10;
        A = 3'b011; B = 3'b100; #10;
        A = 3'b011; B = 3'b101; #10;
        A = 3'b011; B = 3'b110; #10;
        A = 3'b011; B = 3'b111; #10;
        A = 3'b100; B = 3'b000; #10;
        A = 3'b100; B = 3'b001; #10;
        A = 3'b100; B = 3'b010; #10;
        A = 3'b100; B = 3'b011; #10;
        A = 3'b100; B = 3'b100; #10;
        A = 3'b100; B = 3'b101; #10;
        A = 3'b100; B = 3'b110; #10;
        A = 3'b100; B = 3'b111; #10;
        A = 3'b101; B = 3'b000; #10;
        A = 3'b101; B = 3'b001; #10;
        A = 3'b101; B = 3'b010; #10;
        A = 3'b101; B = 3'b011; #10;
        A = 3'b101; B = 3'b100; #10;
        A = 3'b101; B = 3'b101; #10;
        A = 3'b101; B = 3'b110; #10;
        A = 3'b101; B = 3'b111; #10;
        A = 3'b110; B = 3'b000; #10;
        A = 3'b110; B = 3'b001; #10;
        A = 3'b110; B = 3'b010; #10;
        A = 3'b110; B = 3'b011; #10;
        A = 3'b110; B = 3'b100; #10;
        A = 3'b110; B = 3'b101; #10;
        A = 3'b110; B = 3'b110; #10;
        A = 3'b110; B = 3'b111; #10;
        A = 3'b111; B = 3'b000; #10;
        A = 3'b111; B = 3'b001; #10;
        A = 3'b111; B = 3'b010; #10;
        A = 3'b111; B = 3'b011; #10;
        A = 3'b111; B = 3'b100; #10;
        A = 3'b111; B = 3'b101; #10;
        A = 3'b111; B = 3'b110; #10;
        A = 3'b111; B = 3'b111; #10;

        

        #10 $finish;
    end

    // Dump waveform for GTKWave
    initial begin
        $dumpfile("multiplier_tb.vcd");
        $dumpvars(0, multiplier_tb);
    end
	// Your code goes here.  DO NOT change anything that is already given! Otherwise, you will not be able to pass the tests!

endmodule
