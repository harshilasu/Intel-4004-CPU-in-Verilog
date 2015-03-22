`timescale 1ns / 1ps

module fa(Cout, Sum, A, B, Cin);
    input A, B, Cin;
	 output Sum, Cout;
	 
	 ha ha1 (g1, temp1, A, B);
	 ha ha2 (g2, Sum, temp1, Cin);
	 or or1 (Cout, g1, g2);

endmodule
