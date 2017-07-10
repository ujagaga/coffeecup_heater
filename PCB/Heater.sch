EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:diodebridge
LIBS:Heater-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATTINY45-P IC1
U 1 1 59568822
P 4900 5400
F 0 "IC1" H 3750 5800 50  0000 C CNN
F 1 "ATTINY45-P" H 5750 5450 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 5350 5150 50  0000 C CIN
F 3 "" H 4900 5400 50  0000 C CNN
	1    4900 5400
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X03 P3
U 1 1 595689AB
P 7550 5650
F 0 "P3" H 7550 5850 50  0000 C CNN
F 1 "DS18B20" V 7650 5650 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 7550 5650 50  0001 C CNN
F 3 "" H 7550 5650 50  0000 C CNN
	1    7550 5650
	1    0    0    1   
$EndComp
$Comp
L R R26
U 1 1 595689F7
P 6400 4950
F 0 "R26" V 6480 4950 50  0000 C CNN
F 1 "10K" V 6400 4950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6330 4950 50  0001 C CNN
F 3 "" H 6400 4950 50  0000 C CNN
	1    6400 4950
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 59568A8D
P 1650 3700
F 0 "R1" V 1650 3400 50  0000 C CNN
F 1 "560K" V 1650 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1580 3700 50  0001 C CNN
F 3 "" H 1650 3700 50  0000 C CNN
	1    1650 3700
	-1   0    0    1   
$EndComp
$Comp
L R R29
U 1 1 59568C3A
P 7850 5450
F 0 "R29" V 7750 5450 50  0000 C CNN
F 1 "470R" V 7850 5450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7780 5450 50  0001 C CNN
F 3 "" H 7850 5450 50  0000 C CNN
	1    7850 5450
	0    1    1    0   
$EndComp
$Comp
L ZENER D3
U 1 1 59568E31
P 3150 5050
F 0 "D3" H 3150 5150 50  0000 C CNN
F 1 "ZD5V" H 3150 4950 50  0000 C CNN
F 2 "Diodes_SMD:D_MELF_Handsoldering" H 3150 5050 50  0001 C CNN
F 3 "" H 3150 5050 50  0000 C CNN
	1    3150 5050
	0    1    1    0   
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 595690E1
P 950 3550
F 0 "P1" H 950 3700 50  0000 C CNN
F 1 "220V 50Hz" V 1050 3550 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Angled_1x02_Pitch2.54mm" H 950 3550 50  0001 C CNN
F 3 "" H 950 3550 50  0000 C CNN
	1    950  3550
	-1   0    0    1   
$EndComp
$Comp
L C_Small C1
U 1 1 59569971
P 3400 5050
F 0 "C1" H 3410 5120 50  0000 L CNN
F 1 "10u" H 3410 4970 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3400 5050 50  0001 C CNN
F 3 "" H 3400 5050 50  0000 C CNN
	1    3400 5050
	1    0    0    -1  
$EndComp
$Comp
L R R39
U 1 1 59569A35
P 9250 3750
F 0 "R39" V 9300 3950 50  0000 C CNN
F 1 "560K" V 9250 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9180 3750 50  0001 C CNN
F 3 "" H 9250 3750 50  0000 C CNN
	1    9250 3750
	-1   0    0    1   
$EndComp
$Comp
L R R28
U 1 1 59569F49
P 7050 4950
F 0 "R28" V 7130 4950 50  0000 C CNN
F 1 "5K" V 7050 4950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6980 4950 50  0001 C CNN
F 3 "" H 7050 4950 50  0000 C CNN
	1    7050 4950
	1    0    0    1   
$EndComp
$Comp
L GNDREF #PWR01
U 1 1 5956A06F
P 7300 5900
F 0 "#PWR01" H 7300 5650 50  0001 C CNN
F 1 "GNDREF" H 7300 5750 50  0000 C CNN
F 2 "" H 7300 5900 50  0000 C CNN
F 3 "" H 7300 5900 50  0000 C CNN
	1    7300 5900
	-1   0    0    -1  
$EndComp
$Comp
L GNDREF #PWR02
U 1 1 5956AACB
P 1550 4800
F 0 "#PWR02" H 1550 4550 50  0001 C CNN
F 1 "GNDREF" H 1550 4650 50  0000 C CNN
F 2 "" H 1550 4800 50  0000 C CNN
F 3 "" H 1550 4800 50  0000 C CNN
	1    1550 4800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X06 P2
U 1 1 5956ABD8
P 6650 3900
F 0 "P2" H 6650 4250 50  0000 C CNN
F 1 "ICP" V 6750 3900 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x06_Pitch2.54mm" H 6650 3900 50  0001 C CNN
F 3 "" H 6650 3900 50  0000 C CNN
	1    6650 3900
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 59576662
P 2250 3700
F 0 "R5" V 2250 3400 50  0000 C CNN
F 1 "560K" V 2250 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2180 3700 50  0001 C CNN
F 3 "" H 2250 3700 50  0000 C CNN
	1    2250 3700
	-1   0    0    1   
$EndComp
$Comp
L R R4
U 1 1 595766C4
P 2100 3700
F 0 "R4" V 2100 3400 50  0000 C CNN
F 1 "560K" V 2100 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2030 3700 50  0001 C CNN
F 3 "" H 2100 3700 50  0000 C CNN
	1    2100 3700
	-1   0    0    1   
$EndComp
$Comp
L R R3
U 1 1 59576715
P 1950 3700
F 0 "R3" V 1950 3400 50  0000 C CNN
F 1 "560K" V 1950 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1880 3700 50  0001 C CNN
F 3 "" H 1950 3700 50  0000 C CNN
	1    1950 3700
	-1   0    0    1   
$EndComp
$Comp
L R R2
U 1 1 59576783
P 1800 3700
F 0 "R2" V 1800 3400 50  0000 C CNN
F 1 "560K" V 1800 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1730 3700 50  0001 C CNN
F 3 "" H 1800 3700 50  0000 C CNN
	1    1800 3700
	-1   0    0    1   
$EndComp
$Comp
L R R38
U 1 1 59579A3E
P 9100 3750
F 0 "R38" V 9150 3950 50  0000 C CNN
F 1 "560K" V 9100 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9030 3750 50  0001 C CNN
F 3 "" H 9100 3750 50  0000 C CNN
	1    9100 3750
	-1   0    0    1   
$EndComp
$Comp
L R R37
U 1 1 59579BAB
P 8950 3750
F 0 "R37" V 9000 3950 50  0000 C CNN
F 1 "560K" V 8950 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8880 3750 50  0001 C CNN
F 3 "" H 8950 3750 50  0000 C CNN
	1    8950 3750
	-1   0    0    1   
$EndComp
$Comp
L R R36
U 1 1 59579C21
P 8800 3750
F 0 "R36" V 8850 3950 50  0000 C CNN
F 1 "560K" V 8800 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8730 3750 50  0001 C CNN
F 3 "" H 8800 3750 50  0000 C CNN
	1    8800 3750
	-1   0    0    1   
$EndComp
$Comp
L R R35
U 1 1 59579C82
P 8650 3750
F 0 "R35" V 8700 3950 50  0000 C CNN
F 1 "560K" V 8650 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8580 3750 50  0001 C CNN
F 3 "" H 8650 3750 50  0000 C CNN
	1    8650 3750
	-1   0    0    1   
$EndComp
$Comp
L R R34
U 1 1 59579CFC
P 8500 3750
F 0 "R34" V 8550 3950 50  0000 C CNN
F 1 "560K" V 8500 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8430 3750 50  0001 C CNN
F 3 "" H 8500 3750 50  0000 C CNN
	1    8500 3750
	-1   0    0    1   
$EndComp
$Comp
L R R33
U 1 1 5957A387
P 8350 3750
F 0 "R33" V 8400 3950 50  0000 C CNN
F 1 "560K" V 8350 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8280 3750 50  0001 C CNN
F 3 "" H 8350 3750 50  0000 C CNN
	1    8350 3750
	-1   0    0    1   
$EndComp
$Comp
L R R32
U 1 1 5957A409
P 8200 3750
F 0 "R32" V 8250 3950 50  0000 C CNN
F 1 "560K" V 8200 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8130 3750 50  0001 C CNN
F 3 "" H 8200 3750 50  0000 C CNN
	1    8200 3750
	-1   0    0    1   
$EndComp
$Comp
L R R31
U 1 1 5957A495
P 8050 3750
F 0 "R31" V 8100 3950 50  0000 C CNN
F 1 "560K" V 8050 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7980 3750 50  0001 C CNN
F 3 "" H 8050 3750 50  0000 C CNN
	1    8050 3750
	-1   0    0    1   
$EndComp
$Comp
L R R30
U 1 1 5957A51F
P 7900 3750
F 0 "R30" V 7950 3950 50  0000 C CNN
F 1 "560K" V 7900 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7830 3750 50  0001 C CNN
F 3 "" H 7900 3750 50  0000 C CNN
	1    7900 3750
	-1   0    0    1   
$EndComp
Text Label 8750 3400 2    60   ~ 0
x75pcs(6.6W)
$Comp
L GNDREF #PWR03
U 1 1 5957BFE8
P 6400 4200
F 0 "#PWR03" H 6400 3950 50  0001 C CNN
F 1 "GNDREF" H 6200 4250 50  0000 C CNN
F 2 "" H 6400 4200 50  0000 C CNN
F 3 "" H 6400 4200 50  0000 C CNN
	1    6400 4200
	1    0    0    -1  
$EndComp
$Comp
L GNDREF #PWR04
U 1 1 59613334
P 3150 5900
F 0 "#PWR04" H 3150 5650 50  0001 C CNN
F 1 "GNDREF" H 3150 5750 50  0000 C CNN
F 2 "" H 3150 5900 50  0000 C CNN
F 3 "" H 3150 5900 50  0000 C CNN
	1    3150 5900
	1    0    0    -1  
$EndComp
$Comp
L MOC3023M U1
U 1 1 59614FA8
P 8350 5550
F 0 "U1" H 8140 5740 50  0000 L CNN
F 1 "MOC3023M" H 8200 5850 50  0000 L CNN
F 2 "Housings_DIP:DIP-6_W7.62mm" H 8150 5350 50  0000 L CIN
F 3 "" H 8325 5550 50  0000 L CNN
	1    8350 5550
	1    0    0    -1  
$EndComp
Connection ~ 2700 3900
Wire Wire Line
	6700 5350 6250 5350
Wire Wire Line
	6600 5250 6250 5250
Wire Wire Line
	6500 5150 6250 5150
Wire Wire Line
	6250 5650 6900 5650
Wire Wire Line
	6250 5450 7700 5450
Wire Wire Line
	1650 3550 1650 3500
Connection ~ 1650 3500
Wire Wire Line
	1800 3550 1800 3500
Connection ~ 1800 3500
Wire Wire Line
	1950 3550 1950 3500
Connection ~ 1950 3500
Wire Wire Line
	2100 3550 2100 3500
Connection ~ 2100 3500
Wire Wire Line
	2250 3550 2250 3500
Connection ~ 2250 3500
Wire Wire Line
	2400 3550 2400 3500
Connection ~ 2400 3500
Wire Wire Line
	1800 3850 1800 3900
Connection ~ 1800 3900
Wire Wire Line
	1950 3850 1950 4350
Connection ~ 1950 3900
Wire Wire Line
	2100 3850 2100 3900
Connection ~ 2100 3900
Wire Wire Line
	2250 3850 2250 3900
Connection ~ 2250 3900
Wire Wire Line
	2400 3850 2400 3900
Connection ~ 2400 3900
Wire Wire Line
	2550 3850 2550 3900
Connection ~ 2550 3900
Wire Wire Line
	3150 4850 3150 4750
Connection ~ 3150 4750
Wire Wire Line
	3150 5250 3150 5900
Wire Wire Line
	3400 4950 3400 4750
Connection ~ 3400 4750
Wire Wire Line
	8000 5450 8050 5450
Connection ~ 6400 5650
Wire Wire Line
	8500 3900 8500 4050
Wire Wire Line
	9100 3900 9100 4050
Connection ~ 9100 4050
Wire Wire Line
	8950 3900 8950 4050
Connection ~ 8950 4050
Wire Wire Line
	8800 3900 8800 4050
Connection ~ 8800 4050
Wire Wire Line
	8650 3900 8650 5450
Connection ~ 8650 4050
Wire Wire Line
	8500 3600 8500 3500
Wire Wire Line
	9100 3600 9100 3500
Connection ~ 9100 3500
Wire Wire Line
	8950 3600 8950 3500
Connection ~ 8950 3500
Connection ~ 8800 3500
Wire Wire Line
	8650 3600 8650 3500
Connection ~ 8650 3500
Connection ~ 8500 4050
Wire Wire Line
	8350 3900 8350 4050
Connection ~ 8350 4050
Wire Wire Line
	8200 3900 8200 4050
Connection ~ 8200 4050
Wire Wire Line
	8050 3900 8050 4050
Connection ~ 8050 4050
Connection ~ 8500 3500
Wire Wire Line
	8350 3600 8350 3500
Connection ~ 8350 3500
Wire Wire Line
	8200 3600 8200 3500
Connection ~ 8200 3500
Wire Wire Line
	8050 3600 8050 3500
Connection ~ 8050 3500
Wire Wire Line
	9250 3500 9250 3600
Wire Wire Line
	6400 4200 6400 4100
Connection ~ 6400 4750
Connection ~ 6800 4750
Wire Wire Line
	6250 5550 7050 5550
Wire Wire Line
	7050 5100 7050 5650
Wire Wire Line
	7050 5650 7350 5650
Wire Wire Line
	7300 5750 7350 5750
Wire Wire Line
	7300 5550 7350 5550
Connection ~ 7300 5750
Wire Wire Line
	7300 5550 7300 5900
Connection ~ 7050 5550
Wire Wire Line
	2800 4750 7050 4750
Wire Wire Line
	1650 3850 1650 3900
Wire Wire Line
	2550 3550 2550 3500
Connection ~ 2550 3500
Wire Wire Line
	1650 3900 5250 3900
Wire Wire Line
	1150 3600 1150 6200
Wire Wire Line
	1550 4800 1550 4750
Connection ~ 3550 4750
Wire Wire Line
	6400 4800 6400 4750
Wire Wire Line
	6400 5100 6400 5650
Wire Wire Line
	6500 5150 6500 4100
Wire Wire Line
	6600 4100 6600 5250
Wire Wire Line
	6700 4100 6700 5800
Wire Wire Line
	6800 4750 6800 4100
Wire Wire Line
	6900 5650 6900 4100
Wire Wire Line
	7050 4750 7050 4800
Wire Wire Line
	3550 5150 3550 4750
Wire Wire Line
	3150 5650 3550 5650
Wire Wire Line
	3400 5650 3400 5150
Connection ~ 3150 5650
Connection ~ 3400 5650
$Comp
L GNDREF #PWR05
U 1 1 5961517B
P 8050 5700
F 0 "#PWR05" H 8050 5450 50  0001 C CNN
F 1 "GNDREF" H 8050 5550 50  0000 C CNN
F 2 "" H 8050 5700 50  0000 C CNN
F 3 "" H 8050 5700 50  0000 C CNN
	1    8050 5700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8050 5700 8050 5650
Wire Wire Line
	1150 6200 8650 6200
Wire Wire Line
	8650 6200 8650 5650
Wire Wire Line
	9250 3900 9250 4050
Wire Wire Line
	9250 4050 7900 4050
Connection ~ 9250 3500
Connection ~ 2700 3500
Wire Wire Line
	2700 3550 2700 3500
Wire Wire Line
	8800 3600 8800 3500
Wire Wire Line
	7900 4050 7900 3900
Wire Wire Line
	7900 3600 7900 3500
Connection ~ 7900 3500
Wire Wire Line
	1150 3500 9250 3500
Wire Wire Line
	1950 5150 1950 6200
Connection ~ 1950 6200
$Comp
L LED D2
U 1 1 5961854B
P 2600 4750
F 0 "D2" H 2600 4850 50  0000 C CNN
F 1 "LED" H 2600 4650 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02_Pitch2.54mm" H 2600 4750 50  0001 C CNN
F 3 "" H 2600 4750 50  0000 C CNN
	1    2600 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	2400 4750 2350 4750
Wire Wire Line
	2700 3900 2700 3850
$Comp
L R R6
U 1 1 59576604
P 2400 3700
F 0 "R6" V 2400 3400 50  0000 C CNN
F 1 "560K" V 2400 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2330 3700 50  0001 C CNN
F 3 "" H 2400 3700 50  0000 C CNN
	1    2400 3700
	-1   0    0    1   
$EndComp
$Comp
L R R7
U 1 1 59576586
P 2550 3700
F 0 "R7" V 2550 3400 50  0000 C CNN
F 1 "560K" V 2550 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2480 3700 50  0001 C CNN
F 3 "" H 2550 3700 50  0000 C CNN
	1    2550 3700
	-1   0    0    1   
$EndComp
$Comp
L R R8
U 1 1 5957652C
P 2700 3700
F 0 "R8" V 2700 3400 50  0000 C CNN
F 1 "560K" V 2700 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2630 3700 50  0001 C CNN
F 3 "" H 2700 3700 50  0000 C CNN
	1    2700 3700
	-1   0    0    1   
$EndComp
$Comp
L R R9
U 1 1 5961949A
P 2850 3700
F 0 "R9" V 2850 3400 50  0000 C CNN
F 1 "560K" V 2850 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2780 3700 50  0001 C CNN
F 3 "" H 2850 3700 50  0000 C CNN
	1    2850 3700
	-1   0    0    1   
$EndComp
$Comp
L R R13
U 1 1 596194A0
P 3450 3700
F 0 "R13" V 3450 3400 50  0000 C CNN
F 1 "560K" V 3450 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3380 3700 50  0001 C CNN
F 3 "" H 3450 3700 50  0000 C CNN
	1    3450 3700
	-1   0    0    1   
$EndComp
$Comp
L R R12
U 1 1 596194A6
P 3300 3700
F 0 "R12" V 3300 3400 50  0000 C CNN
F 1 "560K" V 3300 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3230 3700 50  0001 C CNN
F 3 "" H 3300 3700 50  0000 C CNN
	1    3300 3700
	-1   0    0    1   
$EndComp
$Comp
L R R11
U 1 1 596194AC
P 3150 3700
F 0 "R11" V 3150 3400 50  0000 C CNN
F 1 "560K" V 3150 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3080 3700 50  0001 C CNN
F 3 "" H 3150 3700 50  0000 C CNN
	1    3150 3700
	-1   0    0    1   
$EndComp
$Comp
L R R10
U 1 1 596194B2
P 3000 3700
F 0 "R10" V 3000 3400 50  0000 C CNN
F 1 "560K" V 3000 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2930 3700 50  0001 C CNN
F 3 "" H 3000 3700 50  0000 C CNN
	1    3000 3700
	-1   0    0    1   
$EndComp
$Comp
L R R14
U 1 1 596194B8
P 3600 3700
F 0 "R14" V 3600 3400 50  0000 C CNN
F 1 "560K" V 3600 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3530 3700 50  0001 C CNN
F 3 "" H 3600 3700 50  0000 C CNN
	1    3600 3700
	-1   0    0    1   
$EndComp
$Comp
L R R15
U 1 1 596194BE
P 3750 3700
F 0 "R15" V 3750 3400 50  0000 C CNN
F 1 "560K" V 3750 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3680 3700 50  0001 C CNN
F 3 "" H 3750 3700 50  0000 C CNN
	1    3750 3700
	-1   0    0    1   
$EndComp
$Comp
L R R16
U 1 1 596194C4
P 3900 3700
F 0 "R16" V 3900 3400 50  0000 C CNN
F 1 "560K" V 3900 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3830 3700 50  0001 C CNN
F 3 "" H 3900 3700 50  0000 C CNN
	1    3900 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	2850 3550 2850 3500
Connection ~ 2850 3500
Wire Wire Line
	3000 3550 3000 3500
Connection ~ 3000 3500
Wire Wire Line
	3150 3500 3150 3550
Connection ~ 3150 3500
Wire Wire Line
	3300 3550 3300 3500
Connection ~ 3300 3500
Wire Wire Line
	3450 3550 3450 3500
Connection ~ 3450 3500
Wire Wire Line
	3600 3550 3600 3500
Connection ~ 3600 3500
Wire Wire Line
	3750 3550 3750 3500
Connection ~ 3750 3500
Wire Wire Line
	3900 3550 3900 3500
Connection ~ 3900 3500
Wire Wire Line
	3900 3900 3900 3850
Wire Wire Line
	3750 3850 3750 3900
Connection ~ 3750 3900
Wire Wire Line
	3600 3850 3600 3900
Connection ~ 3600 3900
Wire Wire Line
	3450 3850 3450 3900
Connection ~ 3450 3900
Wire Wire Line
	3300 3850 3300 3900
Connection ~ 3300 3900
Wire Wire Line
	3150 3850 3150 3900
Connection ~ 3150 3900
Wire Wire Line
	3000 3850 3000 3900
Connection ~ 3000 3900
Wire Wire Line
	2850 3850 2850 3900
Connection ~ 2850 3900
$Comp
L R R17
U 1 1 5961A4D0
P 4050 3700
F 0 "R17" V 4050 3400 50  0000 C CNN
F 1 "560K" V 4050 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3980 3700 50  0001 C CNN
F 3 "" H 4050 3700 50  0000 C CNN
	1    4050 3700
	-1   0    0    1   
$EndComp
$Comp
L R R21
U 1 1 5961A4D6
P 4650 3700
F 0 "R21" V 4650 3400 50  0000 C CNN
F 1 "560K" V 4650 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4580 3700 50  0001 C CNN
F 3 "" H 4650 3700 50  0000 C CNN
	1    4650 3700
	-1   0    0    1   
$EndComp
$Comp
L R R20
U 1 1 5961A4DC
P 4500 3700
F 0 "R20" V 4500 3400 50  0000 C CNN
F 1 "560K" V 4500 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4430 3700 50  0001 C CNN
F 3 "" H 4500 3700 50  0000 C CNN
	1    4500 3700
	-1   0    0    1   
$EndComp
$Comp
L R R19
U 1 1 5961A4E2
P 4350 3700
F 0 "R19" V 4350 3400 50  0000 C CNN
F 1 "560K" V 4350 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4280 3700 50  0001 C CNN
F 3 "" H 4350 3700 50  0000 C CNN
	1    4350 3700
	-1   0    0    1   
$EndComp
$Comp
L R R18
U 1 1 5961A4E8
P 4200 3700
F 0 "R18" V 4200 3400 50  0000 C CNN
F 1 "560K" V 4200 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4130 3700 50  0001 C CNN
F 3 "" H 4200 3700 50  0000 C CNN
	1    4200 3700
	-1   0    0    1   
$EndComp
$Comp
L R R22
U 1 1 5961A4EE
P 4800 3700
F 0 "R22" V 4800 3400 50  0000 C CNN
F 1 "560K" V 4800 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4730 3700 50  0001 C CNN
F 3 "" H 4800 3700 50  0000 C CNN
	1    4800 3700
	-1   0    0    1   
$EndComp
$Comp
L R R23
U 1 1 5961A4F4
P 4950 3700
F 0 "R23" V 4950 3400 50  0000 C CNN
F 1 "560K" V 4950 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4880 3700 50  0001 C CNN
F 3 "" H 4950 3700 50  0000 C CNN
	1    4950 3700
	-1   0    0    1   
$EndComp
$Comp
L R R24
U 1 1 5961A4FA
P 5100 3700
F 0 "R24" V 5100 3400 50  0000 C CNN
F 1 "560K" V 5100 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5030 3700 50  0001 C CNN
F 3 "" H 5100 3700 50  0000 C CNN
	1    5100 3700
	-1   0    0    1   
$EndComp
$Comp
L R R25
U 1 1 5961A500
P 5250 3700
F 0 "R25" V 5250 3400 50  0000 C CNN
F 1 "560K" V 5250 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5180 3700 50  0001 C CNN
F 3 "" H 5250 3700 50  0000 C CNN
	1    5250 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4050 3550 4050 3500
Connection ~ 4050 3500
Wire Wire Line
	4200 3500 4200 3550
Connection ~ 4200 3500
Wire Wire Line
	4350 3550 4350 3500
Connection ~ 4350 3500
Wire Wire Line
	4500 3550 4500 3500
Connection ~ 4500 3500
Wire Wire Line
	4650 3550 4650 3500
Connection ~ 4650 3500
Wire Wire Line
	4800 3550 4800 3500
Connection ~ 4800 3500
Wire Wire Line
	4950 3550 4950 3500
Connection ~ 4950 3500
Wire Wire Line
	5100 3550 5100 3500
Connection ~ 5100 3500
Wire Wire Line
	5250 3550 5250 3500
Connection ~ 5250 3500
Wire Wire Line
	5250 3900 5250 3850
Connection ~ 3900 3900
Wire Wire Line
	4050 3850 4050 3900
Connection ~ 4050 3900
Wire Wire Line
	4200 3850 4200 3900
Connection ~ 4200 3900
Wire Wire Line
	4350 3850 4350 3900
Connection ~ 4350 3900
Wire Wire Line
	4500 3850 4500 3900
Connection ~ 4500 3900
Wire Wire Line
	4650 3850 4650 3900
Connection ~ 4650 3900
Wire Wire Line
	4800 3850 4800 3900
Connection ~ 4800 3900
Wire Wire Line
	4950 3850 4950 3900
Connection ~ 4950 3900
Wire Wire Line
	5100 3850 5100 3900
Connection ~ 5100 3900
Text Label 4500 3250 2    60   ~ 0
x25pcs(2.2W)
$Comp
L LED D4
U 1 1 5961C8F6
P 6700 6550
F 0 "D4" H 6700 6650 50  0000 C CNN
F 1 "LED" H 6700 6450 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02_Pitch2.54mm" H 6700 6550 50  0001 C CNN
F 3 "" H 6700 6550 50  0000 C CNN
	1    6700 6550
	0    -1   -1   0   
$EndComp
$Comp
L GNDREF #PWR06
U 1 1 5961CE30
P 6700 6800
F 0 "#PWR06" H 6700 6550 50  0001 C CNN
F 1 "GNDREF" H 6700 6650 50  0000 C CNN
F 2 "" H 6700 6800 50  0000 C CNN
F 3 "" H 6700 6800 50  0000 C CNN
	1    6700 6800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6700 6800 6700 6750
$Comp
L R R27
U 1 1 5961D0D6
P 6700 5950
F 0 "R27" V 6780 5950 50  0000 C CNN
F 1 "2K2" V 6700 5950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6630 5950 50  0001 C CNN
F 3 "" H 6700 5950 50  0000 C CNN
	1    6700 5950
	1    0    0    1   
$EndComp
Wire Wire Line
	6700 6100 6700 6350
Connection ~ 6700 5350
$Comp
L Graetz D1
U 1 1 59612C40
P 1950 4750
F 0 "D1" H 1700 5050 50  0000 C CNN
F 1 "Graetz" H 2300 4400 50  0000 C CNN
F 2 "Diodes_SMD:Diode_Bridge_TO-269AA" H 1950 4750 50  0001 C CNN
F 3 "" H 1950 4750 50  0000 C CNN
	1    1950 4750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
