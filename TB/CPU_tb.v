// [`timescale] Delay unit is specified using 'timescale, which is declared as
// `timescale time_unit base / precision base
`timescale 1ns / 1ns
module CPU_tb( );

  `define CLOCK_LO #10
  `define CLOCK_HI #10

  `include "common.vh"

   reg clk;
   reg reset;
   reg [`PC_SZ_RNG] currentInstruction;
   reg [`PC_SZ_RNG] currentPC;
   reg [`DATA_SZ_RNG] RS;
   reg [`DATA_SZ_RNG] RT;
   reg [`DATA_SZ_RNG] RD;
   reg [04:00]        RS_loc;   // A temporary variable used to capture the RS register index being addressed.
   reg [04:00]        RT_loc;
   reg [04:00]        RD_loc;   
   reg [05:00]        shamt;

  // Synchronous Clock generation Process
  initial
     begin
        clk = 'd0;
        forever begin
          `CLOCK_LO clk = 1;
          `CLOCK_HI clk = 0;
        end
     end

    // Asynchronous Active Low Process Control block
    initial
        begin
        // [$display] Displays text to the screen much like the printf statement
        // from the language C.
        // [$time] The $time system function returns the current simulation time
        // as a 64-bit integer.  $time must be used in an expression.
        $display("Putting the CPU in reset @ time %t", $time);
        reset = 1'b1;
        // De-Assert reset right before the next clock toggle
        $display("Putting the CPU in reset @ time %t", $time);
        #35 reset = 1'b0;
    end

   // Let's verify what this CPU is doing. I don't believe it's actually doing it's job
   initial begin
      // [$timeformat] The $timeformat system task specifies the %t format
      // specification until the next `timescale compiler directive occurs.
      $timeformat(-9, 2, " ns", 10);
		
      // The wait statement is used as a level-sensitive control. We shall wait
      // for reset to be de-asserted
      #0 @(posedge ~CPU_tb.i_dut.scu.async_rst_o);
         @(posedge clk);
      //      .-- Instruction is captured here using hierachical probing
      //     /
      // ,--.* ,--.  
      // |  |  |  |  
      // '  `--'  `--
      //  HI LO HI LO
      //  ____  ____
      // /    \/    \
      // |INST||INST|
      // \____/\____/
      @(negedge clk); // Wait until the high part of the clock period has elapsed.
      // Grab the current instruction that is being exectured. We are in the
      // Active Event Region. So, we should capture the current PC, and 
      // instruction. We will make use of hierarchical probing to see what's
      // going on inside of our CPU.
      currentInstruction = CPU_tb.i_dut.mst.cl.i_InstructionDecoder.instruction;
      currentPC = CPU_tb.i_dut.mst.sl.programCounter_o;

      // We examine the parameters of the instruction and pull out any relevant
      // information that might aid us in checking our CPU's functionality.
      RS_loc = currentInstruction[`RS_RNG];
      RT_loc = currentInstruction[`RT_RNG];
      RD_loc = currentInstruction[`RD_RNG];
      shamt  = currentInstruction[`SHAMT_RNG];

      // ,--.' ,--.  
      // |  |  |  |  
      // '  `--'  `--
      //  HI LO HI LO
      //  ____  ____
      // /    \/    \
      // |INST||INST|
      // \____/\____/
      //  ____  ____
      // /    \/    \
      // |RS 1||RS 2|
      // \____/\____/
      //  ____  ____
      // /    \/    \
      // |RT 1||RT 2|
      // \____/\____/
      // The data in our RS and RT registers has already been pulled from the 
      // register file. So, we will do the same using hierchical probing.
      RS = CPU_tb.i_dut.mst.sl.i_registerFile.memory[RS_loc];
      RT = CPU_tb.i_dut.mst.sl.i_registerFile.memory[RT_loc];
		
      // [repeat] Repeats the following instruction for specified times. The
      // number of executions is set by the expression or constant value.
      repeat(30) begin
        // Okay, we now want to 
         @(posedge clk);
         // Check to see if the instruction is valid. An instruction of 0 is
         // a No-Operation (NOP)
         if (~|currentInstruction)
            $display("[%t]NOP: Nothing to verify here, move along", $time);
         else begin
            $display("PC=0x%08x INSTR=0x%08x ",currentPC ,currentInstruction);
            
            case (currentInstruction[`OPCODE_RNG])
               6'h0: begin // R-Type Instruction (ALU OP)
                  // Now we are grabbing the resultant data 1ns after the next clock edge.
                  #1 RD = CPU_tb.i_dut.mst.sl.i_registerFile.memory[RD_loc];
                  // Let's determine what ALU operation we are verifying.
                  case (currentInstruction[`FUNC_RNG])
                     SLL_FUNC   : begin
                        $display("INFO: SLL instruction executed");
                     end
                     SRL_FUNC   : begin
                        $display("INFO: SRL instruction executed");
                     end
                     MULT_FUNC  : begin
                        $display("INFO: MULT instruction executed");
                  			end
                    	MULTU_FUNC : begin
                        $display("INFO: MULTU instruction executed");
                   	 end
                    	DIV_FUNC   : begin
                        $display("INFO: DIV instruction executed");
						         end
                     DIVU_FUNC  : begin
                        $display("INFO: DIVU instruction executed");
                    	end
                    	ADD_FUNC   : begin
                        if ((RS + RT) !== RD)
                           $display("Error: Add function failed");
                       	else
                          	$display("Good: Add function passed");
                     end
                     ADDU_FUNC  : begin
                     end
                     SUB_FUNC   : begin
                        if ((RS - RT) !== RD)
                           $display("Error: SUB function failed");
                        else
                           $display("Good: SUB function passed");
                     end
                     SUBU_FUNC  : begin
                  
                     end
                     AND_FUNC   : begin
                        if ((RS & RT) !== RD)
                           $display("Error: AND function failed");
                        else
                           $display("Good: AND function passed");
                     end
                     OR_FUNC    : begin
                        if ((RS | RT) !== RD)
                           $display("Error: OR function failed");
                        else
                           $display("Good: OR function passed");
                     end
                     XOR_FUNC   : begin
                        if ((RS ^ RT) !== RD)
                           $display("Error: XOR function failed");
                        else
                           $display("Good: XOR function passed");
                     end
                     NOR_FUNC   : begin
                        if ((~(RS | RT)) !== RD)
                           $display("Error: NOR function failed");
                        else
                           $display("Good: NOR function passed");						
                     end
                     SLT_FUNC   : begin
                        if ((RS < RT) != RD)
                           $display("Error: SLT function failed");
                        else
                           $display("Good: SLT function passed");
                     end
                     default    : begin
                        $display("INFO: unknown instruction executed");
                     end
                  endcase
                  $display("@%t: RS[0x%02x] = 0x%08x, RT[0x%02x] = 0x%08x, RD[0x%02x] = 0x%08x", $time, currentInstruction[`RS_RNG], RS,  currentInstruction[`RT_RNG], RT, currentInstruction[`RD_RNG], RD);
               end // end ALU_OP
               LUI_OP: begin
                   $display("INFO: LUI instruction executed");
               end
               default: begin
                   $display("INFO: unknown instruction executed");
               end
            endcase

            @(negedge clk);
         
            currentInstruction = CPU_tb.i_dut.mst.cl.i_InstructionDecoder.instruction;
            currentPC = CPU_tb.i_dut.mst.sl.programCounter_o;
			
            RS_loc = currentInstruction[`RS_RNG];
            RT_loc = currentInstruction[`RT_RNG];
            RD_loc = currentInstruction[`RD_RNG];
            RS = CPU_tb.i_dut.mst.sl.i_registerFile.memory[RS_loc];
            RT = CPU_tb.i_dut.mst.sl.i_registerFile.memory[RT_loc];
            shamt = currentInstruction[`SHAMT_RNG];
         
				$display("Registers");
				$display("R0(r0) =0x%08x, R8 (t0) =0x%08x, R16(s0) =0x%08x, R24(t8) =0x%08x", 32'd0,                                        CPU_tb.i_dut.mst.sl.i_registerFile.memory[8] , CPU_tb.i_dut.mst.sl.i_registerFile.memory[16], CPU_tb.i_dut.mst.sl.i_registerFile.memory[24]);
				$display("R1(at) =0x%08x, R9 (t1) =0x%08x, R17(s1) =0x%08x, R25(t9) =0x%08x", CPU_tb.i_dut.mst.sl.i_registerFile.memory[1], CPU_tb.i_dut.mst.sl.i_registerFile.memory[9] , CPU_tb.i_dut.mst.sl.i_registerFile.memory[17], CPU_tb.i_dut.mst.sl.i_registerFile.memory[25]);
				$display("R2(v0) =0x%08x, R10(t2) =0x%08x, R18(s2) =0x%08x, R26(k0) =0x%08x", CPU_tb.i_dut.mst.sl.i_registerFile.memory[2], CPU_tb.i_dut.mst.sl.i_registerFile.memory[10], CPU_tb.i_dut.mst.sl.i_registerFile.memory[18], CPU_tb.i_dut.mst.sl.i_registerFile.memory[26]);
				$display("R3(v1) =0x%08x, R11(t3) =0x%08x, R19(s3) =0x%08x, R27(k1) =0x%08x", CPU_tb.i_dut.mst.sl.i_registerFile.memory[3], CPU_tb.i_dut.mst.sl.i_registerFile.memory[11], CPU_tb.i_dut.mst.sl.i_registerFile.memory[19], CPU_tb.i_dut.mst.sl.i_registerFile.memory[27]);
				$display("R4(a0) =0x%08x, R12(t4) =0x%08x, R20(s4) =0x%08x, R28(gp) =0x%08x", CPU_tb.i_dut.mst.sl.i_registerFile.memory[4], CPU_tb.i_dut.mst.sl.i_registerFile.memory[12], CPU_tb.i_dut.mst.sl.i_registerFile.memory[20], CPU_tb.i_dut.mst.sl.i_registerFile.memory[28]);
				$display("R5(a1) =0x%08x, R13(t5) =0x%08x, R21(s5) =0x%08x, R29(sp) =0x%08x", CPU_tb.i_dut.mst.sl.i_registerFile.memory[5], CPU_tb.i_dut.mst.sl.i_registerFile.memory[13], CPU_tb.i_dut.mst.sl.i_registerFile.memory[21], CPU_tb.i_dut.mst.sl.i_registerFile.memory[29]);
				$display("R6(a2) =0x%08x, R14(t6) =0x%08x, R22(s6) =0x%08x, R30(s8) =0x%08x", CPU_tb.i_dut.mst.sl.i_registerFile.memory[6], CPU_tb.i_dut.mst.sl.i_registerFile.memory[14], CPU_tb.i_dut.mst.sl.i_registerFile.memory[22], CPU_tb.i_dut.mst.sl.i_registerFile.memory[30]);
				$display("R7(a3) =0x%08x, R15(t7) =0x%08x, R23(s7) =0x%08x, R31(ra) =0x%08x", CPU_tb.i_dut.mst.sl.i_registerFile.memory[7], CPU_tb.i_dut.mst.sl.i_registerFile.memory[15], CPU_tb.i_dut.mst.sl.i_registerFile.memory[23], CPU_tb.i_dut.mst.sl.i_registerFile.memory[31]);
         end
      end

      // [$finish] The $finish system task exits the simulator to the host
      // operating system. Don't forget to type the semicolon while in
      // interactive mode.
      #40 $finish();
   end // end initial

    /*
     * Module instantiations
     */
	fpga_top i_dut (
      .clk_i     (clk),     // (I)       The clock signal of the board. We sample it to get a new clock
      .btnm_i    (reset),   // (I)       The reset signal for the design
      .sw_i      (8'b0),    // (I) [7:0] Buttons to indicate modes
      .led_o     ( ),       // (O) [7:0] LEDS for debugging
      .an_o      ( ),       // Anodes of the seven segment display
      .seg_o     ( ),       // Cathodes of the seven segment display
	   // Cellular RAM Interface
	   .RamAdv    ( ),       // (O) 
      .RamCS     ( ),       // (O) 
      .RamClk    ( ),       // (O) 
      .RamCRE    ( ),       // (O) 
      .RamLB     ( ),       // (O) 
      .RamUB     ( ),       // (O) 
      .RamWait   ( ),       // (I)
	   .MemOE     ( ),       // (O)
      .MemWR     ( ),       // (O)
	   .MemDB     ( ),       // (T)
	   .MemAdr    ( ));      //



endmodule
