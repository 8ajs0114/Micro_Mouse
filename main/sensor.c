//###########################################################################
//
// FILE		: Sensor.c
//
// TITLE	: Senser c file.
//
// Author	:  Yuk Keun Ho
//
// Company	: Maze & Hz
//
//###########################################################################
// $Release Date: 2011.12.10 $
//###########################################################################

#include "DSP280x_Device.h"
#include "DSP280x_Examples.h"   // DSP280x Examples Include File
#include "Main.h"
#include "Sensor.h"

typedef volatile enum //enum : make original value ,volatile : changable
{
	#if 1
	SEN0 = 0,
	SEN1 = 1,
	SEN2 = 2,	
	SEN3 = 3,
	SEN4 = 4,
	SEN5 = 5,
	SEN_NUM = 6,
	ADC_NUM = 6
	#endif	
}sensor_num;

volatile Uint32 sensor_array[ SEN_NUM] = {SEN0, SEN3, SEN1,SEN4, SEN2, SEN5};

volatile Uint32 adc_array[ ADC_NUM ] = {ADC0, ADC3, ADC1,ADC4, ADC2, ADC5};
// ADC expressed as 16bit, defined in Sensor.h file. 

interrupt void Sensor_Value(void)
{	
	// sensor
	PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;
	GpioDataRegs.GPASET.all =(ON_L << sensor_array[ sensor_count ]);// push 1 to left depends on number which in array sen_arr.=>on

	// ON_L=0000 0000 0000 0001
	// each spot of number is same as gpio number which to control. If pin number is 1 it's on, if pin number is 0 it's off.
	// (15~0)
	
	// "sensor_count" already reseted into "0" in main.c

	AdcRegs.ADCCHSELSEQ1.all = adc_array[ sensor_count ];
	AdcRegs.ADCCHSELSEQ2.all = adc_array[ sensor_count ]; 
	AdcRegs.ADCCHSELSEQ3.all = adc_array[ sensor_count ];
	AdcRegs.ADCCHSELSEQ4.all = adc_array[ sensor_count ]; 
	AdcRegs.ADCTRL2.bit.SOC_SEQ1 = 1; // adc interrupt start = adc 값 변환 시작 
}

interrupt void ADC_TIMER_ISR(void)
{
	adc_value_sum = 0;
	
	PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;
	GpioDataRegs.GPACLEAR.all =(ON_L << sensor_array[ sensor_count ]);

	adc_value_sum += (long)AdcMirror.ADCRESULT0;
	adc_value_sum += (long)AdcMirror.ADCRESULT1;
	adc_value_sum += (long)AdcMirror.ADCRESULT2;
	adc_value_sum += (long)AdcMirror.ADCRESULT3;	
	//about AdcRegs.ADCCHSELSEQ1
	
	adc_value_sum += (long)AdcMirror.ADCRESULT4;
	adc_value_sum += (long)AdcMirror.ADCRESULT5;
	adc_value_sum += (long)AdcMirror.ADCRESULT6;
	adc_value_sum += (long)AdcMirror.ADCRESULT7;
	//about AdcRegs.ADCCHSELSEQ2
	
	adc_value_sum += (long)AdcMirror.ADCRESULT8;
	adc_value_sum += (long)AdcMirror.ADCRESULT9;
	adc_value_sum += (long)AdcMirror.ADCRESULT10;
	adc_value_sum += (long)AdcMirror.ADCRESULT11; 
	//about AdcRegs.ADCCHSELSEQ3
	
	adc_value_sum += (long)AdcMirror.ADCRESULT12;
	adc_value_sum += (long)AdcMirror.ADCRESULT13;
	adc_value_sum += (long)AdcMirror.ADCRESULT14;
	adc_value_sum += (long)AdcMirror.ADCRESULT15;
	//about AdcRegs.ADCCHSELSEQ4

	AdcRegs.ADCTRL2.bit.RST_SEQ1 = 1; // adc 변환 종료, 순서 초기화 
	AdcRegs.ADCST.bit.INT_SEQ1_CLR = 1; // adc interrupt 종료 
	
	sensor_value[ sensor_count ].iq15_4095_value = adc_value_sum << 11; // 여러번 받은 값 평균 내는 중 . 형 변환중 사라지는거 생각 //divide into 8(2^3)(L:15+R:4=L:11)

	sensor_count ++;

	if(sensor_count >= SEN_NUM)
		sensor_count = 0;

	else;
}
