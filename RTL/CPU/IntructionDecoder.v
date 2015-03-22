`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////
//
//                                           
//                                           RegDst  
//                               _____         o
//                            ,-'     `-.      |   .----o Jump
//                          ,'***********`.    |   |
//                         /***************\---'   |
//                        '*****************'------'
//                        |*****************|-------o Branch
//                        |**             **|-------o MemRead
//   Instruction[31:00]   |** Instruction **|-------o MemtoReg
// o--------------------->|**   Decoder   **|-------o ALUOp
//                        |**             **|-------o shamt[04:00]
//                        |**             **|-------o MemWrite
//                        '*****************'-------.
//                         \***************/---.    |
//                          '.***********.'    |    |
//                            '-._____.-'      |    `----o ALUSrc
//                                             o
//                                          RegWrite
//
//////////////////////////////////////////////////////////////////
module InstructionDecoder  (
	input  wire [31:00] instruction, 
	output wire [04:00] shamt,
	output wire         RegDest, 
	output wire         Jump,
	output wire         Branch,
	output wire         MemtoReg,
	output wire         MemRead,
	output wire         MemWrite,
	output wire         ALUSrc,
	output wire         SignExtend,
	output wire         RegWrite);

	`include "common.vh"
	
   wire [05:00] Func = instruction[`FUNC_RNG];
   wire [05:00] Op   = instruction[`OPCODE_RNG];
   wire [04:00] BGE  = instruction[`BGE_RNG];
   
   wire ADD    = ((Op == ADD_OP   ) && (Func == ADD_FUNC  )); // Add Word
   wire ADDI   =  (Op == ADDI_OP  );                          // Add Immediate Word
   wire ADDIU  =  (Op == ADDIU_OP );                          // Add Immediate Unsigned Word
   wire ADDU   = ((Op == ADDU_OP  ) && (Func == ADDU_FUNC )); // Add Unsigned Word
   wire AND    = ((Op == AND_OP   ) && (Func == AND_FUNC  )); // And
   wire ANDI   =  (Op == ANDI_OP  );                          // And Immediate
   wire BEQ    =  (Op == BEQ_OP   );                          // Branch On Equal
   wire BGEZ   = ((Op == BGEZ_OP  ) && (BGE == 5'b00001   )); // Branch On Greater Than Or Equal To Zero
   wire BGEZAL = ((Op == BGEZAL_OP) && (BGE == 5'b10001   )); // Branch On Greater Than OR Equal to Zero and Link
   wire BGTZ   = ((Op == BGTZ_OP  ) && (BGE == 5'b00000   )); // Branch On Greater Than Zero
   wire BLEZ   = ((Op == BLEZ_OP  ) && (BGE == 5'b00000   )); // Branch on Less Than Or Equal To Zero
   wire BLTZ   = ((Op == BLTZ_OP  ) && (BGE == 5'b00000   )); // Branch on Less Than OZero
   wire BLTZAL = ((Op == BLTZAL_OP) && (BGE == 5'b10000   )); // Branch on Less Than Zero and Link
   wire BNE    =  (Op == BNE_OP   );                          // Branch On Not Equal
   wire BREAK  = ((Op == BREAK_OP ) && (Func == BREAK_FUNC)); // Breakpoint
//   wire CFC0   = ((Op == CFC0_OP  ) && (Func == CFC0_FUNC )); // Move Control From Coprocessor 0
//   wire CFC1   = ((Op == CFC1_OP  ) && (Func == CFC1_FUNC )); // Move Control From Coprocessor 1
//   wire CFC2   = ((Op == CFC2_OP  ) && (Func == CFC2_FUNC )); // Move Control From Coprocessor 2
//   wire CFC3   = ((Op == CFC3_OP  ) && (Func == CFC3_FUNC )); // Move Control From Coprocessor 3
//   wire COP0   = ((Op == COP0_OP  ) && (Func == COP0_FUNC )); // Coprocessor 0 Operation
//   wire COP1   = ((Op == COP1_OP  ) && (Func == COP1_FUNC )); // Coprocessor 1 Operation
//   wire COP2   = ((Op == COP2_OP  ) && (Func == COP2_FUNC )); // Coprocessor 2 Operation
//   wire COP3   = ((Op == COP3_OP  ) && (Func == COP3_FUNC )); // Coprocessor 3 Operation   
//   wire CTC0   = ((Op == CTC0_OP  ) && (Func == COP0_FUNC )); // Move Control to Coprocessor 0
//   wire CTC1   = ((Op == CTC1_OP  ) && (Func == COP1_FUNC )); // Move Control to Coprocessor 1
//   wire CTC2   = ((Op == CTC2_OP  ) && (Func == COP2_FUNC )); // Move Control to Coprocessor 2
//   wire CTC3   = ((Op == CTC3_OP  ) && (Func == COP3_FUNC )); // Move Control to Coprocessor 3
   wire DIV    = ((Op == DIV_OP   ) && (Func == DIV_FUNC  )); // Divide Word (Continued)
   wire DIVU   = ((Op == DIVU_OP  ) && (Func == DIVU_FUNC )); // Divide Unsigned Word
   wire J      =  (Op == J_OP     );                          // Jump
   wire JAL    =  (Op == JAL_OP   );                          // Jump and Link
//   wire JALR   = ((Op == JALR_OP  ) && (Func == JALR_FUNC )); // Jump and Link Register
//   wire JR     = ((Op == JR_OP    ) && (Func == JR_FUNC   )); // 
   wire LB     =  (Op == LB_OP    );                          // Load Byte
   wire LH     =  (Op == LH_OP    );                          // Load Halfword
   wire LL     =  (Op == LL_OP    );                          //
   wire LWL    =  (Op == LWL_OP   );                          // Load word left
   wire LW     =  (Op == LW_OP    );                          // Load Word
   wire LBU    =  (Op == LBU_OP   );                          // Load unsigned byte
   wire LHU    =  (Op == LHU_OP   );                          // Load unsigned halfword
   wire LWR    =  (Op == LWR_OP   );                          // Load Word Right
   wire LUI    =  (Op == LUI_OP   );                          //
   wire MADD   = ((Op == MADD_OP  ) && (Func == MADD_FUNC )); //
   wire MADDU  = ((Op == MADDU_OP ) && (Func == MADDU_FUNC)); //
   wire MUL    = ((Op == MUL_OP   ) && (Func == MUL_FUNC  )); //
   wire MULT   = ((Op == MULT_OP  ) && (Func == MULT_FUNC )); //
   wire MULTU  = ((Op == MULTU_OP ) && (Func == MULTU_FUNC)); //
   wire MSUB   = ((Op == MSUB_OP  ) && (Func == MSUB_FUNC )); //
   wire NOR    = ((Op == NOR_OP   ) && (Func == NOR_FUNC  )); //
   wire OR     = ((Op == OR_OP    ) && (Func == OR_FUNC   )); //
   wire ORI    =  (Op == ORI_OP   );                          //
   wire SB     =  (Op == SB_OP    );                          // Store Byte
   wire SH     =  (Op == SH_OP    );                          // Store Halfword
   wire SLL    = ((Op == SLL_OP   ) && (Func == SLL_FUNC  )); //
   wire SLLV   = ((Op == SLLV_OP  ) && (Func == SLLV_FUNC )); //
   wire SLT    = ((Op == SLT_OP   ) && (Func == SLT_FUNC  )); //
   wire SLTI   =  (Op == SLTI_OP  );                          //
   wire SLTIU  =  (Op == SLTIU_OP);                          //
   wire SLTU   = ((Op == SLTU_OP  ) && (Func == SLTU_FUNC )); //
   wire SRL    = ((Op == SRL_OP   ) && (Func == SRL_FUNC  )); //
   wire SRLV   = ((Op == SRLV_OP  ) && (Func == SRLV_FUNC )); //
   wire SRA    = ((Op == SRA_OP   ) && (Func == SRA_FUNC  )); // 
   wire SRAV   = ((Op == SRAV_OP  ) && (Func == SRAV_FUNC )); //
   wire SUB    = ((Op == SUB_OP   ) && (Func == SUB_FUNC  )); // 
   wire SUBU   = ((Op == SUBU_OP  ) && (Func == SUBU_FUNC )); //
   wire SW     =  (Op == SW_OP    );                          // Store Word
   wire SWL    =  (Op == SWL_OP   );                          // Store Word Left
   wire SWR    =  (Op == SWR_OP   );                          // Store Word Right
   wire XOR    = ((Op == XOR_OP   ) && (Func == XOR_FUNC  )); // 
   wire XORI   =  (Op == XORI_OP  );                          //
 
	assign MemtoReg   =  LB   | LBU  | LH    | LHU  | LW    | LWL  | LWR;
	assign MemWrite   =  SB   | SH   | SWL   | SW   | SWR;
	assign MemRead    =  LW;
	assign Jump       =  J    | JAL;
	assign RegWrite   =  ADD  | ADDI | ADDIU | ADDU | AND    | ANDI  | DIV  | DIVU | 
                        LB   | LBU  | LH    | LHU  | LUI    | LW    | LWL  | LWR  |
                        OR   | SLT  | SUB   | SRL;
	assign Branch     =  BEQ  | BNE  | BLEZ  | BGTZ | BGEZAL;
	assign RegDest    =  ADD  | ADDU | SLL   | SRL  | SRA    | SLLV | SRLV   | SRAV  | MULT | MULTU |
                        DIV  | DIVU | SUB   | SUBU | AND    | OR    |
                        XOR  | NOR  | SLT   | SLTU | ADDI   | ADDIU | SLTI | SLTIU |
                        ANDI | ORI  | XORI;
	assign ALUSrc     =  LW   | SW   | ADDI  | ANDI;
	assign shamt      = instruction[`SHAMT_RNG]; 
	assign SignExtend =  ADDI | ADDIU | BEQ | BGEZ | BGEZAL | BGTZ | BLEZ | BNE | LWL;

endmodule
