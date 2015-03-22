`timescale 1ns / 1ns
`default_nettype none	//To avoid bugs involving implicit nets

module mips_sc_top(
   // Inputs
   clk_i, 
	rst_i, 
	stall_i,
	memoryReadData_i, 
	// Outputs
	memoryAddress_o, 
	memoryWrite_o,
	memoryRead_o,
	memoryWriteData_o);
	
   input  wire         clk_i;
	input  wire         rst_i;
	input  wire         stall_i;
	input  wire [31:00] memoryReadData_i;
   output wire [31:00] memoryAddress_o;
   output wire         memoryWrite_o;
	output wire         memoryRead_o;
	output wire [31:00] memoryWriteData_o;
	
	// Intern wire declarations
	wire [31:0] nextProgramCounter;
	wire [31:0] programCounter;
	wire        memToReg;
	wire        regWrite;
	wire        memWrite;
	wire        memRead;
	wire [04:0] writeRegister;
   wire [31:0] instruction;
	wire [31:0] readData1;
	wire [31:0] readData2;
	wire        regDest;
	
	assign memoryRead_o      = memRead;
	assign memoryWrite_o     = memWrite;
	assign memoryWriteData_o = readData2;
	assign writeRegister     = regDest ? instruction[15:11] : instruction[20:16];
	
   // This module consists of the MIPS processor
   SequentialLogic sl
      (.clk_i                (clk_i),
       .reset_b_i            (rst_i),
       .writeRegister_i      (writeRegister),
       .o_i                  (memoryAddress_o),
       .nextProgramCounter_i (nextProgramCounter),
       .memToReg_i           (memToReg),
       .stall_i              (stall_i),
       .regWrite_i           (regWrite),
       .memWrite_i           (memWrite),
		 // Outputs
		 .instruction_o        (instruction),
		 .programCounter_o     (programCounter),
       .readData1_o          (readData1),
		 .readData2_o          (readData2));

   ControlLogic cl
      (.instruction_i        (instruction),
       .programCounter_i     (programCounter),
       .readData1_i          (readData1),
       .readData2_i          (readData2),
       .regDest_o            (regDest),
       .o_o                  (memoryAddress_o),
       .nextProgramCounter_o (nextProgramCounter),
       .memToReg_o           (memToReg),
       .regWrite_o           (regWrite),
		 .memRead_o            (memRead),
       .memWrite_o           (memWrite));
                                 
endmodule
