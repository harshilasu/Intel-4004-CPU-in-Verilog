`timescale 1ns / 1ps
`default_nettype none	//To avoid bugs involving implicit nets

module Seven_Segment_Display 
   #(parameter	CLOCKFREQ	= 100,	//MHz
					DIGITS		= 4)
    (input  wire                clk_i,
     input  wire [DIGITS*4-1:0] data_i,
     input	wire [DIGITS-1:0]   dots_i,
     output	reg  [DIGITS-1:0]   an_o,
     output	wire [7:0]          ca_o);

   ///////////////////////////////////////////////////////////////////////
   // MODULE SPECIFIC PARAMETER DECLARATIONS
   ///////////////////////////////////////////////////////////////////////
	parameter 	integer		DISP_FREQ			=	20*DIGITS;
	parameter	integer		DISP_FREQ_CYCLES	=	(CLOCKFREQ*1000/DISP_FREQ);	//Check this
	
	parameter					ZERO					=	7'b1000000;	//Codes for the cathode ray tubes
	parameter					ONE					=	7'b1111001;	
	parameter					TWO					=	7'b0100100;
	parameter					THREE					=	7'b0110000;
	parameter					FOUR					=	7'b0011001;
	parameter					FIVE					=	7'b0010010;
	parameter					SIX					=	7'b0000010;
	parameter					SEVEN					=	7'b1111000;		
	parameter					EIGHT					=	7'b0000000;
	parameter					NINE					=	7'b0010000;
	parameter					A						=	7'b0001000;	//"A"
	parameter					B						=	7'b0000011;
	parameter					C						=	7'b1000110;
	parameter					D						=	7'b0100001;
	parameter					E						=	7'b0000110;
	parameter					F						=	7'b0001110;
	parameter					DEFAULT				=	7'b0001001;	//"H" is the default. Not required here since we cover all cases
	
///////////////////////////////////////////////////////////////////////
// PORTS ORIGINATING IN MODULE
///////////////////////////////////////////////////////////////////////

	reg		[$clog2(DISP_FREQ_CYCLES)-1:0]		refreshCnt;
	reg		[$clog2(DIGITS)-1:0]						DigitNo;
	reg		[3:0]											Digit;
	reg		[6:0]											HexDigit;
	wire														Dot;
	wire														DisplayCLK;

///////////////////////////////////////////////////////////////////////////////////////
// SYNTHESIS SPECIFIC INSTRUCTIONS
///////////////////////////////////////////////////////////////////////////////////////

	initial
		begin
			refreshCnt	=	'b0;
			DigitNo		=	'b0;
		end
	
///////////////////////////////////////////////////////////////////////
// DISPLAY PROCESS
///////////////////////////////////////////////////////////////////////	

	always@(Digit)
		case(Digit)
			0	:	HexDigit	=	ZERO;
			1	:	HexDigit	=	ONE;
			2	:	HexDigit	=	TWO;
			3	:	HexDigit	=	THREE;
			4	:	HexDigit	=	FOUR;
			5	:	HexDigit	=	FIVE;
			6	:	HexDigit	=	SIX;
			7	:	HexDigit	=	SEVEN;
			8	:	HexDigit	=	EIGHT;
			9	:	HexDigit	=	NINE;
			10	:	HexDigit	=	A;
			11	:	HexDigit	=	B;	
			12	:	HexDigit	=	C;
			13	:	HexDigit	=	D;	
			14	:	HexDigit	=	E;
			15	:	HexDigit	=	F;
			
			default:	HexDigit	=	DEFAULT;
		endcase
		
	always@(data_i, DigitNo)
		case(DigitNo)
        0   :  Digit = data_i[3:0];
        1  	:	Digit = data_i[7:4];
        2   :  Digit = data_i[11:8];
        3   :  Digit = data_i[15:12];
		  
			default: Digit = DEFAULT;
		endcase
	
	assign	Dot  =	~dots_i[DigitNo];
	assign	ca_o =	{Dot,HexDigit};
	
   always@(posedge clk_i)
	   if(refreshCnt	==	DISP_FREQ_CYCLES-1) refreshCnt	<=	'b0;
		else                                  refreshCnt	<=	refreshCnt + 1'b1;
			
   always@(posedge clk_i)
	   if(refreshCnt	==	DISP_FREQ_CYCLES-1)
		   if  ((DigitNo+1) ==	DIGITS) DigitNo <=	'b0;
			else                         DigitNo <=	DigitNo + 1'b1;
				
   always@(DigitNo) begin
      an_o				<=	4'hF;
      an_o[DigitNo]	<=	1'b0;
   end

endmodule
