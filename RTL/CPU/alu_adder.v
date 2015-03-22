module alu_add
	#(parameter WORD_WIDTH = 32, BLOCK_WIDTH = 4)
    (input  wire [WORD_WIDTH-1:0]  a,
	  input  wire [WORD_WIDTH-1:0]  b,
	  output wire         carry,
	  output wire [WORD_WIDTH-1:0] sum);

`ifdef RCA
	wire [(BLOCK_WIDTH) - 1:0] carry [(WORD_WIDTH/BLOCK_WIDTH - 1):0];
	assign carry[0] = 0;
	assign cout     = 
	genvar i;
	generate 
		for (i = 0; i < width; i = i + 1) begin
			FA 
				fa(
					a[i], 
					b[i], 
					carry[i],   /* Carry In */
					carry[i+1], /* Carry In */
					sum[i]);    /* Carry Out */
`elsif CSA

`else
	assign {carry, sum} = a + b;
`endif	

endmodule
