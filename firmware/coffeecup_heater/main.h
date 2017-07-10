/*
 * main.h
 *
 *  Created on: Oct 24, 2016
 *      Author: rada
 */

#ifndef MAIN_H_
#define MAIN_H_

#define SWITCH_PIN				(PB3)
#define LED_PIN					(PB2)
#define SWITCH_PIN_MASK			(1 << SWITCH_PIN)
#define LED_PIN_MASK			(1 << LED_PIN)

#define LED_ON()				do{ PORTB |= LED_PIN_MASK; }while(0)
#define LED_OFF()				do{ PORTB &= ~LED_PIN_MASK; }while(0)

#define heaterOn()				do{ PORTB |= SWITCH_PIN_MASK; LED_ON(); }while(0)
#define heaterOff()				do{ PORTB &= ~SWITCH_PIN_MASK; LED_OFF(); }while(0)

#endif /* MAIN_H_ */
