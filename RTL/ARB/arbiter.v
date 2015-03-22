`timescale 1ns / 1ns

module arbiter(memoryAddress_i, chipEnable_o);
	 input wire [31:00] memoryAddress_i;
	 output reg [01:00] chipEnable_o;
	 
	 always@*
		casez(memoryAddress_i)
			32'h0???????: chipEnable_o = 2'b01;
			32'h8???????: chipEnable_o = 2'b10;
			default     : chipEnable_o = 2'b00;
	   endcase
	
endmodule
