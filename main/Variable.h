//###########################################################################
//
// FILE		: Variable.h
//
// TITLE	: Variable.h file.
//
// Author	: Yuk Keun Ho
//
// Company	: Maze & Hz
//
//###########################################################################
// $Release Date: 2011.10.6 $
//###########################################################################



#ifdef _MAIN_
	#ifndef __VARIABLE_EXT__
		#define __VARIABLE_EXT__
	#endif
#else
	#ifndef __VARIABLE_EXT__
		#define __VARIABLE_EXT__	extern
	#endif
#endif	

// MENU_ARRAY_CONST
#define 	X 				3
#define 	Y 				5
#define 	WORD_LENGTH	 	9

// SWITCH_CONST
#define 	SR 				GpioDataRegs.GPADAT.bit.GPIO14
#define 	SL 				GpioDataRegs.GPADAT.bit.GPIO15
#define 	SU 				GpioDataRegs.GPADAT.bit.GPIO31
#define 	SD 				GpioDataRegs.GPADAT.bit.GPIO30

__VARIABLE_EXT__ volatile Uint32 sensor_count;

__VARIABLE_EXT__ long 	adc_value_sum;

 __VARIABLE_EXT__ Uint16 	i ;


