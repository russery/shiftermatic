/*************************************************************
 * Timer Driver
 * Robert Ussery
 * 12/14/2013
 *************************************************************/
#ifndef __TIMER_H
#define __TIMER_H

typedef enum
{
	TIMER_OK = 0,
	TIMER_ERROR_INUSE,
	TIMER_ERROR_INVALID
} Timer_Error_t;

typedef enum
{
	TIMER0 = 0,
	TIMER1 = 1,
	TIMER2 = 2,
} Timer_Number_t;


Timer_Error_t Timer_Init(Timer_Number_t num);

#endif
