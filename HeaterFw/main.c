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

#define HEATER_PIN_MASK			(1 << HEATER_PIN)
#define HEATER_ON()				do{ PORTB |= HEATER_PIN_MASK; }while(0)
#define HEATER_OFF()			do{ PORTB &= ~HEATER_PIN_MASK; }while(0)
#define TARGET_TEMP				(90)


void HwInit( void )
{
	PORTB = 0;					// is the default, but just to make sure and not rely on the bootloader
	DDRB = HEATER_PIN_MASK;
	dbg_tx_init();
}

void soft_off(){
	uint8_t counter, tgl;

	counter = 0;
	tgl = 0;

	while(tgl < 16){
		counter++;

		counter &= 15;

		if(counter < tgl){
			HEATER_OFF();
		}else{
			HEATER_ON();
		}
		_delay_ms(1);

		if(counter == 0){
			tgl++;
		}
	}

	HEATER_OFF();
}

void soft_on(){
	uint8_t counter, tgl;

	counter = 0;
	tgl = 0;

	while(tgl < 16){
		counter++;

		counter &= 15;

		if(counter < tgl){
			HEATER_ON();
		}else{
			HEATER_OFF();
		}
		_delay_ms(1);

		if(counter == 0){
			tgl++;
		}
	}

	HEATER_ON();
}

void blink_delay(){
	uint8_t seconds;

	for(seconds = 0; seconds < 5; seconds++){
		_delay_ms(1000);
		soft_on();
		soft_off();
	}
}

int main( void )
{
	uint8_t temperature;

	_delay_ms(3000); // wait 3 seconds so we have time to disconnect after programming

	HwInit();

	while(true){
		soft_on();
		_delay_ms(20);

		temperature = DS_readTemp();

		if(temperature != DS_ERR){
			soft_off();
			if(temperature > TARGET_TEMP){
				/* off */
				blink_delay();
			}
		}else{
			soft_off();
			_delay_ms(5000);
		}
	}

	return 0;
}
