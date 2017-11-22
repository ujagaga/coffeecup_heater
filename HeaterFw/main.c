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

#define SWITCH_PIN				(PB2)
#define LED_PIN					(PB1)
#define SENS_PIN				(PB0)

#define SWITCH_PIN_MASK			(1 << SWITCH_PIN)
#define LED_PIN_MASK			(1 << LED_PIN)
#define SENS_PIN_MASK			(1 << SENS_PIN)

#define LED_ON()				do{ PORTB |= LED_PIN_MASK; }while(0)
#define LED_OFF()				do{ PORTB &= ~LED_PIN_MASK; }while(0)

#define HEATER_ON()				do{ PORTB &= ~SWITCH_PIN_MASK; }while(0)
#define HEATER_OFF()			do{ PORTB |= SWITCH_PIN_MASK; }while(0)

#define SENS_INIT()				do{ DDRB |= SENS_PIN_MASK; _delay_ms(10); }while(0)
#define SENS_LISTEN()			do{ DDRB &= ~SENS_PIN_MASK; }while(0)

#define TARGET_TEMP	(70)

void HwInit( void )
{
	PORTB = 0;	// is the default, but just to make sure
	LED_OFF();
	HEATER_OFF();
	DDRB = SWITCH_PIN_MASK | LED_PIN_MASK;
	SENS_INIT();
}

int main( void )
{
	HwInit();

	while(true){
		LED_ON();
		_delay_ms(200);
		LED_OFF();
		_delay_ms(1000);
		HEATER_ON();
		_delay_ms(200);
		HEATER_OFF();
		_delay_ms(1000);
	}

	uint8_t temp;
	while(true){
		temp = DS_readTemp();

		if(temp < TARGET_TEMP){
			HEATER_ON();
		}else{
			HEATER_OFF();
		}
		_delay_ms(1000);
	}

	return 0;
}
