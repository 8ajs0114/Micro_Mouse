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

typedef volatile struct motor
{
	//------------------//
	// Encoder Data
	Uint16	u16_qep_count;

	int16		int16_qep_value;

	_iq15	iq15_current_velocity_average,
			iq15_distance_sum;

	_iq27	iq27_distance_from_interrupt;

	_iq28	iq28_kp,
			iq28_kd;
}motor_t;

__STRUCT_EXT__		motor_t		R_motor;
__STRUCT_EXT__		motor_t		L_motor;



#endif

