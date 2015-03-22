// 

module alu_add
	#(parameter WORD_WIDTH = 32)
    (input  wire [WORD_WIDTH-1:0] a,
	  input  wire [WORD_WIDTH-1:0] b,
	  output wire                  cout,
	  output wire [WORD_WIDTH-1:0] sum);

`define RCA_32x1

`ifdef RCA_32x1
// The basic idea of the RCA is to let each adder compute a carry and forward
// it to a subsequent adder.
	wire [WORD_WIDTH:0] carry;
	assign carry[0] = 0;
	assign cout = carry[WORD_WIDTH];
	genvar i;
	generate 
		for (i = 0; i < WORD_WIDTH; i = i + 1) begin: RCA_32x1
			fa
				i_fa (
					.A(a[i]), 
					.B(b[i]), 
					.Sum(sum[i]),  
					.Cin(carry[i]), 
					.Cout(carry[i+1]));
		end
	endgenerate		
`elsif CLA
// The Carry look ahead adder precomputes the carry ahead of time.

`elsif CSA
// The Carry skip adder...


`else
	assign {carry, sum} = a + b;
`endif	

endmodule
