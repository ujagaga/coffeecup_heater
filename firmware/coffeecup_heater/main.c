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

#define SWITCH_PIN				(PB4)
#define LED_PIN					(PB3)
#define SWITCH_PIN_MASK			(1 << SWITCH_PIN)
#define LED_PIN_MASK			(1 << LED_PIN)

#define LED_ON()				do{ PORTB &= ~LED_PIN_MASK; }while(0)
#define LED_OFF()				do{ PORTB |= LED_PIN_MASK; }while(0)

#define heaterOn()				do{ PORTB |= SWITCH_PIN_MASK; LED_ON(); }while(0)
#define heaterOff()				do{ PORTB &= ~SWITCH_PIN_MASK; LED_OFF(); }while(0)

#define TARGET_TEMP	(70)

void HwInit( void )
{
	DDRB = SWITCH_PIN_MASK | LED_PIN_MASK;

	heaterOff();
}

int main( void )
{
	HwInit();

	uint8_t temp;
	while(true){
		temp = DS_readTemp();

		if(temp < TARGET_TEMP){
			heaterOn();
		}else{
			heaterOff();
		}
		_delay_ms(1000);
	}

	return 0;
}
