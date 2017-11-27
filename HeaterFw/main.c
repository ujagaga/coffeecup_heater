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
#define SENS_INIT()				do{ DDRB |= SENS_PIN_MASK; _delay_ms(50);}while(0)
#define SENS_START()			do{ DDRB &= ~SENS_PIN_MASK; }while(0)
#define SENS_LOW()				((PINB & SENS_PIN_MASK) == 0)
#define ONE_SEC_COUNT			(62500)
#define TARGET_TEMP				(60)
#define TMR_START()				do{ TCCR0B = (1 << CS00); }while(0)
#define TMR_STOP()				do{ TCCR0B = 0; }while(0)

volatile uint8_t tmr_seconds;
volatile uint16_t tmr_count;
volatile uint8_t sens_count;

ISR(TIMER0_OVF_vect)
{
	tmr_count++;
	sens_count++;
	if(tmr_count == ONE_SEC_COUNT){
		tmr_count = 0;
		tmr_seconds++;
	}
}

void HwInit( void )
{
	PORTB = 0;					// is the default, but just to make sure and not rely on the bootloader
	DDRB = HEATER_PIN_MASK;
	dbg_tx_init();

	TIFR |= 0x01;       		// clear interrupt flag
	TCCR0A = 0;      			// Normal mode
	TIMSK = (1 << TOIE0);       // TC0 enable overflow interrupt
	TMR_START(); 				// prescale by 1
	sei();
}



uint16_t sens_time( void ){
	SENS_INIT();
	sens_count = 0;

	while(sens_count == 0);

	uint8_t startVal = TCNT0;
	SENS_START();

	while(SENS_LOW());

	TMR_STOP();

	uint8_t endVal = TCNT0;
	uint16_t retVal = (endVal - startVal) + ((sens_count - 1) << 8);

	TMR_START();

	return retVal;
}

int main( void )
{
	uint8_t temperature;
	uint16_t time;

	_delay_ms(3000); // wait 5 seconds so we have time to disconnect after programming

	HwInit();
	HEATER_ON();
	_delay_ms(100);


	while(true){
		temperature = DS_readTemp();
		if(temperature > TARGET_TEMP){
			HEATER_OFF();
			_delay_ms(5000);
			HEATER_ON();
		}

		time = sens_time();

		dbg_printDec(time);
		dbg_putchar('\n');
//		_delay_ms(1000);
	}

	return 0;
}
