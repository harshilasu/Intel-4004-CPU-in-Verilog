/////////////////////////////////////////////////
// Translation of the VHDL library to Verilog
//
//
////////////////////////////////////////////////

//@ 31
parameter	H_MAX					= 1600;			//These are the max. resolutions that
parameter	V_MAX					= 900;			//can be supported on the TFT

//@ 36
parameter	R480_272P				= 0;			//Various resolutions that are supported on the TFT.
parameter	R640_480P 				= 1;			//This enables flexibility in programming the TFT.
parameter	R720_480P 				= 2;			
parameter	R1280_720P				= 3;
parameter	R1600_900P				= 4;
parameter	R800_600P				= 5;

parameter	RESOLUTION_WIDTH		=$clog2(R800_600P);

///////////////////////////////////////////////////////////////////
// TIMING CONTROLS FOR 480x272 @ 60Hz
///////////////////////////////////////////////////////////////////

//@ 42

//////////////////////////
// HORIZONTAL CONSTANTS
//////////////////////////
parameter H_480_272p_S				= 45;				//sync
parameter H_480_272p_FP				= 0; 				//front porch
parameter H_480_272p_AV				= 480; 				//active video
parameter H_480_272p_BP				= 0;				//back porch
//////////////////////////
// VERTICAL CONSTANTS
//////////////////////////
parameter V_480_272p_S				= 16;				//sync
parameter V_480_272p_FP				= 0; 				//front porch
parameter V_480_272p_AV				= 272; 				//active video
parameter V_480_272p_BP				= 0;				//back porch

parameter H_480_272p_AV_FP			= H_480_272p_AV + H_480_272p_FP;
parameter H_480_272p_AV_FP_S		= H_480_272p_AV + H_480_272p_FP + H_480_272p_S;
parameter H_480_272p_AV_FP_S_BP		= H_480_272p_AV + H_480_272p_FP + H_480_272p_S + H_480_272p_BP;

parameter V_480_272p_AV_FP			= V_480_272p_AV + V_480_272p_FP;
parameter V_480_272p_AV_FP_S		= V_480_272p_AV + V_480_272p_FP + V_480_272p_S;
parameter V_480_272p_AV_FP_S_BP		= V_480_272p_AV + V_480_272p_FP + V_480_272p_S + V_480_272p_BP;

parameter H_480_272p_POL			= 0;			// negative polarity (FALSE)
parameter V_480_272p_POL			= 0;			// negative polarity (FALSE)

///////////////////////////////////////////////////////////////////
// TIMING CONTROLS FOR 640x480 @ 60Hz
///////////////////////////////////////////////////////////////////

//@ 67

//////////////////////////
// HORIZONTAL CONSTANTS
//////////////////////////
parameter H_640_480p_S				= 96;				//sync
parameter H_640_480p_FP				= 16; 				//front porch
parameter H_640_480p_AV				= 640; 				//active video
parameter H_640_480p_BP				= 48;				//back porch
//////////////////////////
// VERTICAL CONSTANTS
//////////////////////////
parameter V_640_480p_S				= 2;				//sync
parameter V_640_480p_FP				= 33; 				//front porch
parameter V_640_480p_AV				= 480; 				//active video
parameter V_640_480p_BP				= 10;				//back porch

parameter H_640_480p_AV_FP			= H_640_480p_AV + H_640_480p_FP;
parameter H_640_480p_AV_FP_S		= H_640_480p_AV + H_640_480p_FP + H_640_480p_S;
parameter H_640_480p_AV_FP_S_BP		= H_640_480p_AV + H_640_480p_FP + H_640_480p_S + H_640_480p_BP;

parameter V_640_480p_AV_FP			= V_640_480p_AV + V_640_480p_FP;
parameter V_640_480p_AV_FP_S		= V_640_480p_AV + V_640_480p_FP + V_640_480p_S;
parameter V_640_480p_AV_FP_S_BP		= V_640_480p_AV + V_640_480p_FP + V_640_480p_S + V_640_480p_BP;

parameter H_640_480p_POL			= 0;			// negative polarity (FALSE)
parameter V_640_480p_POL			= 0;			// negative polarity (FALSE)

///////////////////////////////////////////////////////////////////
// TIMING CONTROLS FOR 720x480 @ 60Hz
///////////////////////////////////////////////////////////////////

//@ 92

//////////////////////////
// HORIZONTAL CONSTANTS
//////////////////////////
parameter H_720_480p_S				= 62;				//sync
parameter H_720_480p_FP				= 16; 				//front porch
parameter H_720_480p_AV				= 720; 				//active video
parameter H_720_480p_BP				= 60;				//back porch
//////////////////////////
// VERTICAL CONSTANTS
//////////////////////////
parameter V_720_480p_S				= 6;				//sync
parameter V_720_480p_FP				= 9; 				//front porch
parameter V_720_480p_AV				= 480; 				//active video
parameter V_720_480p_BP				= 30;				//back porch

parameter H_720_480p_AV_FP			= H_720_480p_AV + H_720_480p_FP;
parameter H_720_480p_AV_FP_S		= H_720_480p_AV + H_720_480p_FP + H_720_480p_S;
parameter H_720_480p_AV_FP_S_BP		= H_720_480p_AV + H_720_480p_FP + H_720_480p_S + H_720_480p_BP;

parameter V_720_480p_AV_FP			= V_720_480p_AV + V_720_480p_FP;
parameter V_720_480p_AV_FP_S		= V_720_480p_AV + V_720_480p_FP + V_720_480p_S;
parameter V_720_480p_AV_FP_S_BP		= V_720_480p_AV + V_720_480p_FP + V_720_480p_S + V_720_480p_BP;

parameter H_720_480p_POL			= 0;			// negative polarity (FALSE)
parameter V_720_480p_POL			= 0;			// negative polarity (FALSE)

///////////////////////////////////////////////////////////////////
// TIMING CONTROLS FOR 1280x720 @ 60Hz
///////////////////////////////////////////////////////////////////

//@ 117

//////////////////////////
// HORIZONTAL CONSTANTS
//////////////////////////
parameter H_1280_720p_S				= 40;				//sync
parameter H_1280_720p_FP			= 110; 				//front porch
parameter H_1280_720p_AV			= 1280; 			//active video
parameter H_1280_720p_BP			= 220;				//back porch
//////////////////////////
// VERTICAL CONSTANTS
//////////////////////////
parameter V_1280_720p_S				= 5;				//sync
parameter V_1280_720p_FP			= 5; 				//front porch
parameter V_1280_720p_AV			= 720; 				//active video
parameter V_1280_720p_BP			= 20;				//back porch

parameter H_1280_720p_AV_FP			= H_1280_720p_AV + H_1280_720p_FP;
parameter H_1280_720p_AV_FP_S		= H_1280_720p_AV + H_1280_720p_FP + H_1280_720p_S;
parameter H_1280_720p_AV_FP_S_BP	= H_1280_720p_AV + H_1280_720p_FP + H_1280_720p_S + H_1280_720p_BP;

parameter V_1280_720p_AV_FP			= V_1280_720p_AV + V_1280_720p_FP;
parameter V_1280_720p_AV_FP_S		= V_1280_720p_AV + V_1280_720p_FP + V_1280_720p_S;
parameter V_1280_720p_AV_FP_S_BP	= V_1280_720p_AV + V_1280_720p_FP + V_1280_720p_S + V_1280_720p_BP;

parameter H_1280_720p_POL			= 1;			// positive polarity (TRUE)
parameter V_1280_720p_POL			= 1;			// positive polarity (TRUE)

///////////////////////////////////////////////////////////////////
// TIMING CONTROLS FOR 1600x900 @ 60Hz
///////////////////////////////////////////////////////////////////

//@ 142

//////////////////////////
// HORIZONTAL CONSTANTS
//////////////////////////
parameter H_1600_900p_S				= 20;				//sync
parameter H_1600_900p_FP			= 60; 				//front porch
parameter H_1600_900p_AV			= 1600; 			//active video
parameter H_1600_900p_BP			= 120;				//back porch
//////////////////////////
// VERTICAL CONSTANTS
//////////////////////////
parameter V_1600_900p_S				= 10;				//sync
parameter V_1600_900p_FP			= 20; 				//front porch
parameter V_1600_900p_AV			= 900; 				//active video
parameter V_1600_900p_BP			= 70;				//back porch

parameter H_1600_900p_AV_FP			= H_1600_900p_AV + H_1600_900p_FP;
parameter H_1600_900p_AV_FP_S		= H_1600_900p_AV + H_1600_900p_FP + H_1600_900p_S;
parameter H_1600_900p_AV_FP_S_BP	= H_1600_900p_AV + H_1600_900p_FP + H_1600_900p_S + H_1600_900p_BP;

parameter V_1600_900p_AV_FP			= V_1600_900p_AV + V_1600_900p_FP;
parameter V_1600_900p_AV_FP_S		= V_1600_900p_AV + V_1600_900p_FP + V_1600_900p_S;
parameter V_1600_900p_AV_FP_S_BP	= V_1600_900p_AV + V_1600_900p_FP + V_1600_900p_S + V_1600_900p_BP;

parameter H_1600_900p_POL			= 1;			// positive polarity (TRUE)
parameter V_1600_900p_POL			= 1;			// positive polarity (TRUE)

///////////////////////////////////////////////////////////////////
// TIMING CONTROLS FOR 800x600 @ 60Hz
///////////////////////////////////////////////////////////////////

//@ 142

//////////////////////////
// HORIZONTAL CONSTANTS
//////////////////////////
parameter H_800_600p_S				= 128;				//sync
parameter H_800_600p_FP				= 40; 				//front porch
parameter H_800_600p_AV				= 800; 			//active video
parameter H_800_600p_BP				= 88;				//back porch
//////////////////////////
// VERTICAL CONSTANTS
//////////////////////////
parameter V_800_600p_S				= 4;				//sync
parameter V_800_600p_FP				= 1; 				//front porch
parameter V_800_600p_AV				= 600; 				//active video
parameter V_800_600p_BP				= 23;				//back porch

parameter H_800_600p_AV_FP			= H_800_600p_AV + H_800_600p_FP;
parameter H_800_600p_AV_FP_S		= H_800_600p_AV + H_800_600p_FP + H_800_600p_S;
parameter H_800_600p_AV_FP_S_BP		= H_800_600p_AV + H_800_600p_FP + H_800_600p_S + H_800_600p_BP;

parameter V_800_600p_AV_FP			= V_800_600p_AV + V_800_600p_FP;
parameter V_800_600p_AV_FP_S		= V_800_600p_AV + V_800_600p_FP + V_800_600p_S;
parameter V_800_600p_AV_FP_S_BP		= V_800_600p_AV + V_800_600p_FP + V_800_600p_S + V_800_600p_BP;

parameter H_800_600p_POL			= 1;			// positive polarity (TRUE)
parameter V_800_600p_POL			= 1;			// positive polarity (TRUE)