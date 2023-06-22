EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Filament recycling controller"
Date "2022-10-09"
Rev "1"
Comp "Benjamin Solar"
Comment1 "TODO: Display"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L _Embedded:Polulu_A4988 U2
U 1 1 63430B38
P 5775 3075
F 0 "U2" H 5775 3625 50  0000 C CNN
F 1 "Polulu_A4988" H 5800 3550 50  0000 C CNN
F 2 "" V 5725 3075 50  0001 C CNN
F 3 "https://www.pololu.com/file/0J1082/a4988-stepper-motor-driver-carrier-dimension-diagram.pdf" V 5725 3075 50  0001 C CNN
	1    5775 3075
	1    0    0    -1  
$EndComp
$Comp
L _AtMega:AtMega328_U=wPorts= U1
U 1 1 63433242
P 4200 2800
F 0 "U1" H 4200 3625 50  0000 C CNN
F 1 "AtMega328_U" H 4200 3550 50  0000 C CNN
F 2 "" V 4150 2800 50  0001 C CNN
F 3 "C:\\Users\\Benjamin\\Documents\\Datasheets\\AtmelMCUs\\AtMega328p.pdf" V 4150 2800 50  0001 C CNN
	1    4200 2800
	1    0    0    -1  
$EndComp
NoConn ~ 5400 2725
NoConn ~ 5400 2825
NoConn ~ 5400 2925
NoConn ~ 5400 3025
Wire Wire Line
	5400 3125 5350 3125
Wire Wire Line
	5350 3125 5350 3225
Wire Wire Line
	5350 3225 5400 3225
Text GLabel 5400 3425 0    50   Input ~ 0
DIR
Text GLabel 5400 3325 0    50   Input ~ 0
STEP
Text GLabel 3800 2550 0    50   Input ~ 0
DIR
Text GLabel 3800 2450 0    50   Input ~ 0
STEP
$Comp
L power:+5V #PWR01
U 1 1 63438152
P 6175 3325
F 0 "#PWR01" H 6175 3175 50  0001 C CNN
F 1 "+5V" V 6175 3425 50  0000 L CNN
F 2 "" H 6175 3325 50  0001 C CNN
F 3 "" H 6175 3325 50  0001 C CNN
	1    6175 3325
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 63438749
P 6175 3425
F 0 "#PWR02" H 6175 3175 50  0001 C CNN
F 1 "GND" V 6175 3325 50  0000 R CNN
F 2 "" H 6175 3425 50  0001 C CNN
F 3 "" H 6175 3425 50  0001 C CNN
	1    6175 3425
	0    -1   -1   0   
$EndComp
$Comp
L Motor:Stepper_Motor_bipolar M1
U 1 1 6343957B
P 7375 3175
F 0 "M1" H 7563 3299 50  0000 L CNN
F 1 "Stepper motor NEMA17" H 7563 3208 50  0000 L CNN
F 2 "" H 7385 3165 50  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Application-Note-TLE8110EE_driving_UniPolarStepperMotor_V1.1.pdf?fileId=db3a30431be39b97011be5d0aa0a00b0" H 7385 3165 50  0001 C CNN
	1    7375 3175
	1    0    0    -1  
$EndComp
Text GLabel 7275 2875 1    50   Input ~ 0
M_C1+
Text GLabel 7475 2875 1    50   Input ~ 0
M_C1-
Text GLabel 6175 3125 2    50   Input ~ 0
M_C1+
Text GLabel 6175 3225 2    50   Input ~ 0
M_C1-
Text GLabel 7075 3075 0    50   Input ~ 0
M_C2+
Text GLabel 7075 3275 0    50   Input ~ 0
M_C2-
Text GLabel 6175 3025 2    50   Input ~ 0
M_C2+
Text GLabel 6175 2925 2    50   Input ~ 0
M_C2-
$Comp
L Device:Thermistor_NTC TH1
U 1 1 6344A2A3
P 3050 4375
F 0 "TH1" H 2897 4329 50  0000 R CNN
F 1 "Thermistor 100kR" H 2897 4420 50  0000 R CNN
F 2 "" H 3050 4425 50  0001 C CNN
F 3 "~" H 3050 4425 50  0001 C CNN
	1    3050 4375
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 6344B5A5
P 3050 4075
F 0 "R1" H 2980 4029 50  0000 R CNN
F 1 "4.7kR" H 2980 4120 50  0000 R CNN
F 2 "" V 2980 4075 50  0001 C CNN
F 3 "~" H 3050 4075 50  0001 C CNN
	1    3050 4075
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 6344DB0B
P 3050 3925
F 0 "#PWR03" H 3050 3775 50  0001 C CNN
F 1 "+5V" H 3050 4075 50  0000 C CNN
F 2 "" H 3050 3925 50  0001 C CNN
F 3 "" H 3050 3925 50  0001 C CNN
	1    3050 3925
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 6344E27D
P 3050 4525
F 0 "#PWR04" H 3050 4275 50  0001 C CNN
F 1 "GND" H 3050 4375 50  0000 C CNN
F 2 "" H 3050 4525 50  0001 C CNN
F 3 "" H 3050 4525 50  0001 C CNN
	1    3050 4525
	1    0    0    -1  
$EndComp
Connection ~ 3050 4225
Text GLabel 2525 4225 0    50   Input ~ 0
TEMP
Text GLabel 4600 2650 2    50   Input ~ 0
TEMP
$Comp
L Device:Heater R2
U 1 1 63455C37
P 5525 4850
F 0 "R2" H 5595 4896 50  0000 L CNN
F 1 "24V 40W" H 5595 4805 50  0000 L CNN
F 2 "" V 5455 4850 50  0001 C CNN
F 3 "~" H 5525 4850 50  0001 C CNN
	1    5525 4850
	1    0    0    -1  
$EndComp
Text GLabel 4325 5200 0    50   Input ~ 0
HEAT
Text GLabel 3800 2650 0    50   Input ~ 0
HEAT
$Comp
L Device:Rotary_Encoder_Switch SW1
U 1 1 6345D92C
P 2775 3050
F 0 "SW1" H 2775 3417 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 2775 3326 50  0000 C CNN
F 2 "" H 2625 3210 50  0001 C CNN
F 3 "~" H 2775 3310 50  0001 C CNN
	1    2775 3050
	1    0    0    -1  
$EndComp
Text Notes 2550 3375 0    50   ~ 0
TODO: Display
Wire Wire Line
	7900 4175 7900 4125
Wire Wire Line
	7550 4175 7900 4175
Wire Wire Line
	7900 3975 7900 4025
Wire Wire Line
	7550 3975 7900 3975
$Comp
L Device:CP1_Small C1
U 1 1 6343FD52
P 7550 4075
F 0 "C1" H 7625 4125 50  0000 L CNN
F 1 "100uF" H 7625 4025 50  0000 L CNN
F 2 "" H 7550 4075 50  0001 C CNN
F 3 "~" H 7550 4075 50  0001 C CNN
	1    7550 4075
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 3975 7550 3975
Connection ~ 7550 3975
Wire Wire Line
	7500 4175 7550 4175
Connection ~ 7550 4175
$Comp
L Device:Q_NMOS_DGS Q1
U 1 1 634F8C91
P 5425 5200
F 0 "Q1" H 5629 5246 50  0000 L CNN
F 1 "Q_NMOS_DGS" H 5629 5155 50  0000 L CNN
F 2 "" H 5625 5300 50  0001 C CNN
F 3 "~" H 5425 5200 50  0001 C CNN
	1    5425 5200
	1    0    0    -1  
$EndComp
$Comp
L _Connectors:2PinHeader J1
U 1 1 6343DBE7
P 8000 4075
F 0 "J1" H 7872 4126 50  0000 R CNN
F 1 "PSU 12V" H 7872 4035 50  0000 R CNN
F 2 "" V 7800 4075 50  0001 C CNN
F 3 "" V 7800 4075 50  0001 C CNN
	1    8000 4075
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7475 4675 7525 4675
Wire Wire Line
	7475 4475 7525 4475
$Comp
L _Connectors:2PinHeader J2
U 1 1 6346329A
P 7975 4575
F 0 "J2" H 7847 4626 50  0000 R CNN
F 1 "PSU 5V" H 7847 4535 50  0000 R CNN
F 2 "" V 7775 4575 50  0001 C CNN
F 3 "" V 7775 4575 50  0001 C CNN
	1    7975 4575
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C2
U 1 1 6346328E
P 7525 4575
F 0 "C2" H 7600 4625 50  0000 L CNN
F 1 "100uF" H 7600 4525 50  0000 L CNN
F 2 "" H 7525 4575 50  0001 C CNN
F 3 "~" H 7525 4575 50  0001 C CNN
	1    7525 4575
	1    0    0    -1  
$EndComp
Connection ~ 7525 4475
Wire Wire Line
	7525 4475 7875 4475
Wire Wire Line
	7875 4475 7875 4525
Connection ~ 7525 4675
Wire Wire Line
	7525 4675 7875 4675
Wire Wire Line
	7875 4675 7875 4625
$Comp
L power:+5V #PWR09
U 1 1 634FDA94
P 7475 4475
F 0 "#PWR09" H 7475 4325 50  0001 C CNN
F 1 "+5V" V 7490 4603 50  0000 L CNN
F 2 "" H 7475 4475 50  0001 C CNN
F 3 "" H 7475 4475 50  0001 C CNN
	1    7475 4475
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 634FE50C
P 7475 4675
F 0 "#PWR010" H 7475 4425 50  0001 C CNN
F 1 "GND" V 7475 4575 50  0000 R CNN
F 2 "" H 7475 4675 50  0001 C CNN
F 3 "" H 7475 4675 50  0001 C CNN
	1    7475 4675
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 634FEB69
P 7500 4175
F 0 "#PWR08" H 7500 3925 50  0001 C CNN
F 1 "GND" V 7500 4075 50  0000 R CNN
F 2 "" H 7500 4175 50  0001 C CNN
F 3 "" H 7500 4175 50  0001 C CNN
	1    7500 4175
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR07
U 1 1 634FF815
P 7500 3975
F 0 "#PWR07" H 7500 3825 50  0001 C CNN
F 1 "+12V" V 7500 4075 50  0000 L CNN
F 2 "" H 7500 3975 50  0001 C CNN
F 3 "" H 7500 3975 50  0001 C CNN
	1    7500 3975
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR05
U 1 1 634FFD05
P 6175 2725
F 0 "#PWR05" H 6175 2575 50  0001 C CNN
F 1 "+12V" V 6175 2825 50  0000 L CNN
F 2 "" H 6175 2725 50  0001 C CNN
F 3 "" H 6175 2725 50  0001 C CNN
	1    6175 2725
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 6350094D
P 6175 2825
F 0 "#PWR06" H 6175 2575 50  0001 C CNN
F 1 "GND" V 6175 2725 50  0000 R CNN
F 2 "" H 6175 2825 50  0001 C CNN
F 3 "" H 6175 2825 50  0001 C CNN
	1    6175 2825
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR011
U 1 1 6350112F
P 5525 4700
F 0 "#PWR011" H 5525 4550 50  0001 C CNN
F 1 "+12V" V 5525 4800 50  0000 L CNN
F 2 "" H 5525 4700 50  0001 C CNN
F 3 "" H 5525 4700 50  0001 C CNN
	1    5525 4700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 63501ED4
P 5525 5500
F 0 "#PWR012" H 5525 5250 50  0001 C CNN
F 1 "GND" H 5525 5350 50  0000 C CNN
F 2 "" H 5525 5500 50  0001 C CNN
F 3 "" H 5525 5500 50  0001 C CNN
	1    5525 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 63502815
P 4475 5200
F 0 "R3" V 4400 5200 50  0000 C CNN
F 1 "100R" V 4550 5200 50  0000 C CNN
F 2 "" V 4405 5200 50  0001 C CNN
F 3 "~" H 4475 5200 50  0001 C CNN
	1    4475 5200
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 63503C90
P 4675 5350
F 0 "R4" H 4725 5400 50  0000 L CNN
F 1 "10kR" H 4725 5300 50  0000 L CNN
F 2 "" V 4605 5350 50  0001 C CNN
F 3 "~" H 4675 5350 50  0001 C CNN
	1    4675 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4625 5200 4675 5200
Connection ~ 4675 5200
Wire Wire Line
	5525 5500 5525 5400
$Comp
L Device:D_Zener D1
U 1 1 6350755D
P 5000 5350
F 0 "D1" V 4954 5430 50  0000 L CNN
F 1 "5.1V" V 5045 5430 50  0000 L CNN
F 2 "" H 5000 5350 50  0001 C CNN
F 3 "~" H 5000 5350 50  0001 C CNN
	1    5000 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	4675 5200 5000 5200
Wire Wire Line
	5000 5200 5225 5200
Connection ~ 5000 5200
Wire Wire Line
	4675 5500 5000 5500
Connection ~ 5525 5500
Connection ~ 5000 5500
Wire Wire Line
	5000 5500 5525 5500
$Comp
L Device:C C3
U 1 1 6350F308
P 2525 4375
F 0 "C3" H 2640 4421 50  0000 L CNN
F 1 "100nF" H 2640 4330 50  0000 L CNN
F 2 "" H 2563 4225 50  0001 C CNN
F 3 "~" H 2525 4375 50  0001 C CNN
	1    2525 4375
	1    0    0    -1  
$EndComp
Wire Wire Line
	2525 4225 3050 4225
Wire Wire Line
	2525 4525 3050 4525
Connection ~ 3050 4525
$Comp
L Device:C_Small C?
U 1 1 6350952D
P 5825 2275
F 0 "C?" V 5725 2275 50  0000 C CNN
F 1 "0.1uF" V 5925 2275 50  0000 C CNN
F 2 "" H 5825 2275 50  0001 C CNN
F 3 "~" H 5825 2275 50  0001 C CNN
	1    5825 2275
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 63509C58
P 3975 1800
F 0 "C?" V 3875 1800 50  0000 C CNN
F 1 "0.1uF" V 4075 1800 50  0000 C CNN
F 2 "" H 3975 1800 50  0001 C CNN
F 3 "~" H 3975 1800 50  0001 C CNN
	1    3975 1800
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6350A184
P 4300 1800
F 0 "C?" V 4200 1800 50  0000 C CNN
F 1 "0.1uF" V 4400 1800 50  0000 C CNN
F 2 "" H 4300 1800 50  0001 C CNN
F 3 "~" H 4300 1800 50  0001 C CNN
	1    4300 1800
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6350EEA3
P 4975 2950
F 0 "C?" H 4850 2900 50  0000 C CNN
F 1 "10nF" H 4800 3000 50  0000 C CNN
F 2 "" H 4975 2950 50  0001 C CNN
F 3 "~" H 4975 2950 50  0001 C CNN
	1    4975 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	4600 2850 4975 2850
$Comp
L power:GND #PWR?
U 1 1 63510E17
P 4975 3050
F 0 "#PWR?" H 4975 2800 50  0001 C CNN
F 1 "GND" H 5050 2925 50  0000 R CNN
F 2 "" H 4975 3050 50  0001 C CNN
F 3 "" H 4975 3050 50  0001 C CNN
	1    4975 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63511531
P 4600 2750
F 0 "#PWR?" H 4600 2500 50  0001 C CNN
F 1 "GND" V 4600 2650 50  0000 R CNN
F 2 "" H 4600 2750 50  0001 C CNN
F 3 "" H 4600 2750 50  0001 C CNN
	1    4600 2750
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63511E66
P 3800 2750
F 0 "#PWR?" H 3800 2600 50  0001 C CNN
F 1 "+5V" V 3800 2850 50  0000 L CNN
F 2 "" H 3800 2750 50  0001 C CNN
F 3 "" H 3800 2750 50  0001 C CNN
	1    3800 2750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63514E1E
P 3800 2850
F 0 "#PWR?" H 3800 2600 50  0001 C CNN
F 1 "GND" V 3800 2750 50  0000 R CNN
F 2 "" H 3800 2850 50  0001 C CNN
F 3 "" H 3800 2850 50  0001 C CNN
	1    3800 2850
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63515941
P 4600 2950
F 0 "#PWR?" H 4600 2800 50  0001 C CNN
F 1 "+5V" V 4600 3050 50  0000 L CNN
F 2 "" H 4600 2950 50  0001 C CNN
F 3 "" H 4600 2950 50  0001 C CNN
	1    4600 2950
	0    1    1    0   
$EndComp
$EndSCHEMATC
