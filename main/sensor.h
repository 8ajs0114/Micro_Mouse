//###########################################################################
//
// FILE		: senser.h
//
// TITLE	: senser h file
//
// Author	: Yuk Keun Ho
//
// Company	: Maze & Hz
//
//###########################################################################
// $Release Date: 2011.10.10 $
//###########################################################################


#ifndef __SENSOR_H__
#define __SENSOR_H__
interrupt void Sensor_Value(void);
interrupt void ADC_TIMER_ISR(void);

#define   ADC0   0x0000
#define   ADC1   0x1111
#define   ADC2   0x2222
#define   ADC3   0x3333
#define   ADC4   0x4444
#define   ADC5   0x5555


#endif
