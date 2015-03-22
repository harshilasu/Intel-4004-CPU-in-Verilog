`timescale 1ns / 1ns
///////////////////////////////////////////////////////////////////////////
// Company: Arizona State University
// Engineer: <your name>
// 
// Create Date: 09/21/2013 
// Design Name: 32 bit ALU
// Module Name: ALU 
// Project Name: MIPS Processor 
// Target Devices: Xilinx Spartan 6 (XC6SLX16-3CSG324)
// Tool versions: Xilinx ISE 14.6
//                Aldec Riviera Pro 2012
// Description: Skeleton code for 32 bit ALU, the output "O" is the chosen 
// function mapped from "A" and "B".
//
// Dependencies: None
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
///////////////////////////////////////////////////////////////////////////
module ALU(   
	input  wire [31:00] rs, rt,      // Register Data A and B
	input  wire [31:00] Instruction, // Encoded ALU Operation Commands from ALU Decoder
	input  wire [04:00] shamt,       // Shift Amount
	output reg  [31:00] O,           // Output from ALU
	output reg          of,          // Overflow occurred
	output wire         Zero);       // outputs a 1 when O is 0.

	/*
	* Parameters and Compiler Directives
	*/
	`include "common.vh"

	/*
	* Wire and register declarations
	*/
	reg          nc; // No Connect
	wire         nop;
	wire [31:0]  sum;
	wire [31:0]  div;
	wire [63:0]  mul;
	wire         carry;
	/*
	* Continuous Assignments (some combinational logic can be inferred in this
	* region.
	*/  
	assign Zero = ~|O; 

	/*
	* Combinational Logic
	*/
	always@* begin
		// We provide a default value for the overflow to avoid a combinational latch.
		of = 1'b0;
		nc = 1'b0;
		// [casez] The casez statement treats high-impedance (z) values as don't-care 
		// values and the casex statement treats high-impedance and unknown (x) 
		// values as don't care values. If any of the bits in the case expression or 
		// case item expression is a don't-care value then that bit position will be 
		// ignored.
		//
		// The don't-care value can be also specified by the question mark (?), 
		// which is equal to z value
		casez(Instruction)
			//////////////////////////////////////////////////////////////////////////////////////////
			// ADD                                                                          Add Word//
			//--------------------------------------------------------------------------------------//
			//  31 26 25 21 20 16 15 11 10 06 05  00                                                //
			// .-----.-----.-----.-----.-----.------.                                               //
			// | 0x0 | rs  | rt  | rd  | 0x0 | 0x20 |                                               //
			// '-----'-----'-----'-----'-----'------'                                               //
			//    6     5     5     5     5     6                                                   //
			// Format: ADD rd, rs, rt                                     
			// Purpose: To add 32-bit integers. If overflow occurs, then trap.
			// Description: rd <- rs + rt
			//
			{ ADD_OP,   5'b?????, 5'b?????, 5'b?????, 5'b00000, ADD_FUNC } : {of, O} = {carry, sum};
			//////////////////////////////////////////////////////////////////////////////////////////
			// ADDI                                                               Add Immediate Word//
			//--------------------------------------------------------------------------------------//
			//  31 26 25 21 20 16 15              00                                                //
			// .-----.-----.-----.------------------.                                               //
			// | 0x8 | rs  | rt  |    immediate     |                                               //
			// '-----'-----'-----'------------------'                                               //
			//   6     5     5            16                                                        //
			// Format: ADDI rt, rs, immediate                                                       //
			// Purpose: To add a constant to a 32-bit integer. If overflow occurs, then trap.       //
			// Description: rt <- rs + immediate                                                    //
			// The 16-bit signed immediate is added to the 32-bit 
			{ ADDI_OP,  5'b?????, 5'b?????, 16'b????????????????} : {of, O} = {carry, sum};
			//////////////////////////////////////////////////////////////////////////////////////////
			// ADDIU                                                     Add Immediate Unsigned Word//
			//--------------------------------------------------------------------------------------//
			//  31 26 25 21 20 16 15              00                                                //
			// .-----.-----.-----.------------------.                                               //
			// | 0x9 | rs  | rt  |    immediate     |                                               //
			// '-----'-----'-----'------------------'                                               //
			//   6     5     5            16                                                        //
			// Format: ADDIU rt, rs, immediate                                                      //
			// Purpose: To add a constant to a 32-bit integer.                                      //
			// Description: rt <- rs + immediate                                                    //
			// The 16-bit signed immediate is added to the 32-bit value in GPR rs and the 32-bit    //
			// arithmetic result is placed into GPR rt.                                             //
			//                                                                                      //
			// No Integer Overflow exception occurs under any circumstances.                        //
			{ ADDIU_OP,  5'b?????, 5'b?????, 16'b????????????????} : {nc, O} = {carry, sum};
			//////////////////////////////////////////////////////////////////////////////////////////
			// ADDU                                                                Add Unsigned Word//
			//--------------------------------------------------------------------------------------//
			//  31 26 25 21 20 16 15 11 10 06 05  00                                                //
			// .-----.-----.-----.-----.-----.------.                                               //
			// | 0x0 | rt  | rt  | rd  | 0x0 | 0x21 |                                               //
			// '-----'-----'-----'-----'-----'------'                                               //
			//    6     5     5     5     5     6                                                   //
			// Format: ADDU rd, rs, rt                                                              //
			// Purpose: To add 32-bit integers.                                                     //
			// Description: rd <- rs + rt                                                           //
			// Purpose: The 32-bit word value in GPR rt is added to the 32-bit value in GPR rs and  //
			// the 32-bit arithmetic result is placed into GPR rd.                                  //
			//                                                                                      //
			// No Integer Overflow exception occurs under any circumstances.                        //
			{ ADDU_OP,  5'b?????, 5'b?????, 5'b?????, 5'b00000, ADDU_FUNC  } : {nc, O} = {carry, sum};
			//////////////////////////////////////////////////////////////////////////////////////////
			// AND                                                                               And//
			//--------------------------------------------------------------------------------------//
			//  31 26 25 21 20 16 15 11 10 06 05  00                                                //
			// .-----.-----.-----.-----.-----.------.                                               //
			// | 0x0 | rs  | rt  | rd  | 0x0 | 0x24 |                                               //
			// '-----'-----'-----'-----'-----'------'                                               //
			//    6     5     5     5     5     6                                                   //
			// Format: and  rd, rs, rt                                                              //
			// Purpose:To do a bitwise logical AND                                                  //
			// Description: rd <- rs AND rt                                                         //
			// To contents of GPR rs are combined with the contents of GPR rt in a bitwise logical  //
			// AND operation. The result is placed into GPR rd.                                     //
			{ AND_OP,   5'b?????, 5'b?????, 5'b?????, 5'b00000, AND_FUNC   } : O = rs & rt;
			//////////////////////////////////////////////////////////////////////////////////////////
			// ANDI                                                                    And Immediate//
			//--------------------------------------------------------------------------------------//
			//  31 26 25 21 20 16 15              00                                                //
			// .-----.-----.-----.------------------.                                               //
			// | 0xC | rs  | rt  |    immediate     |                                               //
			// '-----'-----'-----'------------------'                                               //
			//   6     5     5            16                                                        //		   
			//
			//

			//////////////////////////////////////////////////////////////////////////////////////////
			// BEQ                                                                   Branch on Equal//
			//--------------------------------------------------------------------------------------//
			//  31 26 25 21 20 16 15              00                                                //
			// .-----.-----.-----.------------------.                                               //
			// | 0x4 | rs  | rt  |    immediate     |                                               //
			// '-----'-----'-----'------------------'                                               //
			//   6     5     5            16                                                        //		   
			// Format: BEQ  rs, rt, offset                                                          //
			// Purpose: To compare GPRs then do a PC-relative conditional branch.                   //
			// Description: If (rs == rt) then branch                                               //
			//
			{ BEQ_OP,  5'b?????, 5'b?????, 16'b????????????????} : O = (rs == rt) ? 0 : 1;
			//////////////////////////////////////////////////////////////////////////////////////////
			// BGTZ                                                      Branch on Greater than Zero//
			//--------------------------------------------------------------------------------------//
			//                   31 26 25 21 20 16 15              00                               //
			//                  .-----.-----.-----.------------------.                              //
			// bgtz  rs, offset | 0x7 |  rs |  0  |    IMMEDIATE     |                              //
			//                  '-----'-----'-----'------------------'                              //
			//                     6     5     5          16                                        //
			// Format: BGTZ  rs, offset                                                             //
			// Purpose: To test a GPR then do a PC-relative conditional branch                      //
			// Description: if (rs > 0) then branch                                                 //
			// An 18-bit signed offset (the 16-bit offset field shifted left 2-bits) is added to the//
			// address of the instruction following the branch (not the branch itself), in the      //
			// branch delay slot, to form a PC-relative effective target address.                   //
			//                                                                                      //
			// If the contents of GPR rs are greater than zero (signed bit is 0 but value not zero),//
			// branch to the effective target address after the instruction in the delay slot is    //
			// executed.                                                                            //
			{ BGTZ_OP,  5'b?????, 5'b00000, 16'b????????????????} : O = (rs > 0); 
			//////////////////////////////////////////////////////////////////////////////////////////
			// BNE                                                               Branch on Not Equal//
			//--------------------------------------------------------------------------------------//
			//  31 26 25 21 20 16 15              00                                                //
			// .-----.-----.-----.------------------.                                               //
			// | 0xF |  R1 | R2  |    IMMEDIATE     |                                               //
			// '-----'-----'-----'------------------'                                               //
			//    6     5     5          16                                                         //
			// Format: BNE  rs, rt, offset                                                          //
			// Purpose: To compare GPRs then do a PC-relative conditional branch                    //
			// Description: if (rs != rt) then branch                                               //
			// An 18-bit signed offset (the 16-bit offset field shifted left 2-bits) is added to the//
			// address of the instruction following the branch (not the branch itself), in the      //
			// branch delay slot, to form a PC-relative effective target address.                   //
			//                                                                                      //
			// If the contents of GPR rs and GPR rt are not equal, branch to the effect target      //
			// address after the instruction in the delay slot is executed.                         //
			{ BNE_OP,  5'b?????, 5'b?????, 16'b????????????????} : O = (rs != rt)?0:1;
			//////////////////////////////////////////////////////////////////////////////////////////
			// SLL                                                           Shift Word Left Logical//
			//--------------------------------------------------------------------------------------//
			//  31 26 25 21 20 16 15 11 10 06 05  00                                                //
			// .-----.-----.-----.-----.-----.------.                                               //
			// | 0x0 |  0  | rt  | rd  | sa  | 0x00 |                                               //
			// '-----'-----'-----'-----'-----'------'                                               //
			//    6     5     5     5     5      6                                                  //
			// Format: SRL rd, rt, sa                                                               //
			// Purpose: To left shift a word by a fixed number of bits.                             //
			// Description: rd <- rt << sa (arithmetic)                                             //
			// The contents of the low-order 32-bit word of GPR rt are shifted left, inserting      //
			// zeros into the emptied bits; the word result is placed in GPR rd. The bit shift count//
			// is specified by sa.                                                                  //
			// the sign-bit (bit 31) in the emptied bits; the word result is placed in GPR rd. The  //
			// bit shift count is specified by sa.                                                  //
			{ SLL_OP,   5'b?????, 5'b?????, 5'b?????, 5'b?????, SLL_FUNC   } : {nc, O} = rt << shamt;
			//////////////////////////////////////////////////////////////////////////////////////////
			// SRL                                                          Shift Word Right Logical//
			//--------------------------------------------------------------------------------------//
			//                  31 26 25 21 20 16 15 11 10 06 05  00                                //
			//                 .-----.-----.-----.-----.-----.------.                               //
			// srl  rd, rt, sa | 0x0 |  0  | rt  | rd  | sa  | 0x02 |                               //
			//                 '-----'-----'-----'-----'-----'------'                               //
			//                    6     5     5     5     5      6                                  //
			// Format: SRL rd, rt, sa                                                               //
			// Purpose: To right shift a word by a fixed number of bits.                            //
			// Description: rd <- rt >> sa (arithmetic)                                             //
			// The contents of the low-order 32-bit word of GPR rt are shifted right, inserting     //
			// zeros into the emptied bits; the word result is placed in GPR rd. The bit shift count//
			// is specified by sa.                                                                  //
			{ SRL_OP,   5'b?????, 5'b?????, 5'b?????, 5'b?????, SRL_FUNC   } : {nc, O} = rt >> shamt;
			//////////////////////////////////////////////////////////////////////////////////////////
			// SRA                                                       Shift Word Right Arithmetic//
			//--------------------------------------------------------------------------------------//
			//  31 26 25 21 20 16 15 11 10 06 05  00                                                //
			// .-----.-----.-----.-----.-----.------.                                               //
			// | 0x0 |  0  | rt  | rd  | sa  | 0x03 |                                               //
			// '-----'-----'-----'-----'-----'------'                                               //
			//    6     5     5     5     5      6                                                  //
			// Format: SRA rd, rs, sa                                                               //
			// Purpose: To arithmetic right shift a word by a fixed number of bits.                 //
			// Description: rd <- rt >> sa (arithmetic)                                             //
			// The contents of the low-order 32-bit word of GPR rt are shifted right, duplicating   //
			// the sign-bit (bit 31) in the emptied bits; the word result is placed in GPR rd. The  //
			// bit shift count is specified by sa.                                                  //
			{ SRA_OP,   5'b?????, 5'b?????, 5'b?????, 5'b00000, SRA_FUNC   } : {nc, O} = rt >>> shamt;
			//////////////////////////////////////////////////////////////////////////////////////////
			// SLLV
			//--------------------------------------------------------------------------------------//
			{ SLLV_OP,  5'b?????, 5'b?????, 5'b?????, 5'b00000, SLLV_FUNC  } : {nc, O} = 'd0; // Not done...
			//////////////////////////////////////////////////////////////////////////////////////////
			// SRLV
			//--------------------------------------------------------------------------------------//
			{ SRLV_OP,  5'b?????, 5'b?????, 5'b?????, 5'b00000, SRLV_FUNC  } : {nc, O} = 'd0; // Not done...
			{ SRAV_OP,  5'b?????, 5'b?????, 5'b?????, 5'b00000, SRAV_FUNC  } : {nc, O} = 'd0; // Not done...
			// Multiply
			//                31  26 25 21 20 16 15 11 10 06 05  00
			//                +-----+-----+-----+-----+-----+------+
			// mult rs, rt    | 0x0 | rs  | rt  | 0x0 | 0x0 | 0x18 |
			//                +-----+-----+-----+-----+-----+------+
			//                   6     5     5     5    5     6 
			{ MULT_OP,  5'b?????, 5'b?????, 5'b?????, 5'b00000, MULT_FUNC  } : {nc, O} = mul;
			// Unsigned Multiply
			//                31  26 25 21 20 16 15 11 10 06 05  00
			//                +-----+-----+-----+-----+-----+------+
			// multu rs, rt   | 0x0 | rs  | rt  | 0x0 | 0x0 | 0x19 |
			//                 '-----'-----'-----'-----'-----'------'
			//                   6     5     5     5    5     6 
			// Multiply registers rs and rt. Leave the low-order word of the product in 
			// register lo and the high-order word in register hi.
			{ MULTU_OP, 5'b?????, 5'b?????, 5'b?????, 5'b00000, MULTU_FUNC } : {nc, O} = mul;
			// Divide (with overflow)
			//                 31  26 25 21 20 16 15 11 10 06 05  00
			//                 +-----+-----+-----+-----+-----+------+
			// div  rs, rt     | 0x0 | R1  | R2  | 0x0 | 0x0 | 0x1A |
			//                 '-----'-----'-----'-----'-----'------'
			//                    6     5     5     5     5     6 
			{ DIV_OP,   5'b?????, 5'b?????, 5'b00000, 5'b00000, DIV_FUNC   } : {nc, O} = div;
			// Divide (with overflow)
			//                31  26 25 21 20 16 15 11 10 06 05  00
			//                +-----+-----+-----+-----+-----+------+
			// divu R1, R2    | 0x0 | R1  | R2  | 0x0 | 0x0 | 0x1B |
			//                 '-----'-----'-----'-----'-----'------'
			//                   6     5     5     5    5     6 
			// Divide register rs by register rt. Leave the quotient in register lo and the 
			// remainder in register hi. Note that if an operand is negative, the remainder
			// is unspecified by the MIPS architecture.
			{ DIVU_OP,  5'b?????, 5'b?????, 5'b00000, 5'b00000, DIVU_FUNC  } : {nc, O} = div;
			//--------------------------------------------------------------------------------------
			// Subtraction (with overflow): R[rd] = R[rs] - R[rt]
			//                  31 26 25 21 20 16 15 11 10 06 05  00
			//                 .-----.-----.-----.-----.-----.------.
			// sub  rd, rs, rt | 0x0 | rs  | rt  | rd  | 0x0 | 0x22 |
			//                 '-----'-----'-----'-----'-----'------'
			//                    6     5     5     5     5     6               
			{ SUB_OP,   5'b?????, 5'b?????, 5'b?????, 5'b00000, SUB_FUNC   } : {of, O} = rs - rt;
			// Subtraction (with overflow): R[rd] = R[rs] - R[rt]
			//                  31 26 25 21 20 16 15 11 10 06 05  00
			//                 .-----.-----.-----.-----.-----.------.
			// subu rd, rs, rt | 0x0 | rs  | rt  | rd  | 0x0 | 0x23 |
			//                 '-----'-----'-----'-----'-----'------'
			//                    6     5     5     5     5     6               		   
			{ SUBU_OP,  5'b?????, 5'b?????, 5'b?????, 5'b00000, SUBU_FUNC  } : O = rs - rt;
			//////////////////////////////////////////////////////////////////////////////////////////
			// OR                                                                                 Or//
			//--------------------------------------------------------------------------------------//
			//  31 26 25 21 20 16 15 11 10 06 05  00                                                //
			// .-----.-----.-----.-----.-----.------.                                               //
			// | 0x0 | rs  | rt  | rd  | 0x0 | 0x25 |                                               //
			// '-----'-----'-----'-----'-----'------'                                               //
			//    6     5     5     5     5     6                                                   //
			// Format: OR  rd, rs, rt                                                               //
			// Purpose: To do a bitwise logical OR.                                                 //
			// Description: rd <- rs OR rt                                                          //
			// The contents of GPR[rs] are combined with the contents of GPR rt in a bitwise logical//
			// OR operation. The result is placed into GPR[rd].                                     //
			{ OR_OP,    5'b?????, 5'b?????, 5'b?????, 5'b00000, OR_FUNC    } : O = rs | rt;
			//////////////////////////////////////////////////////////////////////////////////////////
			// XOR                                                                      Exclusive-Or//
			//--------------------------------------------------------------------------------------//		   
			{ XOR_OP,   5'b?????, 5'b?????, 5'b?????, 5'b00000, XOR_FUNC   } : O = rs ^ rt;
			//////////////////////////////////////////////////////////////////////////////////////////
			// NOR                                                                            Not-Or//
			//--------------------------------------------------------------------------------------//
			{ NOR_OP,   5'b?????, 5'b?????, 5'b?????, 5'b00000, NOR_FUNC   } : O = ~(rs | rt);
			//////////////////////////////////////////////////////////////////////////////////////////
			// SLT                                                                  Set on Less Than//
			//--------------------------------------------------------------------------------------//
			//                  31 26 25 21 20 16 15 11 10 06 05  00                                //
			//                 .-----.-----.-----.-----.-----.------.                               //
			// slt  rd, rs, rt | 0x0 | rs  | rt  | rd  | 0x0 | 0x2A |                               //
			//                 '-----'-----'-----'-----'-----'------'                               //
			//                    6     5     5     5     5     6                                   //
			// Format: SLT  rd, rs rt                                                               //
			// Purpose: To record the result of a less-than comparison                              //
			// Description: rd <- (rs < rt)                                                         //
			// Comparee the contents of GPR rs and GPR rt as signed integers and record the         //
			// Boolean result of the comparison in GPR rd. If GPR rs is less than GPR rt the result //
			// is 1 (true), otherwise 0 (false).                                                    //
			{ SLT_OP,   5'b?????, 5'b?????, 5'b?????, 5'b00000, SLT_FUNC   } : {nc, O} = (rs < rt) ? 1 : 0;
			//////////////////////////////////////////////////////////////////////////////////////////
			// LUI Load upper immediate
			//--------------------------------------------------------------------------------------//
			// 
			//                31  26 25 21 20 16 15              00
			//                +-----+-----+-----+------------------+
			// LUI RT, IMM    | 0xF |  0  | R3  |    IMMEDIATE     |
			//                '-----'-----'-----'-----'-----'------'
			//                   6     5     5          16             
			
			//////////////////////////////////////////////////////////////////////////////////////////
			// LW                                                                          Load Word//
			//--------------------------------------------------------------------------------------//
			//  31 26 25 21 20 16 15              00                                                //
			// .-----.-----.-----.------------------.                                               //
			// | 0x23| rs  | rt  |    immediate     |                                               //
			// '-----'-----'-----'------------------'                                               //
			//   6     5     5            16                                                        //		   
			// Format: LW  rs, rt, offset                                                           //
			// Purpose:                                                                             //
			// Description: $t = MEM[$s + offset]                                                   //
			//
			
			//////////////////////////////////////////////////////////////////////////////////////////
			// SW                                                                          Store Word//
			//--------------------------------------------------------------------------------------//
			//  31 26 25 21 20 16 15              00                                                //
			// .-----.-----.-----.------------------.                                               //
			// | 0x23| rs  | rt  |    immediate     |                                               //
			// '-----'-----'-----'------------------'                                               //
			//   6     5     5            16                                                        //		   
			// Format: SW  rs, rt, offset                                                           //
			// Purpose:                                                                             //
			// Description: MEM[$s + offset] = $t                                                   //
			//
			//
			default: O = 32'd0;
		endcase
	end

	alu_add #(32)
		i_alu_add
			(rs,
			 rt,
			 carry,
			 sum);

	alu_mul #(32)
		i_alu_mul
			(rs,
			 rt,
			 mul);

	alu_div #(32, 4)
		i_alu_div
			(rs,
			 rt,
			 div);


endmodule
