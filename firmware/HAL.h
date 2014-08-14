/*************************************************************
 * Shiftermatic Hardware Abstraction Layer
 * Robert Ussery
 * 12/14/2013
 *************************************************************/
#ifndef __HAL_H
#define __HAL_H
 
typedef enum
{
	HAL_OK = 0,
	HAL_ERROR = -1
} HAL_Error_t;



HAL_Error_t HAL_Init(void);

#endif
