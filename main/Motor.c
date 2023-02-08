//###########################################################################
//
// FILE		: Motor.c
//
// TITLE	: Motor c file.
//
// Author	: Yuk Keun Ho
//
// Company	: Maze & Hz
//
//###########################################################################
// $Release Date: 2011.10.16 $
//###########################################################################

#define   _MOTOR_

#include "DSP280x_Device.h"
#include "DSP280x_Examples.h"   // DSP280x Examples Include File
#include "Main.h"
#include "Motor.h"

interrupt void MOTOR_ISR (void)
{
	//------------------------------------------------------------//
	// Encoder Data Input
	// Getting QEP value from motor moving ( 0 < value < 2048 )
	// Because of cross soldered cable, needed to change between Right and Left.
	L_motor.u16_qep_count = ( Uint16 )RightQepRegs.QPOSCNT;
	R_motor.u16_qep_count = ( Uint16 )LeftQepRegs.QPOSCNT;
	
	// Reset ( value = 0 )
	RightQepRegs.QEPCTL.bit.SWI = 1;
	LeftQepRegs.QEPCTL.bit.SWI = 1;
	
  	// Getting QEP Value from u16_qep_count
  	// In custom maxon motor can have same value in opposite way of motion.
  	// In that case use code below.
	// R_motor.int16_qep_value = ( int16 )( (R_motor.u16_qep_count > 1024 ) ? -( 2049 - R_motor.u16_qep_count ) : ( R_motor.u16_qep_count ) );
	// L_motor.int16_qep_value = ( int16 )( (L_motor.u16_qep_count > 1024 ) ? -( 2049 - L_motor.u16_qep_count ) : ( L_motor.u16_qep_count ) );

	// However you use same two motor, unless you connect one side of encoder in opposite way, values are same in same way of motion.
	// In that case use code below.
	R_motor.int16_qep_value = ( int16 )( (R_motor.u16_qep_count > 1024 ) ? ( 2049 - R_motor.u16_qep_count ) : -( R_motor.u16_qep_count ) );
	L_motor.int16_qep_value = ( int16 )( (L_motor.u16_qep_count > 1024 ) ? -( 2049 - L_motor.u16_qep_count ) : ( L_motor.u16_qep_count ) );

	//------------------------------------------------------------//
	// Distance Calculation from Encoder Data
	// Distance per a Interrupt
	R_motor.iq27_distance_from_interrupt = _IQ27mpyIQX( ( int32 )( R_motor.int16_qep_value ) << 21 , 21 , iq30_DISTANCE_PER_TICK , 30 ); 
	L_motor.iq27_distance_from_interrupt = _IQ27mpyIQX( ( int32 )( L_motor.int16_qep_value ) << 21 , 21 , iq30_DISTANCE_PER_TICK , 30 ); 

	// Sum Distance
	R_motor.iq15_distance_sum += ( R_motor.iq27_distance_from_interrupt >> 12 );
	L_motor.iq15_distance_sum += ( L_motor.iq27_distance_from_interrupt >> 12 );
}


