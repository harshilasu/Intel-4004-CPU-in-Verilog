`timescale 1ns / 1ns
`default_nettype none	//To avoid bugs involving implicit nets

module SequentialLogic (
	// Inputs
	clk_i, 
	reset_b_i, 
	writeRegister_i, 
	o_i, 
	nextProgramCounter_i, 
	memToReg_i, 
	stall_i,
	regWrite_i,  
	memWrite_i,
	// outputs
	instruction_o, 
	programCounter_o, 
	readData1_o, 
	readData2_o);

	/*
	* Parameters and Compiler Directives
	*/  
	`include "common.vh"

	input  wire                 clk_i;
	input  wire                 reset_b_i;
	input  wire [04:00]         writeRegister_i;
	input  wire                 stall_i;
	input  wire [`DATA_SZ_RNG]  o_i;
	input  wire [`PC_SZ_RNG]    nextProgramCounter_i;
	input  wire                 memToReg_i;
	input  wire                 regWrite_i;
	input  wire                 memWrite_i;
	output wire [`INSTR_SZ_RNG] instruction_o;
	output reg  [`PC_SZ_RNG]    programCounter_o;
	output wire [`DATA_SZ_RNG]  readData1_o;
	output wire [`DATA_SZ_RNG]  readData2_o;
	/*
	* Wire and register declarations
	*/  
	reg  [`DATA_SZ_RNG] registerWriteData;
	wire [`DATA_SZ_RNG] dataMemOut;
	wire                loadUpperImmediate;

	// Continuous Assignments and Combinational Logic
	assign loadUpperImmediate = (instruction_o[`OPCODE_RNG] == LUI_OP);

	always@*
		case({memToReg_i, loadUpperImmediate})
			2'b00: registerWriteData = o_i;
			2'b01: registerWriteData = {instruction_o[`IMMEDIATE_RNG], readData2_o[`IMMEDIATE_RNG]};
			2'b10: registerWriteData = dataMemOut;
			default: registerWriteData = 32'd0;
		endcase

	// Sequential Logic
	always@(posedge clk_i, negedge reset_b_i)
		if      (~reset_b_i) programCounter_o <= 32'hFFFFFFFC;
		else if (~stall_i  ) programCounter_o <= nextProgramCounter_i;

	// Module instantiations
	dataMem #(1024, 32) 
	i_dataMem (
		.clk        (clk_i),                   // I         CPU Clock
		.reset_b    (reset_b_i),               // I         Active Low Asynchronous Reset
		.read_addr  (o_i),                     // I [31:00] Read Address
		.write_addr (o_i),                     // I [31:00] Write Address
		.write_en   (memWrite_i),              // I         Write Enable
		.write_data (readData2_o),             // I [31:00] Write Data
		.read_data  (dataMemOut),              // O [31:00] Read Data
		.stall      (stall_i));                // I         Stall the synchronous logic

	instMem #(1024, 10, 32)
	i_instMem (
		.clk        (clk_i),                   //           CPU Clock
		.read_addr  (programCounter_o[11:02]), // I [31:00] Read Address
		.read_data  (instruction_o));          // O [31:00] Read Data

	registerFile #(32, 5, 32)
	i_registerFile (
		.rd_reg1    (instruction_o[`RS_RNG]), // I [04:00]
		.rd_reg2    (instruction_o[`RT_RNG]), // I [04:00]
		.wr_reg     (writeRegister_i),        // I [04:00]
		.wr_data    (registerWriteData),      // I [31:00]
		.reg_write  (regWrite_i),             // I
		.rd_data1   (readData1_o),            // O [31:00]
		.rd_data2   (readData2_o),            // O [31:00]
		.stall      (stall_i),                // I         Stall the synchronous logic
		.clk        (clk_i),                  // I         Synchronous Clock
		.reset_b    (reset_b_i));             // I         Active Low Asynchronous Reset

endmodule
