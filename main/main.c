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

}

void main(void)
{	
	VFDPrintf("USERCODE");
	System_Init();
	Variable_Init();
	StartCpuTimer0();

	while( 1 )
	{
			TxPrintf("[0] Value : %4.0f \t",	_IQtoF(sensor_value[0].iq15_4095_value));
			TxPrintf("[1] Value : %4.0f \t",	_IQtoF(sensor_value[2].iq15_4095_value));
			TxPrintf("[2] Value : %4.0f \t",	_IQtoF(sensor_value[4].iq15_4095_value));
			TxPrintf("[3] Value : %4.0f \t",	_IQtoF(sensor_value[1].iq15_4095_value));
			TxPrintf("[4] Value : %4.0f \t",	_IQtoF(sensor_value[3].iq15_4095_value));
			TxPrintf("[5] Value : %4.0f \n",	_IQtoF(sensor_value[5].iq15_4095_value));
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

