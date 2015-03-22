`timescale 1ns / 1ps

module ha(Cout, Sum, A, B);
    input  A, B;
	 output Cout, Sum;
	 
	 and a1 (Cout, A, B);
	 not i1 (Cbar, Cout);
	 or  o1 (p, A, B);
	 and a2 (Sum, Cbar, p);
	 
endmodule
