`timescale 1ns / 1ns
`default_nettype none	//To avoid bugs involving implicit nets

module ControlLogic (
	// Inputs
	instruction_i, programCounter_i, readData1_i, readData2_i,
	// Outputs
	regDest_o, o_o, nextProgramCounter_o, memRead_o, memToReg_o, regWrite_o, memWrite_o);

	/*
	* Parameters and Compiler Directives
	*/
	`include "common.vh"
	// Inputs
	input wire  [`INSTR_SZ_RNG] 	instruction_i;
	input wire  [`PC_SZ_RNG]    	programCounter_i;
	input wire  [`DATA_SZ_RNG]  	readData1_i;
	input wire  [`DATA_SZ_RNG]  	readData2_i;
	// Outputs
	output wire                 	regDest_o;
	output wire [`DATA_SZ_RNG]  	o_o;
	output wire [`PC_SZ_RNG]    	nextProgramCounter_o;
	output wire                 	memRead_o;
	output wire							memToReg_o;
	output wire                 	regWrite_o;
	output wire                 	memWrite_o;

	/*
	* Wire and register declarations
	*/
	wire                 Zero, ALUSrc, SignExtend, of, Jump, Branch;
	wire [`DATA_SZ_RNG]  ALUSrcData;
	wire [`INSTR_SZ_RNG] SignExtendedInstruction;
	wire [04:00]         shamt;

	assign ALUSrcData              = ALUSrc ? SignExtendedInstruction : readData2_i;
	assign SignExtendedInstruction = (SignExtend & instruction_i[15]) ?  
                                       {16'hFFFF, instruction_i[`IMMEDIATE_RNG]} : 
												   {16'h0000, instruction_i[`IMMEDIATE_RNG]};
	
	/*
	* Module instantiations
	*/
	ALU 
	i_ALU(
		.rs              (readData1_i),    // (I) [31:00] Register Data A
		.rt              (ALUSrcData),     // (I) [31:00] Register Data B or Memory Data
		.Instruction     (instruction_i),  // (I) [31:00]
		.shamt           (shamt),          // (I) [04:00]
		.O               (o_o),            // (O) [31:00]
		.of              (of),             // (O)         ALU Result produced an overflow
		.Zero            (Zero));          // (O)         Was the ALU result 0?

	InstructionDecoder
	i_InstructionDecoder (                //
		.instruction     (instruction_i),  // (I) [31:00]) Instruction
    	.shamt           (shamt),          // (O) [04:00]
		.RegDest         (regDest_o),      // (O) Which register destination in in the Instruction should we use when storing the result
		.Jump            (Jump),           // (O) Is the instruction a jump instruction?
		.Branch          (Branch),         // (O)
		.MemRead         (memRead_o),      // (O)
		.MemtoReg        (memToReg_o),     // (O)
		.MemWrite        (memWrite_o),     // (O) Is our result to be stored in memory?
		.ALUSrc          (ALUSrc),         // (O)
		.SignExtend      (SignExtend),     // (O) Indicated whether or not the current instruction needs to be sign extended.
		.RegWrite        (regWrite_o));    // (O) Is our result to be stored in a register?

	PCSel
	i_PCSel (
		.PC              (programCounter_i),      // (I) [31:00] Program Counter
		.Instruction     (instruction_i),         // (I) [31:00] Instruction
		.Zero            (Zero),                  // (I) Was the ALU result 0?
		.Branch          (Branch),                // (I) Is the instruction a branch instruction
		.Jump            (Jump),                  // (I) Is the instruction a jump instruction?
		.nextPC          (nextProgramCounter_o)); // (O) [31:00] What is the value computed for the next program  counter location?

endmodule
