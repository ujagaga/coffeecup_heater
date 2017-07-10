/*
 * main.c
 *
 *  Created on: Jul 9, 2017
 *      Author: ujagaga
 */


#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdint.h>
#include <stdbool.h>
#include <util/delay.h>
#include "DS18B20.h"
#include "main.h"

#define TARGET_TEMP	(16*70)

void HwInit( void )
{
	DDRB = SWITCH_PIN_MASK;

	heaterOff();

	sei();
}

int main( void )
{
	HwInit();

	while(true){
		if(DS_readTemp() < TARGET_TEMP){
			heaterOn();
		}else{
			heaterOff();
		}
	}

	return 0;

}
