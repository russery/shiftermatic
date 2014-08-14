/*************************************************************
 * Shiftermatic Hardware Abstraction Layer
 * Robert Ussery
 * 12/14/2013
 *************************************************************/

#include <htc.h>
#include <pic12f683.h>

#include "HAL.h"

__CONFIG( 				\
	  FOSC_INTOSCIO		\ /* Select internal oscillator and use clk pins as IO */	  
	& WDTE_OFF 			\ /* Disable Watchdog timer */
	& PWRTE_ON			\ /* Enable power-on timer */
	& MCLRE_OFF			\ /* MCLRn is a GPIO */
	//& CP_ON				\ /* Enable code protection */
	//& CPD_ON			\ /* Enable data memory protection*/
	& BOREN_ON			\ /* Brownout Reset enable */
);

HAL_Error_t HAL_Init(void)
{
	OSCCONbits.SCS = 1;				// Internal oscillator
	OSCCONbits.IRCF = 0b111;		// 8MHz clock

	while(!OSCCONbits.HTS)
		;							// Wait for clock to stabilize


	return HAL_OK;
}
