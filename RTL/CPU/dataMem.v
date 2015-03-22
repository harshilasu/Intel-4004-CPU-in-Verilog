`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: Arizona State University
// Engineer: <your name>
//
// Create Date: 10/21/2013
// Design Name: Data memory
// Module Name: data_mem
// Project Name: MIPS Processor
// Target Devices: Xilinx Spartan 6 (XC6SLX16-3CSG324)
// Tool versions: Xilinx ISE 14.6
// Description: Stores the Data
// RAM Size = 1024 x 32
// Dependencies:
// Revision 
// 0.02 - Typo fixed on 11/11/2013, pointed by Carl Strickland
// 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////
module dataMem #(parameter RAM_DEPTH = 1024, RAM_WIDTH = 32) (
  // Inputs
  read_addr, write_addr, write_en, write_data, clk, reset_b, stall,
  // Outputs
  read_data);

`include "common.vh"

  /*
   * Parameters and Compiler Directives
   */
  input  wire [RAM_WIDTH - 1:00] read_addr;
  input  wire [RAM_WIDTH - 1:00] write_addr;
  input  wire                    write_en;
  input  wire [RAM_WIDTH - 1:00] write_data;
  input  wire                    stall;
  output wire [RAM_WIDTH - 1:00] read_data;
  input                          clk;
  input                          reset_b;
     
  /*
   * Wire and register declarations
   */   
  reg [RAM_WIDTH-1:0] memory [RAM_DEPTH-1:0];
  integer i = 0;
  
  /*
   * Continuous Assignments
   */	
  assign read_data = memory[read_addr]; 

  /*
   * Sequential Logic
   */
  always@(posedge clk, negedge reset_b)
    if (~reset_b) for (i = 0; i < RAM_DEPTH; i = i + 1) memory[i] <= 'd0;
    else if (write_en & ~stall) memory[write_addr] <= write_data;
    
endmodule
