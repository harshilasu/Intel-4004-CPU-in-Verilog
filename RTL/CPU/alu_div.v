module alu_div
	#(parameter WORD_WIDTH = 32, BLOCK_WIDTH = 4)
    (input  wire [WORD_WIDTH-1:0]  a,
	  input  wire [WORD_WIDTH-1:0]  b,
	  output wire [WORD_WIDTH-1:0]  div);

`ifdef GCD

`else
	assign div = a / b;
`endif	

endmodule
