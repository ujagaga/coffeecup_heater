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
#include "dbg_putchar.h"
#include "hw_cfg.h"

#define SENS_PIN_MASK			(1 << SENS_PIN)
#define HEATER_PIN_MASK			(1 << HEATER_PIN)
#define HEATER_ON()				do{ PORTB |= HEATER_PIN_MASK; }while(0)
#define HEATER_OFF()			do{ PORTB &= ~HEATER_PIN_MASK; }while(0)
#define KEYPRESS()				((PINB & SENS_PIN_MASK) == 0)
#define TARGET_TEMP				(100)


void HwInit( void )
{
	PORTB = 0;					// is the default, but just to make sure and not rely on the bootloader
	DDRB = HEATER_PIN_MASK;
	dbg_tx_init();
}


int main( void )
{
	uint8_t temperature;

	_delay_ms(3000); // wait 5 seconds so we have time to disconnect after programming

	HwInit();

	while(true){
		HEATER_ON();
		_delay_ms(20);
		temperature = DS_readTemp();

		if(temperature == DS_ERR){
			HEATER_OFF();
			dbg_printStr("\n\rno cup present");
			_delay_ms(5000);
		}else{
			if(temperature > TARGET_TEMP){
				HEATER_OFF();
				dbg_printStr("\n\rOFF");
				_delay_ms(5000);
			}else{
				dbg_printStr("\n");
				dbg_printDec(temperature);
			}
		}
	}

	return 0;
}
