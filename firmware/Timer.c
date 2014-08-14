/*************************************************************
 * Timer Driver
 * Robert Ussery
 * 12/14/2013
 *************************************************************/
#include <htc.h>
#include <pic12f683.h>

#include "timer.h"

typedef struct
{
	unsigned Enabled:1;
	unsigned char Eon;
}Timer_Status_t;

#define NUM_TIMERS		3
Timer_Status_t Timer[NUM_TIMERS] = 0;

Timer_Error_t Timer_Init(Timer_Number_t num)
{
	if(num > NUM_TIMERS-1)
		return TIMER_ERROR_INVALID;
	if(Timer[num].Enabled)
		return TIMER_ERROR_INUSE;

	switch(num)
	{
	case TIMER0:

		break;
	case TIMER1:

		break;
	case TIMER2:

		break;
	default:
		return TIMER_ERROR_INVALID;
	}

	Timer[num].Enabled = 1;
	return TIMER_OK;
}

unsigned char Timer0_GetCount(void)
{
	return TMR0;
}

unsigned short Timer1_GetCount(void)
{
	return (TMR1H * 256) + TMR1L;

}

unsigned char Timer2_GetCount(void)
{
	return TMR2;
}
