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

/* 5 or more seconds delay */
void blink_delay( void ){
	uint8_t seconds, counter, tgl;

	counter = 0;
	tgl = 16;
	seconds = 0;

	while(tgl > 1){
		counter++;
		counter &= 15;

		if(counter < tgl){
			HEATER_ON();
		}else{
			HEATER_OFF();
		}
		_delay_ms(1);

		if(counter == 0){
			tgl--;
		}
	}

	while(seconds < 2){

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

		while(tgl > 1){
			counter++;
			counter &= 15;

			if(counter < tgl){
				HEATER_ON();
			}else{
				HEATER_OFF();
			}
			_delay_ms(1);

			if(counter == 0){
				tgl--;
			}
		}

		HEATER_OFF();
		_delay_ms(2000);

		seconds++;
	}

	HEATER_OFF();
	_delay_ms(100);

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
}

int main( void )
{
	uint8_t temperature;

	_delay_ms(3000); // wait 3 seconds so we have time to disconnect after programming

	HwInit();

	while(true){
		HEATER_ON();
		_delay_ms(20);
		temperature = DS_readTemp();

		if(temperature == DS_ERR){
			dbg_printStr("\n\rno cup present");
			blink_delay();
		}else{
			if(temperature > TARGET_TEMP){
				dbg_printStr("\n\rOFF");
				blink_delay();
			}else{
				dbg_printStr("\n\rTemp:");
				dbg_printDec(temperature);
				HEATER_OFF();
				_delay_ms(200);
			}
		}
	}

	return 0;
}
