module alu_mul
	#(parameter WORD_WIDTH = 32)
    (input  wire [     WORD_WIDTH  - 1:0] a,
	  input  wire [     WORD_WIDTH  - 1:0] b,
	  output wire [(2 * WORD_WIDTH) - 1:0] mul);

`ifdef BOOTH



`elsif WALLACE


`else
	assign mul = a * b;
`endif	

endmodule
