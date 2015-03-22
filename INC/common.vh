//`define SIMULATION

///////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////
//  ______ _______  ______ _____ _______ _______ _______  ______ _______
// |_____/ |______ |  ____   |   |______    |    |______ |_____/ |______
// |    \_ |______ |_____| __|__ ______|    |    |______ |    \_ ______|
//
///////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////
//
// o Registers $at (1), $k0 (26), and $k1 (27) are reserved for the assembler and operating system
//   and should not be used by user programs or compilers.
// o Registers $a0-$a3 (4-7) are used to pass the first four arguments to routines (renaming
//   arguments are passed on the stack). Registers $v0 and $v1 (2, 3) are used to return values from
//   functions.
// o Registers  $t0-$t9 (8-15, 24, 25) are caller-saved registers that are used to hold temporary
//   quantities that need not be preserved across calls.
// o
//
////////////////////////// .---------------.--------.-------------------------------------------------.
////////////////////////// | Register Name | Number |                     Usage                       |
////////////////////////// +---------------+--------+-------------------------------------------------+
parameter   R00 = 5'd0, // |     $zero     |    0   | constant 0                                      |
            R01 = 5'd1, // |      $at      |    1   | reserved for assembler                          |
            R02 = 5'd2, // |      $v0      |    2   | expression evaluation and results of a function |
            R03 = 5'd3, // |      $v1      |    3   | expression evaluation and results of a function |
            R04 = 5'd4, // |      $a0      |    4   | argument 1                                      |
            R05 = 5'd5, // |      $a1      |    5   | argument 2                                      |
            R06 = 5'd6, // |      $a2      |    6   | argument 3                                      |
            R07 = 5'd7, // |      $a3      |    7   | argument 4                                      |
            R08 = 5'd8, // |      $t0      |    8   | temporary (not preserved across call)           |
            R09 = 5'd9, // |      $t1      |    9   | temporary (not preserved across call)           |
            R10 = 5'd10,// |      $t2      |   10   | temporary (not preserved across call)           |
            R11 = 5'd11,// |      $t3      |   11   | temporary (not preserved across call)           |
            R12 = 5'd12,// |      $t4      |   12   | temporary (not preserved across call)           |
            R13 = 5'd13,// |      $t5      |   13   | temporary (not preserved across call)           |
            R14 = 5'd14,// |      $t6      |   14   | temporary (not preserved across call)           |
            R15 = 5'd15,// |      $t7      |   15   | temporary (not preserved across call)           |
            R16 = 5'd16,// |      $s0      |   16   | saved temporary (preserved across call)         |
            R17 = 5'd17,// |      $s1      |   17   | saved temporary (preserved across call)         |
            R18 = 5'd18,// |      $s2      |   18   | saved temporary (preserved across call)         |
            R19 = 5'd19,// |      $s3      |   19   | saved temporary (preserved across call)         |
            R20 = 5'd20,// |      $s4      |   20   | saved temporary (preserved across call)         |
            R21 = 5'd21,// |      $s5      |   21   | saved temporary (preserved across call)         |
            R22 = 5'd22,// |      $s6      |   22   | saved temporary (preserved across call)         |
            R23 = 5'd23,// |      $s7      |   23   | saved temporary (preserved across call)         |
            R24 = 5'd24,// |      $t8      |   24   | temporary (not preserved across call)           |
            R25 = 5'd25,// |      $t9      |   25   | temporary (not preserved across call)           |
            R26 = 5'd26,// |      $k0      |   26   | reserved for OS kernel                          |
            R27 = 5'd27,// |      $k1      |   27   | reserved for OS kernel                          |
            R28 = 5'd28,// |      $gp      |   28   | pointer to global area                          |
            R29 = 5'd29,// |      $sp      |   29   | stack pointer                                   |
            R30 = 5'd30,// |      $fp      |   30   | frame pointer                                   |
            R31 = 5'd31;// |      $ra      |   31   | return address (used by function call)          |
////////////////////////// '---------------'--------'-------------------------------------------------'
///////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////
// _____ __   _ _______ _______  ______ _     _ _______ _______ _____  _____  __   _ _______
//   |   | \  | |______    |    |_____/ |     | |          |      |   |     | | \  | |______
// __|__ |  \_| ______|    |    |    \_ |_____| |_____     |    __|__ |_____| |  \_| ______|
//
///////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////
`define INSTR_SZ_RNG  31:00
`define PC_SZ_RNG     31:00
`define DATA_SZ_RNG   31:00
`define OPCODE_RNG    31:26
`define BGE_RNG       20:16
`define IMMEDIATE_RNG 15:00
`define SHAMT_RNG     10:06
`define FUNC_RNG      05:00
`define RS_RNG        25:21
`define RT_RNG        20:16
`define RD_RNG        15:11

   // R-Type Instructions
   // .---------.-------.-------.-------.-------.----------.
   // |Opcode(6)| R1(5) | R2(5) | RD(5) |  N/A  | funct(6) |
   // | [31-26] |[25-21]|[20-16]|[15:11]|[10:06]| [05:00]  |
   // '---------'-------'-------'-------'-------'----------'
   // I-Type Instructions (Transfer, branch, immediate)
   // .---------.-------.-------.--------------------------.
   // |Opcode(6)| R1(5) | R2(5) |       Immediate          |
   // | [31-26] |[25-21]|[20-16]|        [15:00]           |
   // '---------'-------'-------'--------------------------'
   // J-Type Instructions (Jump)
   // .---------.------------------------------------------.
   // |Opcode(6)|                 Target                   |
   // | [31-26] |                 [25-00]                  |
   // '---------'------------------------------------------'
   parameter ADD_OP     = 6'h00, /* ( 0) Add (with overflow)                        */ ADD_FUNC     = 6'h20, /* (32) */
             ADDI_OP    = 6'h08, /* ( 8) ADD Immediate                              */
             ADDIU_OP   = 6'h09, /* ( 9) ADD Immediate Unsigned                     */
             ADDU_OP    = 6'h00, /* ( 0) Addition (without overflow)                */ ADDU_FUNC    = 6'h21, /* (33) */
             AND_OP     = 6'h00, /* ( 0) AND                                        */ AND_FUNC     = 6'h24, /* (36) */
             ANDI_OP    = 6'h0C, /* (12) AND Immediate                              */
             JAL_OP     = 6'h03, /* ( 3) Jump and Link                              */
             BEQ_OP     = 6'h04, /* ( 4) Branch on equal                            */
             BGEZ_OP    = 6'h01, /*                                                 */ BGEZ_FUNC    = 6'h01,
             BGEZAL_OP  = 6'h01, /* ( 1) Branch on greater than equal zero and link */ BGEZAL_FUNC  = 6'h11,
             BGTZ_OP    = 6'h07, /* ( 7) Branch on greater than zero                */ BGTZ_FUNC    = 6'h00,
             BLEZ_OP    = 6'h06, /* ( 6) Branch on less than equal zero             */ BLEZ_FUNC    = 6'h00,
				 BLTZ_OP    = 6'h01, /* ( 1)                                            */ BLTZ_FUNC    = 6'h00,
				 BLTZAL_OP  = 6'h01, /*                                                 */ BLTZAL_FUNC  = 6'h10,
				 BNE_OP     = 6'h05, /* ( 5) Branch on not equal                        */
				 BREAK_OP   = 6'h00, /*                                                 */ BREAK_FUNC   = 6'h0B,
				 CFC0_OP    = 6'h10, /* (16) Move Control From Coprocessor 0            */
             CFC1_OP    = 6'h11, /* (17) Move Control From Coprocessor 1            */
             CFC2_OP    = 6'h12, /* (18) Move Control From Coprocessor 2            */
             CFC3_OP    = 6'h13, /* (19) Move Control From Coprocessor 3            */
             COP0_OP    = 6'h10, /* (16) Coprocessor 0 Operation                    */
             COP1_OP    = 6'h11, /* (16) Coprocessor 1 Operation                    */
             COP2_OP    = 6'h12, /* (18) Coprocessor 2 Operation                    */
             COP3_OP    = 6'h13, /* (19) Coprocessor 3 Operation                    */
             CTC0_OP    = 6'h10, /* (16) Move Control to Coprocessor 0              */
             CTC1_OP    = 6'h11, /* (16) Move Control to Coprocessor 1              */
             CTC2_OP    = 6'h12, /* (16) Move Control to Coprocessor 2              */
             CTC3_OP    = 6'h13, /* (16) Move Control to Coprocessor 3              */
             DIV_OP     = 6'h00, /* ( 0) Divide (with overflow)                     */ DIV_FUNC     = 6'h1A, /* (26) */
             DIVU_OP    = 6'h00, /* ( 0) Divide (without overflow)                  */ DIVU_FUNC    = 6'h1B, /* (27) */             
             J_OP       = 6'h02, /* ( 2) Jump                                       */
             LB_OP      = 6'h20, // (32) Load Byte
             LH_OP      = 6'h21, // (33) Load Halfword
             LL_OP      = 6'h30, // (48) Load Linked
             LWL_OP     = 6'h22, // (34) Load word left
             LW_OP      = 6'h23, // (35) Load Word
             LBU_OP     = 6'h24, // (36) Load unsigned byte
             LHU_OP     = 6'h25, // (37) Load unsigned halfword
             LUI_OP     = 6'h0F, /* (15) Load Upper Immediate                       */
             LWR_OP     = 6'h26, /* (38) Load Word Right                            */
             MADD_OP    = 6'h1C, /* (28) Multiply Add                               */ MADD_FUNC    = 6'h0,  // ( 0) Multiply Add
             MADDU_OP   = 6'h1C, /* (28) Unsigned Multiply Add                      */ MADDU_FUNC   = 6'h1,  // ( 1) Unsigned Multiply Add
             MUL_OP     = 6'h1C, /* (28) Multiply (without overflow)                */ MUL_FUNC     = 6'h02, // ( 2) Multiply (without overflow)

             
             MSUB_OP    = 6'h1C, /* (28) Multiply Subtract                          */ MSUB_FUNC    = 6'h05, // ( 5) Unsigned Multiply Subtract
             MTC0_OP    = 6'h10, /* (16) Move to Coprocessor 0             p. A-48  */ MTC0_FUNC    = 6'h04, // ( 4) Move To Coprocessor 0
             MTC1_OP    = 6'h11, /* (17) Move to Coprocessor 1             p. A-48  */ MTC1_FUNC    = 6'h04, // ( 4) Move To Coprocessor 1
             MTC2_OP    = 6'h12, /* (18) Move to Coprocessor 2             p. A-48  */ MTC2_FUNC    = 6'h04, // ( 4) Move To Coprocessor 2
				 MTC3_OP    = 6'h13, /* (19) Move to Coprocessor 3             p. A-48  */ MTC3_FUNC    = 6'h04, // ( 4) Move To Coprocessor 3
             MTHI_OP    = 6'h00, /* ( 0) Move To HI                        p. A-49  */ 
             MTLO_OP    = 6'h00, /* ( 0) Move To LO                        p. A-50  */ MTLO_FUNC    = 6'h13, /* (19) */
             MULT_OP    = 6'h00, /* ( 0) Multiply Word                              */ MULT_FUNC    = 6'h18, /* (24) */
             MULTU_OP   = 6'h00, /* ( 0) Multiply Unsigned Word                     */ MULTU_FUNC   = 6'h19, /* (25) */
             NOR_OP     = 6'h00, /* ( 0) NOR                                        */ NOR_FUNC     = 6'h27, /* (39) */
             OR_OP      = 6'h00, /* ( 0) OR                                         */ OR_FUNC      = 6'h25, /* (37) */
             ORI_OP     = 6'h0D, /* (13) OR immediate                               */
             SB_OP      = 6'h28, /* (40) Store Byte                                 */
             SH_OP      = 6'h29, /* (41) Store Halfword                             */
             SLL_OP     = 6'h00, /* ( 0) Shift Left Logic                           */ SLL_FUNC     = 6'h00,  /* ( 0) */
             SLLV_OP    = 6'h00, /* ( 0) Shift Word Left Logical Variable           */ SLLV_FUNC    = 6'h04,  /* ( 4) */
             SLT_OP     = 6'h00, /* ( 0) Set less than                              */ SLT_FUNC     = 6'h2A,  /* (42) */
             SLTI_OP    = 6'h0A, /* (10) Set On Less Than Immediate                 */
             SLTIU_OP  = 6'h0B, /* (11) Set On Less Than Immediate Unsigned        */
             SLTU_OP   = 6'h00, /* (11) Set On Less Than Unsigned                  */ SLTU_FUNC    = 6'h2B,  /* (43) */
             SRA_OP     = 6'h00, /* ( 0) Shift Right Arithmetic                     */ SRA_FUNC     = 6'h03,  /* ( 3) */
             SRAV_OP    = 6'h00, /* ( 0) Shift Right Arithmetic Variable            */ SRAV_FUNC    = 6'h07,  /* ( 7) */
             SRL_OP     = 6'h00, /* ( 0) Shift Right Logical                        */ SRL_FUNC     = 6'h02,  /* ( 2) */
             SRLV_OP    = 6'h00, /* ( 0) Shift Right Logical Variable               */ SRLV_FUNC    = 6'h06,  /* ( 6) */
             SUB_OP     = 6'h00, /* ( 0) Subtract (with overflow)                   */ SUB_FUNC     = 6'h22,  /* (34) */
             SUBU_OP    = 6'h00, /* ( 0) Subtract Unsigned Word                     */ SUBU_FUNC    = 6'h23,  /* (35) */
             SW_OP      = 6'h2b, /* (45) Store Word                                 */
             SWC0_OP    = 6'h38, /* (56) Store Word From Coprocessor                */
             SWC1_OP    = 6'h39, /* (57) Store Word From Coprocessor                */
             SWC2_OP    = 6'h3A, /* (58) Store Word From Coprocessor                */
             SWC3_OP    = 6'h3B, /* (59) Store Word From Coprocessor                */
             SWL_OP     = 6'h2A, /* (44) Store Word Left                            */
             SWR_OP     = 6'h2E, /* (4614) Store Word Right                           */
             SYSCALL_OP = 6'h00, /* ( 0) System Call                                */ SYSCALL_FUNC = 6'h0C, /* (12) */
             XOR_OP     = 6'h00, /* ( 0) Exclusive OR                               */ XOR_FUNC     = 6'h26, /* (38) */
             XORI_OP    = 6'h0E; /* (14) XOR immediate                              */
           