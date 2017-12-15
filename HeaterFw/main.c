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
#define SW_PIN_MASK				(1 << SW_PIN)
#define HEATER_ON()				do{ PORTB |= HEATER_PIN_MASK; }while(0)
#define HEATER_OFF()			do{ PORTB &= ~HEATER_PIN_MASK; }while(0)
#define CUP_PRESENT()			((PINB & SW_PIN_MASK) == 0)
#define TARGET_TEMP				(90)
#define HEATER_IS_OFF()			((PORTB &= HEATER_PIN_MASK) == 0)

bool state = false;

void HwInit( void )
{
	PORTB = 0;					// is the default, but just to make sure and not rely on the bootloader
	DDRB = HEATER_PIN_MASK;
	dbg_tx_init();
}

/* PWM with decreasing on time */
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
	state = false;
}

/* PWM with increasing on time */
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
	state = true;
}

int main( void )
{
	uint8_t temperature;
	
	HwInit();

	while(true){	/* Main loop */
		if(CUP_PRESENT()){
			temperature = DS_readTemp();

			if(temperature < TARGET_TEMP){
				/* on */
				if(state){
					soft_off();	/* just to lower the average power a bit */
				}

				if(!state){
					soft_on();
				}
			}else{
				/* off */
				if(!state){
					soft_on();	/* just for the "look alive" effect */
				}
				if(state){
					soft_off();
				}
				_delay_ms(500);
			}
			_delay_ms(500);
		}else{
			if(!HEATER_IS_OFF()){
				soft_off();
			}
		}
	}

	return 0;
}
