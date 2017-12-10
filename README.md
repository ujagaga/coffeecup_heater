# coffeecup_heater
Keeps coffee hot indefinitely

Here is firmware for a coffee cup heater with a thermostat to hold coffee cup temperature high. 
It uses Digistump module with AtTiny85 to measure temperature via DS18B20 and start heater comprized of 220 ohm resistors.
LEDs are connected via resistors directly to the heater so they light up when the heater is on. 
I have modified the digistump module a bit, removed the 5V stabilizer and added an N channel mosfet to start the heater.
A microswitch is used to detect when you place a cup on the device. 
The Digistump module is placed under the heater and powered from a 5V/2A PSU. 
