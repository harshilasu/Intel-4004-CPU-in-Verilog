`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: read_data Arizona State University
// Engineer: read_data <your name>
//
// Create Date: read_data 10/21/2013
// Design Name: read_data Data memory
// Module Name: read_data data_mem
// Project Name: read_data MIPS Processor
// Target Devices: read_data Xilinx Spartan 6 (XC6SLX16-3CSG324)
// Tool versions: read_data Xilinx ISE 14.6
// Description: read_data Stores the Data
// RAM Size = 1024 x 32
// Dependencies: read_data
// Revision 0.01 - File Created
// Additional Comments: read_data
//
//////////////////////////////////////////////////////////////////////////////////
module instMem #(parameter DATA_DEPTH = 1024, ADDR_WIDTH = 10, DATA_WIDTH = 32) 
	(clk, read_addr, read_data);
  
  // [`include: read_data To reference Verilog include files, use the `include syntax in 
  // your Verilog source file
  `include "common.vh"
    
  input  wire                    clk;
  input  wire [ADDR_WIDTH - 1:0] read_addr;
  output reg  [DATA_WIDTH - 1:0] read_data;

   reg [DATA_WIDTH-1:0] memory [DATA_DEPTH-1:0];

   always@*
      case(read_addr)
		   0: read_data = {LUI_OP, 5'd0, R01,             16'h4567};
         1: read_data = {SRL_OP, 5'd0, R01, R01, 5'd16, SRL_FUNC};
         2: read_data = {LUI_OP, 5'd0, R01,             16'h0123};
         3: read_data = {LUI_OP, 5'd0, R02,             16'hCDEF};
         4: read_data = {SRL_OP, 5'd0, R02, R02, 5'd16, SRL_FUNC};
         5: read_data = {LUI_OP, 5'd0, R02,             16'h89AB};
         6: read_data = {LUI_OP, 5'd0, R03,             16'h1111};         
         7: read_data = {SRL_OP, 5'd0, R03, R03, 5'd16, SRL_FUNC};
         8: read_data = {LUI_OP, 5'd0, R03,             16'h2222};
         9: read_data = {ADD_OP,  R02, R03, R04, 5'd0,  ADD_FUNC};
        10: read_data = {SUB_OP,  R02, R03, R04, 5'd0,  SUB_FUNC};
        11: read_data = {AND_OP,  R02, R03, R04, 5'd0,  AND_FUNC};
        12: read_data = {OR_OP,   R02, R03, R04, 5'd0,  OR_FUNC};
        13: read_data = {SLT_OP,  R01, R02, R03, 5'd0,  SLT_FUNC};
        14: read_data = {SRL_OP,  R00, R00, R05, 5'd31, SRL_FUNC}; // @350 resultRD  = 0x00000000
        15: read_data = {SW_OP,   R00, R02, 16'd4};                // @370 resultMEM = 0x11112222
        16: read_data = {LW_OP,   R00, R03, 16'd4};                // @390 resultR2  = 0x11112222
        17: read_data = {BEQ_OP,  R01, R01, 16'd1};                // @410 BEQ (TAKEN)
        18: read_data = {LUI_OP,  R00, R02, 16'h8675};             // NEVER HAPPENS
        19: read_data = {BEQ_OP,  R01, R02, 16'd2};                // @430 BEQ (NOT TAKEN)
        20: read_data = {BNE_OP, R01, R02, 16'd1};                 // @450 BNE (TAKEN)
        21: read_data = {LUI_OP, R00, R03, 16'h0309};              // NEVER HAPPENS
        22: read_data = {BNE_OP, R02, R02, 16'd3};                 // @470 BNE (NOT TAKEN)     
        23: read_data = {NOR_OP, R01, R02, R03, 5'd0, NOR_FUNC};   // @490 resultRD = ~(0x89ABCDEF | 0x11112222) = ~(0x99BBEFEF) = 0x66441010
        24: read_data = {J_OP, 26'd27};                            // @510 PC = 26
        25: read_data = {LUI_OP, R00, R02, 16'h8675};              // NEVER HAPPENS
        26: read_data = {LUI_OP, R00, R02, 16'h5309};              // NEVER HAPPENS
        27: read_data = {LUI_OP, R00, R02, 16'h7439};              // @530 resultRT = 0x74392222
        28: read_data = {SLT_OP, R01, R01, R03, 5'd0, SLT_FUNC};   // @550 resultRD = 0x00000000
        29: read_data = {NOR_OP, R00, R00, R02, 5'd0, NOR_FUNC};
        30: read_data = {OR_OP,  R00, R00, R03, 5'd0, OR_FUNC};
        31: read_data = {OR_OP,  R02, R03, R04, 5'd0, OR_FUNC};
        32: read_data = {OR_OP,  R03, R02, R04, 5'd0, OR_FUNC};
        33: read_data = {AND_OP, R02, R03, R04, 5'd0, AND_FUNC};
        34: read_data = {AND_OP, R03, R02, R04, 5'd0, AND_FUNC};
        35: read_data = {NOR_OP, R02, R02, R04, 5'd0, NOR_FUNC};
        36: read_data = {NOR_OP, R03, R03, R04, 5'd0, NOR_FUNC};
        37: read_data = {32'h00000000};
        38: read_data = {32'hFFFFFFFF};
        39: read_data = {32'h00000000};
        40: read_data = {OR_OP,  R00, R00, R02, 5'd0, OR_FUNC};
        41: read_data = {NOR_OP, R00, R00, R03, 5'd0, NOR_FUNC};
        42: read_data = {OR_OP,  R02, R03, R04, 5'd0, OR_FUNC};
        43: read_data = {OR_OP,  R03, R02, R04, 5'd0, OR_FUNC};
        44: read_data = {SW_OP,  R00, R02, 16'd4};
        45: read_data = {SW_OP,  R00, R03, 16'd5};
        46: read_data = {LW_OP,  R00, R04, 16'd4};
        47: read_data = {LW_OP,  R00, R04, 16'd5};
		endcase

endmodule


