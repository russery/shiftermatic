/*************************************************************
 * Shiftermatic Main Code
 * Robert Ussery
 * 12/14/2013
 *************************************************************/

#include <htc.h>
#include <pic12f683.h>

void main(void) 
{
	long i = 0;
	// Start LED
	// Start timer
	// Start serial interface

	TRISIO5 = 0;
GP5 = 1;
	
	while(1)
	{
		while(i<60000)
		{
			i++;			
		}

		GP5 = 1;
		
		i=0;

		while(i<60000)
		{
			i++;			
		}

		GP5 = 0;
		i=0;
	}
}