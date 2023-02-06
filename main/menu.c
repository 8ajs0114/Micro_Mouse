//###########################################################################
//
// FILE		: Menu.c
//
// TITLE	: Menu c file.
//
// Author	: Yuk Keun Ho
//
// Company	: Maze & Hz
//
//###########################################################################

#include "DSP280x_Device.h"     // DSP280x Headerfile Include File
#include "DSP280x_Examples.h"   // DSP280x Examples Include File
#include "Main.h"
#include "Menu.h"

void FUCKING_NULL(void)
{
	VFDPrintf("Blank___");
	DELAY_US(500000);
}


void (*menu_func[X][Y])( void )={   FUCKING_NULL,	FUCKING_NULL,	FUCKING_NULL,	FUCKING_NULL,	FUCKING_NULL,
								   FUCKING_NULL,	FUCKING_NULL,	FUCKING_NULL,	FUCKING_NULL,	FUCKING_NULL,
								   FUCKING_NULL,	FUCKING_NULL,	FUCKING_NULL,	FUCKING_NULL,	FUCKING_NULL 
								};

char setting[X][Y][WORD_LENGTH]={ "Sensor__",	"Max_Min_",	"Val_4095",	"Val_0127",	"Blank___",
				       			"Check___",	"Pos_____",	"Mm______",	"Blank___",	"Line____",
				        		  	"Run_____",	"Search__",	"Advanced",	"Ch_Advan",	"Ch_Basic"
				      	  		    };
				    
void menu(void)
{
	int32 int32_X=0;
	int32 int32_Y=0;

	while(1)
	{ 	
		VFDPrintf((char*)setting[int32_X][int32_Y]);
		DELAY_US(100000);
		
		if (SR == OFF)
		{
			int32_X++;
			
			if (int32_X > (X-1)) 
			{
				int32_X = 0;
			}
			VFDPrintf((char*)setting[int32_X][int32_Y]);
			DELAY_US(100000);	
			
		}

		else if (SL == OFF)
		{
			int32_X--;

			if (int32_X < 0) 
			{
				int32_X = (X-1);
			}
			VFDPrintf((char*)setting[int32_X][int32_Y]);
			DELAY_US(100000);
			
		}

		else if (SD == OFF)
		{
			VFDPrintf("SUB___IN");
			DELAY_US(100000);
			
			while (1)
			{		
				VFDPrintf((char*)setting[int32_X][int32_Y]);
				DELAY_US(100000);	
				if (SR == OFF)
				{
					int32_Y++;			

					if (int32_Y > (Y-1)) 
					{
						int32_Y= 0;
					}
					VFDPrintf((char*)setting[int32_X][int32_Y]);
					DELAY_US(100000);
					
				}

				else if (SL == OFF)
				{
					int32_Y--;

					if (int32_Y < 0) 
					{
						int32_Y = (Y-1);
					}
					VFDPrintf((char*)setting[int32_X][int32_Y]);
					DELAY_US(100000);					
				}

				else if(SD==OFF) 
				{
					menu_func[int32_X][int32_Y]();
				}

				else if (SU == OFF)
				{	
					int32_Y = 0;
					VFDPrintf("SUB__OUT");
					DELAY_US(100000);
					
					break;
				}

				else;
			}
		}

		else;
	}
}


//배열 속 변수의 범위를 넘어갈 때의 상황을 에러처리할 경우 변수의 증감식 바로 밑에 두는것이 좋다. 
//배열 속 변수가 범위를 넘어갈 때 음수로 표현하는것은 노이즈를 발생시킨다.
//NULL 값으로 함수를 지정할 경우 , 함수 실행을 하면 아무것도 하지 않아서 작동이 멈추게 되므로 임의의 의미없는 함수를 만들어 실행시켜야 한다. 
//본인의 경우FUCKING_NULL이 그러하다. 

