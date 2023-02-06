//###########################################################################
//
// filename		:Struct.h
//
// TwinCopter structure header file.
//
// by Choi gi baek (MAZE 16TH)
//
//###########################################################################
// $Release Date: 2012.01.18 $
//###########################################################################

#ifndef __STRUCT_H__
#define __STRUCT_H__

#ifdef __STRUCT__

#undef __STRUCT__
#define __STRUCT_EXT__

#else

#define __STRUCT_EXT__	extern

#endif

typedef	volatile struct sensor_variable
{
	_iq15	iq15_4095_value;
}sen_t;

__STRUCT_EXT__  sen_t		sensor_value[6];


#endif

