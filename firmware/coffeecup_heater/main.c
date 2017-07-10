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

#define TARGET_TEMP	(16*40)

void HwInit( void )
{
	DDRB = SWITCH_PIN_MASK | LED_PIN_MASK;

	heaterOff();
}

int main( void )
{
	HwInit();

	while(true){
		heaterOn();
		_delay_ms(1000);
		heaterOff();
		_delay_ms(1000);
	}

	uint16_t i, j;
	while(true){
		i = DS_readTemp();

		for(j = 0; j < i; j++){
			heaterOn();
			_delay_ms(300);
			heaterOff();
			_delay_ms(300);
		}
		_delay_ms(2000);
	}

	while(true){
		if(DS_readTemp() < TARGET_TEMP){
			heaterOn();
		}else{
			heaterOff();
		}
	}

	return 0;
}
