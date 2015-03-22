`timescale 1ns / 1ns
`default_nettype none   //To avoid bugs involving implicit nets
// Top level module is required to connect the various physical signals 
// on the board. Refer to the .ucf files to see the pins
module fpga_top
(input  wire         clk_i,   // The clock signal of the board. We sample it to get a new clock
	input  wire         btnm_i,  // The reset signal for the design
	// Switch Interface
	input  wire [07:00] sw_i,    // Buttons to indicate modes
	// LED Interface
	output wire [07:00] led_o,   // LEDS for debugging
	// 7-Segment LED Display
	output wire [03:00] an_o,    // Anodes of the seven segment display
	output wire [07:00] seg_o,   // Cathodes of the seven segment display
	// Cellular RAM Interface
	output wire         RamAdv,
	output wire         RamCS,
	output wire         RamClk, 
	output wire         RamCRE,
	output wire         RamLB,
	output wire         RamUB,
	input  wire         RamWait,
	output wire         MemOE,
	output wire         MemWR,
	inout  wire [15:00] MemDB,
	output wire [25:00] MemAdr);
	///////////////////////////////////////////////////////////////////////
	// DESIGN SPECIFIC PARAMETER DECLARATIONS
	///////////////////////////////////////////////////////////////////////
	wire         sysRst;  // Global Reset
	wire [31:00] memoryAddress;
	wire         stall;
	wire [31:00] memoryWriteData;
	wire [31:00] memoryReadData;
	wire         memoryWrite;
	wire         memoryRead;
	wire [01:00] cen;

	assign led_o = {memoryAddress[4:0],cen};    
	assign stall = 0;
	////////////////////////////////////////////////////////////////////////////
	// MODULE INSTANTIATIONS
	////////////////////////////////////////////////////////////////////////////
	// This module provides the stable clocks, global reset and intensity modes.
	//	It contains a PLL so that the clocks are stable
	scu scu 
	(.clk_i              (clk_i),         // The hardware clock on the board
		.rstn_i             (btnm_i),        // 
		.async_rst_o        (sysRst));       // Global Reset

	mips_sc_top mst 
	(.clk_i              (clk_i),         //
		.rst_i              (sysRst),        // System reset
		.stall_i            (stall),         //	 
		.memoryReadData_i   (memoryReadData),//
		.memoryAddress_o    (memoryAddress), //
		.memoryWrite_o      (memoryWrite),   //
		.memoryRead_o       (memoryRead),    //
		.memoryWriteData_o  (memoryWriteData));

	memory_interface  mif (
		.addr_o             (MemAdr),                // (O) [22:0] Inputs for addresses during READ and WRITE operations.
		.clk_o              (RamClk),                // (O)        Synchronizes the memory to the system operating frequency during synchronous operations. 
		.addr_valid_o       (RamAdv),                // (O)        Indicates that a valid address is present on the address inputs.
		.cntl_reg_enable_o  (RamCRE),                // (O)        When CRE is HIGH, WRITE operations load the RCR or BCR, and READ operations access the RCR, BCR, or DIDR.
		.chip_enable_o      (RamCS),                 // (O)        Activates the device when LOW. When CE# is HIGH, the device is disabled and goes into standby or deep power-down mode.
		.output_enable_o    (MemOE),                 // (O)        Enables the output buffers when LOW. When OE# is HIGH, the output buffers are disabled.
		.write_en_o         (MemWR),                 // (O)        Determines if a given cycle is a WRITE cycle. If WE# is LOW, the cycle is a WRITE to either a configuration register or to the memory array.
		.lower_byte_en_o    (RamLB),                 // (O)        Lower byte enable. DQ[7:0]
		.upper_byte_en_o    (RamUB),                 // (O)        Upper byte enable. DQ[15:8]
		.data_io            (MemDB),                 // (T) [15:0] Data inputs/outputs.
		.wait_i             (RamWait),               // (I)        Provides data-valid feedback during burst READ and WRITE operations. 
		.addr_i             (memoryAddress[25:0]),   // (I) [25:0]
		.we_i               (memoryWrite),           // (I)
		.data_i             (memoryWriteData[15:0]), // (I) [15:0]
		.data_o             (memoryReadData[15:0]),  // (O) [15:0]
		.clk_i              (clk_i),                 // (I) 
		.go_i               (memoryWrite | memoryRead)); //

	// This module displays the data on the seven segment
	// display. Primarily used to debug and observe values.
	Seven_Segment_Display 
	#(.CLOCKFREQ         (100),                   //
		.DIGITS            (4))                     //
	ssd
	(.clk_i           (clk_i),
		.data_i          (memoryWriteData[15:0]), // Data to display
		.dots_i          (4'h0),                  // We disable dots
		.an_o            (an_o),                  //
		.ca_o            (seg_o));                //                 

endmodule
