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

__VARIABLE_EXT__ volatile Uint32 sensor_count;

__VARIABLE_EXT__ long 	adc_value_sum;

 __VARIABLE_EXT__ Uint16 	i, 
 						pwm;


// MENU_ARRAY_CONST
#define 	X 				3
#define 	Y 				5
#define 	WORD_LENGTH	 	9

// SWITCH_CONST
#define 	SR 				GpioDataRegs.GPADAT.bit.GPIO14
#define 	SL 				GpioDataRegs.GPADAT.bit.GPIO15
#define 	SU 				GpioDataRegs.GPADAT.bit.GPIO31
#define 	SD 				GpioDataRegs.GPADAT.bit.GPIO30

//------------------------------------------------------------//
// MOTOR OUTPUT SETTING
// IN1 : HIGH + IN2 : LOW = CW
// IN1 : LOW + IN2 : HIGH = CCW
// Because of cross soldered cable, needed to change between Right and Left.
#define IN1_LEFT_SET					GpioDataRegs.GPASET.bit.GPIO6
#define IN1_LEFT_CLEAR				GpioDataRegs.GPACLEAR.bit.GPIO6
#define IN2_LEFT_SET					GpioDataRegs.GPASET.bit.GPIO7
#define IN2_LEFT_CLEAR				GpioDataRegs.GPACLEAR.bit.GPIO7
#define IN1_RIGHT_SET				GpioDataRegs.GPASET.bit.GPIO9
#define IN1_RIGHT_CLEAR				GpioDataRegs.GPACLEAR.bit.GPIO9
#define IN2_RIGHT_SET				GpioDataRegs.GPASET.bit.GPIO11
#define IN2_RIGHT_CLEAR				GpioDataRegs.GPACLEAR.bit.GPIO11
#define PWM_LEFT						EPwm5Regs.CMPA.half.CMPA
#define PWM_RIGHT					EPwm6Regs.CMPA.half.CMPA

//------------------------------------------------------------//
// Motor Information
// Number of Gear Teeth 			56
// Number of Pinion Teeth 			14
// Gear Ratio 						4

//------------------------------------------------------------//
// Encoder Information
// LPR (Lines per revolution)		512
// Fold								4	(Use two edges in each A, B channel => 4 edge) 
// 체배(Fold) : 한 신호에서 몇번 읽을지를 결정.
//				입력되는 신호를 몇개의 엣지로 읽을 것인지로 결정. 

//------------------------------------------------------------//
// Wheel Information
// Wheel Radius						12.5		mm
// Wheel Diameter					25.0		mm	

//------------------------------------------------------------//
// Const
// PI								3.14159265
// Motor Interrupt Cycle			0.0005		s	(= 500us)

//------------------------------------------------------------//
// Calculation
// Tick per Turn  = LPR x Fold x Gear Ratio = 8,192
// Distance per Turn = 2 x PI x Wheel Radius = PI x Wheel Diameter = 78.53981625						mm
// Distance per Tick = Distance per Turn / Tick per Turn = 0.009587379913330078125						mm
// Velocity per Tick = Distance per Tick / Motor Interrupt Cycle = 19.17475982666015625					mm/s

//------------------------------------------------------------//
// Definition
#define iq30_MOTOR_INTERRUPT_CYCLE	_IQ30(0.0005)
#define iq30_TICK_PER_TURN			_IQ30(8,192)
#define iq30_DISTANCE_PER_TICK		_IQ30(0.009587379913330078125)
#define iq30_VELOCITY_PER_TICK		_IQ30(19.17475982666015625)

#define iq15_MAX_PID_OUT				_IQ15( 8800.0 )		// 9000
#define iq15_MIN_PID_OUT				_IQ15( -8800.0 )		// 9000
#define iq30_PWM_CONVERT				_IQ30( 0.2 )			// PWM주파수 최대값


