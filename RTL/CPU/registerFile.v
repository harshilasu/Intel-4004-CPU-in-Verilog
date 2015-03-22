`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: Arizona State University
// Engineer: <your name>
//
// Create Date: 10/21/2013
// Design Name: Registers
// Module Name: register_file
// Project Name: MIPS Processor
// Target Devices: Xilinx Spartan 6 (XC6SLX16-3CSG324)
// Tool versions: Xilinx ISE 14.6
// Description: Register set of the CPU: R1, R2 and RD.
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////
module registerFile #(parameter REGISTER_DEPTH = 32, ADDR_WIDTH = 5, DATA_WIDTH = 32) (
    rd_reg1,
    rd_reg2,
    wr_reg,
    wr_data,
    reg_write,
    rd_data1,
    rd_data2,
	 stall,
    clk,
    reset_b);

   input  wire [ADDR_WIDTH - 1:00] rd_reg1;
   input  wire [ADDR_WIDTH - 1:00] rd_reg2;
   input  wire [ADDR_WIDTH - 1:00] wr_reg;
   input  wire [DATA_WIDTH - 1:00] wr_data;
   input  wire                     reg_write;
	input  wire                     stall;
   output wire [DATA_WIDTH - 1:00] rd_data1;
   output wire [DATA_WIDTH - 1:00] rd_data2;
   input  wire                     clk;
   input  wire                     reset_b;

   reg [DATA_WIDTH-1:0] memory [REGISTER_DEPTH-1:0];

   integer i = 0;

   assign rd_data1 = memory[rd_reg1];
   assign rd_data2 = memory[rd_reg2];

   always@(posedge clk, negedge reset_b)
      if (~reset_b) begin
         for (i = 0; i < REGISTER_DEPTH; i = i + 1)
            memory[i] <= 'd0;
    end
      /* If the write signal is active, we check to see if write address is 
         greater than zero. This is because all writes to register zero are 
         blocked. */
      else if (reg_write & |wr_reg & ~stall)
         memory[wr_reg] <= wr_data;

endmodule