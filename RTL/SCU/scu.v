`timescale 1ns / 1ps
`default_nettype none	//To avoid bugs involving implicit nets

module scu 
   (input  wire clk_i,        // Input System Clock	
    input  wire rstn_i,       // Input Reset
    output wire async_rst_o); // Global Asynchronous Reset
	 
///////////////////////////////////////////////////////////////////////
// MODULE SPECIFIC PARAMETER DECLARATIONS
///////////////////////////////////////////////////////////////////////
parameter	integer		RST_SYNC_NUM			= 100;
parameter	integer		RST_DBNC					= 10;
parameter	integer		RST_SYNC_NUM_LENGTH	= $clog2(RST_SYNC_NUM);
parameter					VDD						= 1'b1;
parameter 					GROUND 					= 1'b0;

///////////////////////////////////////////////////////////////////////////////////////
// SIGNALS LOCAL TO MODULE
///////////////////////////////////////////////////////////////////////////////////////
wire										Start_Up_Rst;
wire										SysConCLK;

reg	[RST_DBNC-1:0]					RstDbncQ;
reg	[RST_DBNC-1:0]					RstDbncTemp;
wire										intRst;
	
reg										intfb;
reg										intpllout_xs;

reg	[7:0]								int_sw;

reg 	[RST_SYNC_NUM-1:0]			RstQ;
reg	[RST_SYNC_NUM_LENGTH:0]		RstD;
wire										RstDbnc;
		
   //////////////////////////////////////////////////////////
   // DEBOUNCE RESET
   //////////////////////////////////////////////////////////	
   initial begin
		RstQ[RST_SYNC_NUM-1]				=	0;
		RstQ[RST_SYNC_NUM-2:0]			=	{RST_SYNC_NUM-1{1'b1}};
		RstD[RST_SYNC_NUM_LENGTH:0]	=	{1'b1,RST_SYNC_NUM[RST_SYNC_NUM_LENGTH-1:0]};
	end

	always@(rstn_i) RstDbncQ[0]	=	~rstn_i;
	
	genvar i;
   generate
	   for(i = 1; i < RST_DBNC; i = i + 1)	begin : reset_block
         always@(posedge clk_i) RstDbncQ[i]	<=	RstDbncQ[i-1];
		end
   endgenerate
			
	always@(RstDbncQ[0]) RstDbncTemp[0]	= RstDbncQ[0];
			
   generate
	   for(i = 1; i < RST_DBNC - 1; i = i + 1) begin : reset_dbnc
      always@* RstDbncTemp[i]	<=	RstDbncTemp[i-1] & RstDbncQ[i];
      end
   endgenerate
				
	assign async_rst_o = ~(RstDbncTemp[RST_DBNC-2] & ~RstDbncQ[RST_DBNC-1]);
	
endmodule
