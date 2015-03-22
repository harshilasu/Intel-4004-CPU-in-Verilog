`timescale 1ns / 1ns
module PCSel(PC, Instruction, Zero, Branch, Jump, nextPC);
`include "common.vh"

	input  wire [31:0] PC;
	input  wire [31:0] Instruction;
	input  wire        Zero;
	input  wire        Jump;
	input  wire        Branch;
	output reg  [31:0] nextPC;



	wire[31:0] pcInc;
	wire[31:0] Branch1;
	wire[31:0] branchAdd;
	reg [31:0] branchAdd1;
	reg[31:0] mux1; 
	wire select1 ;
	wire[31:0] jumpAdd ;
	wire ov;

	assign select1 = Branch & Zero;
	assign pcInc = PC + 32'h00000004;
	assign Branch1 = Instruction[15] ? {16'hFFFF, Instruction[15:0]} : {16'h0000, Instruction[15:0]}; // sign extension
	
	assign {ov,branchAdd} = pcInc + (Branch1 << 2); 

	assign jumpAdd = {pcInc[31:28],(Instruction[25:0] << 2 )};

	always@*
		if (Jump == 1) 
			nextPC = jumpAdd ;
		else
			nextPC = mux1;

	always@*
		if (select1)
			mux1 = branchAdd;
		else
			mux1 = pcInc;

endmodule