#define _MAIN_
#define __STRUCT__


#include "DSP280x_Device.h"     // DSP281x Headerfile Include File
#include "DSP280x_Examples.h"  // DSP281x Examples Include File
//#include "menu.h"

void System_Init(void)
{
	DINT;				// ��ü ���ͷ�Ʈ ����
	InitSysCtrl();		// ��ġ�� ����, PLL �ʱ�ȭ, �ֺ� ��ġ Ŭ������
	InitGpio();			// ����� ��Ʈ �ʱ�ȭ	
	InitCpuTimers();
	
	MemCopy(&RamfuncsLoadStart, 	&RamfuncsLoadEnd, 		&RamfuncsRunStart); 
	MemCopy(&RamfuncsLoadStart1, 	&RamfuncsLoadEnd1, 	&RamfuncsRunStart1);
	
	InitSci();			
	InitSpi();
	InitPieCtrl();		// PIE ���� �������� �ʱ�ȭ ����
	IER = 0x0000;		// ���ͷ�Ʈ �ο��̺� �������� Ŭ����
	IFR = 0x0000;		// ���ͷ�Ʈ �÷��� �������� Ŭ����
	InitPieVectTable();
	InitAdc();

	Init_ISR();

	InitEPWM( &EPwm5Regs );
	InitEPWM( &EPwm6Regs );
	
	InitEQep( &LeftQepRegs );
	InitEQep( &RightQepRegs );
	
}

void Variable_Init( void )
{
	sensor_count = 0;
	adc_value_sum = 0;
	i = 0;

	memset( (void *)	&L_motor, 	0x00, sizeof(motor_t) );
	memset( (void *)	&R_motor, 	0x00, sizeof(motor_t) );

}

void main(void)
{	
//	VFDPrintf("USERCODE");
	System_Init();
	Variable_Init();
//	StartCpuTimer0();
	StartCpuTimer2();

	while( 1 )
	{	/*
		TxPrintf("[0] Value : %4.0f \t",	_IQtoF(sensor_value[0].iq15_4095_value));
		TxPrintf("[1] Value : %4.0f \t",	_IQtoF(sensor_value[2].iq15_4095_value));
		TxPrintf("[2] Value : %4.0f \t",	_IQtoF(sensor_value[4].iq15_4095_value));
		TxPrintf("[3] Value : %4.0f \t",	_IQtoF(sensor_value[1].iq15_4095_value));
		TxPrintf("[4] Value : %4.0f \t",	_IQtoF(sensor_value[3].iq15_4095_value));
		TxPrintf("[5] Value : %4.0f \n",	_IQtoF(sensor_value[5].iq15_4095_value));
		*/

		//------------------------------------------------------------//
		// encoder test
		// Raw QEP Data Check
		TxPrintf("Left Qep Count : %d\t", L_motor.u16_qep_count);
		TxPrintf("Right Qep Count : %d\t", R_motor.u16_qep_count); 

		// Operated Qep Data Check ( Forward : +, Backward : - )
		TxPrintf("Left Qep Value : %d\t", L_motor.int16_qep_value);
		TxPrintf("Right Qep Value : %d\t", R_motor.int16_qep_value);

		// Moved Distance Data Check
		TxPrintf("Left Qep : %f\t", _IQtoF(L_motor.iq15_distance_sum));
		TxPrintf("Right Qep : %f\n", _IQtoF(R_motor.iq15_distance_sum));		
	}	
}



void Delay(Uint32 Cnt)
{
	while(Cnt--)
	{
		asm("		nop");
		
		asm("	nop");	
	}
}

