EESchema Schematic File Version 4
EELAYER 30 0
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
L ESP8266:ESP-12E U1
U 1 1 5DF000C3
P 2950 3750
F 0 "U1" V 2996 4377 50  0000 L CNN
F 1 "ESP-12E" V 2905 4377 50  0000 L CNN
F 2 "ESP8266:ESP-12E" H 2950 3750 50  0001 C CNN
F 3 "http://l0l.org.uk/2014/12/esp8266-modules-hardware-guide-gotta-catch-em-all/" H 2950 3750 50  0001 C CNN
	1    2950 3750
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 5DF01B1D
P 5850 2900
F 0 "J4" V 5912 3044 50  0000 L CNN
F 1 "Conn_01x03_Male" V 6003 3044 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5850 2900 50  0001 C CNN
F 3 "~" H 5850 2900 50  0001 C CNN
	1    5850 2900
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x03_Male J5
U 1 1 5DF03DC3
P 5850 3250
F 0 "J5" V 5912 3394 50  0000 L CNN
F 1 "Conn_01x03_Male" V 6003 3394 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5850 3250 50  0001 C CNN
F 3 "~" H 5850 3250 50  0001 C CNN
	1    5850 3250
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x03_Male J6
U 1 1 5DF04349
P 5850 3550
F 0 "J6" V 5912 3694 50  0000 L CNN
F 1 "Conn_01x03_Male" V 6003 3694 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5850 3550 50  0001 C CNN
F 3 "~" H 5850 3550 50  0001 C CNN
	1    5850 3550
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x03_Male J7
U 1 1 5DF0490B
P 5850 3950
F 0 "J7" V 5912 4094 50  0000 L CNN
F 1 "Conn_01x03_Male" V 6003 4094 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5850 3950 50  0001 C CNN
F 3 "~" H 5850 3950 50  0001 C CNN
	1    5850 3950
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x03_Male J8
U 1 1 5DF04E45
P 5850 4350
F 0 "J8" V 5912 4494 50  0000 L CNN
F 1 "Conn_01x03_Male" V 6003 4494 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5850 4350 50  0001 C CNN
F 3 "~" H 5850 4350 50  0001 C CNN
	1    5850 4350
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x03_Male J9
U 1 1 5DF051ED
P 5850 4700
F 0 "J9" V 5912 4844 50  0000 L CNN
F 1 "Conn_01x03_Male" V 6003 4844 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5850 4700 50  0001 C CNN
F 3 "~" H 5850 4700 50  0001 C CNN
	1    5850 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	5950 4900 6050 4900
Wire Wire Line
	6050 4900 6050 4550
Wire Wire Line
	6050 3100 5950 3100
Wire Wire Line
	5950 3450 6050 3450
Connection ~ 6050 3450
Wire Wire Line
	6050 3450 6050 3100
Wire Wire Line
	5950 3750 6050 3750
Connection ~ 6050 3750
Wire Wire Line
	6050 3750 6050 3450
Wire Wire Line
	5950 4150 6050 4150
Connection ~ 6050 4150
Wire Wire Line
	6050 4150 6050 3750
Wire Wire Line
	5950 4550 6050 4550
Connection ~ 6050 4550
Wire Wire Line
	6050 4550 6050 4150
$Comp
L power:GND #PWR0101
U 1 1 5DF07B45
P 6050 5100
F 0 "#PWR0101" H 6050 4850 50  0001 C CNN
F 1 "GND" H 6055 4927 50  0000 C CNN
F 2 "" H 6050 5100 50  0001 C CNN
F 3 "" H 6050 5100 50  0001 C CNN
	1    6050 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 5100 6050 4900
Connection ~ 6050 4900
Wire Wire Line
	5750 4900 5650 4900
Wire Wire Line
	5650 4900 5650 4550
Wire Wire Line
	5650 3100 5750 3100
Wire Wire Line
	5650 3450 5750 3450
Connection ~ 5650 3450
Wire Wire Line
	5650 3450 5650 3100
Wire Wire Line
	5650 3750 5750 3750
Connection ~ 5650 3750
Wire Wire Line
	5650 3750 5650 3450
Wire Wire Line
	5650 4150 5750 4150
Connection ~ 5650 4150
Wire Wire Line
	5650 4150 5650 3750
Wire Wire Line
	5650 4550 5750 4550
Connection ~ 5650 4550
Wire Wire Line
	5650 4550 5650 4150
$Comp
L power:+5V #PWR0102
U 1 1 5DF0AB13
P 5650 2700
F 0 "#PWR0102" H 5650 2550 50  0001 C CNN
F 1 "+5V" H 5665 2873 50  0000 C CNN
F 2 "" H 5650 2700 50  0001 C CNN
F 3 "" H 5650 2700 50  0001 C CNN
	1    5650 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3100 5650 2700
Connection ~ 5650 3100
$Comp
L power:GND #PWR0103
U 1 1 5DF0DE15
P 3600 2850
F 0 "#PWR0103" H 3600 2600 50  0001 C CNN
F 1 "GND" H 3605 2677 50  0000 C CNN
F 2 "" H 3600 2850 50  0001 C CNN
F 3 "" H 3600 2850 50  0001 C CNN
	1    3600 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male J2
U 1 1 5DF0EB14
P 2900 1450
F 0 "J2" V 2962 1694 50  0000 L CNN
F 1 "Conn_01x06_Male" V 3053 1694 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 2900 1450 50  0001 C CNN
F 3 "~" H 2900 1450 50  0001 C CNN
	1    2900 1450
	0    1    1    0   
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U2
U 1 1 5DF11562
P 4350 5100
F 0 "U2" H 4350 5342 50  0000 C CNN
F 1 "AMS1117-3.3" H 4350 5251 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 4350 5300 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 4450 4850 50  0001 C CNN
	1    4350 5100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 5DF1900F
P 3900 4900
F 0 "#PWR0104" H 3900 4750 50  0001 C CNN
F 1 "+5V" H 3915 5073 50  0000 C CNN
F 2 "" H 3900 4900 50  0001 C CNN
F 3 "" H 3900 4900 50  0001 C CNN
	1    3900 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4900 3900 5100
Wire Wire Line
	3900 5100 4050 5100
$Comp
L power:+3.3V #PWR0105
U 1 1 5DF19C7F
P 4850 4900
F 0 "#PWR0105" H 4850 4750 50  0001 C CNN
F 1 "+3.3V" H 4865 5073 50  0000 C CNN
F 2 "" H 4850 4900 50  0001 C CNN
F 3 "" H 4850 4900 50  0001 C CNN
	1    4850 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0106
U 1 1 5DF1A40B
P 3550 4650
F 0 "#PWR0106" H 3550 4500 50  0001 C CNN
F 1 "+3.3V" H 3565 4823 50  0000 C CNN
F 2 "" H 3550 4650 50  0001 C CNN
F 3 "" H 3550 4650 50  0001 C CNN
	1    3550 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 4650 3550 4650
Wire Wire Line
	4650 5100 4850 5100
Wire Wire Line
	4850 5100 4850 4900
$Comp
L power:GND #PWR0107
U 1 1 5DF1FDFA
P 4350 5550
F 0 "#PWR0107" H 4350 5300 50  0001 C CNN
F 1 "GND" H 4355 5377 50  0000 C CNN
F 2 "" H 4350 5550 50  0001 C CNN
F 3 "" H 4350 5550 50  0001 C CNN
	1    4350 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 5550 4350 5450
NoConn ~ 3850 4000
NoConn ~ 3850 3900
NoConn ~ 3850 3800
NoConn ~ 3850 3700
NoConn ~ 3850 3600
NoConn ~ 3850 3500
Wire Wire Line
	3350 2850 3600 2850
$Comp
L power:+3.3V #PWR0108
U 1 1 5DF09FEE
P 2450 1650
F 0 "#PWR0108" H 2450 1500 50  0001 C CNN
F 1 "+3.3V" H 2465 1823 50  0000 C CNN
F 2 "" H 2450 1650 50  0001 C CNN
F 3 "" H 2450 1650 50  0001 C CNN
	1    2450 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5DF0AD45
P 2700 1800
F 0 "#PWR0109" H 2700 1550 50  0001 C CNN
F 1 "GND" H 2705 1627 50  0000 C CNN
F 2 "" H 2700 1800 50  0001 C CNN
F 3 "" H 2700 1800 50  0001 C CNN
	1    2700 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1800 2700 1650
Wire Wire Line
	2450 1650 2450 1750
Wire Wire Line
	2450 1750 2600 1750
Wire Wire Line
	2600 1750 2600 1650
NoConn ~ 2950 4650
Text GLabel 2950 2750 1    50   Input ~ 0
SDA
Wire Wire Line
	2850 2850 2850 2750
Wire Wire Line
	2950 2850 2950 2750
Text GLabel 3050 2750 1    50   Input ~ 0
IO0
Wire Wire Line
	3000 1750 3000 1650
Wire Wire Line
	3050 2750 3050 2800
Text GLabel 2850 2750 1    50   Input ~ 0
SCL
Text GLabel 3000 1750 3    50   Input ~ 0
IO0
Text GLabel 2750 2750 1    50   Input ~ 0
RX
Text GLabel 2650 2750 1    50   Input ~ 0
TX
Text GLabel 2800 1750 3    50   Input ~ 0
RX
Text GLabel 2900 1750 3    50   Input ~ 0
TX
Wire Wire Line
	2800 1750 2800 1650
Wire Wire Line
	2900 1650 2900 1750
Wire Wire Line
	2650 2850 2650 2750
Wire Wire Line
	2750 2850 2750 2750
Text GLabel 3100 1750 3    50   Input ~ 0
RST
Text GLabel 2650 4750 3    50   Input ~ 0
RST
Wire Wire Line
	3100 1750 3100 1650
Wire Wire Line
	2650 4750 2650 4650
Text GLabel 5500 3150 0    50   Input ~ 0
CH0
Text GLabel 5500 3500 0    50   Input ~ 0
CH1
Text GLabel 5500 3800 0    50   Input ~ 0
CH2
Text GLabel 5500 4200 0    50   Input ~ 0
CH3
Text GLabel 5500 4600 0    50   Input ~ 0
CH4
Text GLabel 5500 4950 0    50   Input ~ 0
CH5
Text GLabel 4400 1700 3    50   Input ~ 0
SDA
Text GLabel 4500 1700 3    50   Input ~ 0
SCL
Wire Wire Line
	5500 3150 5850 3150
Wire Wire Line
	5850 3150 5850 3100
Wire Wire Line
	5500 3500 5850 3500
Wire Wire Line
	5850 3500 5850 3450
Wire Wire Line
	5500 3800 5850 3800
Wire Wire Line
	5850 3800 5850 3750
Wire Wire Line
	5500 4200 5850 4200
Wire Wire Line
	5850 4200 5850 4150
Wire Wire Line
	5500 4600 5850 4600
Wire Wire Line
	5850 4600 5850 4550
Wire Wire Line
	5500 4950 5850 4950
Wire Wire Line
	5850 4950 5850 4900
Text GLabel 3050 4800 3    50   Input ~ 0
CH5
Text GLabel 3150 4800 3    50   Input ~ 0
CH4
Text GLabel 3250 4800 3    50   Input ~ 0
CH3
Text GLabel 3400 2750 1    50   Input ~ 0
CH2
Text GLabel 3250 2700 1    50   Input ~ 0
CH1
Text GLabel 3150 2500 1    50   Input ~ 0
CH0
Wire Wire Line
	3050 2800 3150 2800
Wire Wire Line
	3150 2800 3150 2500
Connection ~ 3050 2800
Wire Wire Line
	3050 2800 3050 2850
Wire Wire Line
	3150 2850 3200 2850
Wire Wire Line
	3200 2850 3200 2700
Wire Wire Line
	3200 2700 3250 2700
Wire Wire Line
	3250 2850 3250 2750
Wire Wire Line
	3250 2750 3400 2750
Wire Wire Line
	3050 4800 3050 4650
Wire Wire Line
	3150 4800 3150 4650
Wire Wire Line
	3250 4800 3250 4650
Text GLabel 2150 6600 3    50   Input ~ 0
V_BAT
Wire Wire Line
	2750 4750 2750 4650
$Comp
L Device:R R3
U 1 1 5DF4BCD5
P 2850 5250
F 0 "R3" H 2920 5296 50  0000 L CNN
F 1 "10k" H 2920 5205 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2780 5250 50  0001 C CNN
F 3 "~" H 2850 5250 50  0001 C CNN
	1    2850 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5DF4C7E9
P 2450 5250
F 0 "R2" H 2520 5296 50  0000 L CNN
F 1 "10k" H 2520 5205 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2380 5250 50  0001 C CNN
F 3 "~" H 2450 5250 50  0001 C CNN
	1    2450 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5DF4F100
P 2200 5250
F 0 "R1" H 2270 5296 50  0000 L CNN
F 1 "10k" H 2270 5205 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2130 5250 50  0001 C CNN
F 3 "~" H 2200 5250 50  0001 C CNN
	1    2200 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 5100 2850 4650
Wire Wire Line
	2450 5100 2450 4650
Wire Wire Line
	2450 4650 2650 4650
Connection ~ 2650 4650
Text GLabel 2200 4950 1    50   Input ~ 0
IO0
Wire Wire Line
	2200 5100 2200 4950
$Comp
L power:+3.3V #PWR0110
U 1 1 5DF550F0
P 2300 5650
F 0 "#PWR0110" H 2300 5500 50  0001 C CNN
F 1 "+3.3V" H 2315 5823 50  0000 C CNN
F 2 "" H 2300 5650 50  0001 C CNN
F 3 "" H 2300 5650 50  0001 C CNN
	1    2300 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 5400 2450 5400
Wire Wire Line
	2450 5400 2850 5400
Connection ~ 2450 5400
Wire Wire Line
	2450 5400 2450 5650
Wire Wire Line
	2450 5650 2300 5650
Text GLabel 3150 5800 1    50   Input ~ 0
V_BAT
$Comp
L Device:R R4
U 1 1 5DF5E255
P 3150 6050
F 0 "R4" H 3220 6096 50  0000 L CNN
F 1 "100K" H 3220 6005 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3080 6050 50  0001 C CNN
F 3 "~" H 3150 6050 50  0001 C CNN
	1    3150 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5DF5E62D
P 3150 6700
F 0 "R5" H 3220 6746 50  0000 L CNN
F 1 "10k" H 3220 6655 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3080 6700 50  0001 C CNN
F 3 "~" H 3150 6700 50  0001 C CNN
	1    3150 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 6350 3150 6350
Wire Wire Line
	3150 6350 3150 6200
Wire Wire Line
	3150 6350 3150 6550
Connection ~ 3150 6350
Wire Wire Line
	3150 5900 3150 5800
$Comp
L power:GND #PWR0111
U 1 1 5DF6D448
P 3150 7000
F 0 "#PWR0111" H 3150 6750 50  0001 C CNN
F 1 "GND" H 3155 6827 50  0000 C CNN
F 2 "" H 3150 7000 50  0001 C CNN
F 3 "" H 3150 7000 50  0001 C CNN
	1    3150 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 7000 3150 6850
Text GLabel 3000 6350 0    50   Input ~ 0
ADC
Text GLabel 2750 4750 3    50   Input ~ 0
ADC
$Comp
L power:+3.3V #PWR0112
U 1 1 5DF74CD2
P 4550 2300
F 0 "#PWR0112" H 4550 2150 50  0001 C CNN
F 1 "+3.3V" H 4565 2473 50  0000 C CNN
F 2 "" H 4550 2300 50  0001 C CNN
F 3 "" H 4550 2300 50  0001 C CNN
	1    4550 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 5DF7560D
P 4050 2300
F 0 "#PWR0113" H 4050 2150 50  0001 C CNN
F 1 "+5V" H 4065 2473 50  0000 C CNN
F 2 "" H 4050 2300 50  0001 C CNN
F 3 "" H 4050 2300 50  0001 C CNN
	1    4050 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5DF860AD
P 4750 1700
F 0 "#PWR0114" H 4750 1450 50  0001 C CNN
F 1 "GND" H 4755 1527 50  0000 C CNN
F 2 "" H 4750 1700 50  0001 C CNN
F 3 "" H 4750 1700 50  0001 C CNN
	1    4750 1700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 5DF8694B
P 4500 1350
F 0 "J3" V 4562 1494 50  0000 L CNN
F 1 "Conn_01x04_Male" V 4653 1494 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4500 1350 50  0001 C CNN
F 3 "~" H 4500 1350 50  0001 C CNN
	1    4500 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 2250 4300 2000
Wire Wire Line
	4400 1700 4400 1550
Wire Wire Line
	4500 1700 4500 1550
Wire Wire Line
	4600 1700 4600 1550
$Comp
L Connector:Conn_01x01_Male J1
U 1 1 5DFA5C7B
P 2150 6250
F 0 "J1" V 2212 6294 50  0000 L CNN
F 1 "Conn_01x01_Male" V 2303 6294 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 2150 6250 50  0001 C CNN
F 3 "~" H 2150 6250 50  0001 C CNN
	1    2150 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	2150 6600 2150 6450
$Comp
L Jumper:Jumper_3_Bridged12 JP1
U 1 1 5DFC2097
P 4300 2400
F 0 "JP1" H 4300 2511 50  0000 C CNN
F 1 "Jumper_3_Bridged12" H 4300 2602 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 4300 2400 50  0001 C CNN
F 3 "~" H 4300 2400 50  0001 C CNN
	1    4300 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	4050 2400 4050 2300
Wire Wire Line
	4550 2400 4550 2300
Wire Wire Line
	4600 1700 4750 1700
$Comp
L Device:CP C1
U 1 1 5DFE1035
P 3900 5250
F 0 "C1" H 3650 5300 50  0000 L CNN
F 1 "100uF" H 3550 5200 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-7343-31_Kemet-D_Pad2.25x2.55mm_HandSolder" H 3938 5100 50  0001 C CNN
F 3 "~" H 3900 5250 50  0001 C CNN
	1    3900 5250
	1    0    0    -1  
$EndComp
Connection ~ 3900 5100
$Comp
L Device:CP C2
U 1 1 5DFE8FD6
P 4850 5250
F 0 "C2" H 4968 5296 50  0000 L CNN
F 1 "100uF" H 4968 5205 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-7343-31_Kemet-D_Pad2.25x2.55mm_HandSolder" H 4888 5100 50  0001 C CNN
F 3 "~" H 4850 5250 50  0001 C CNN
	1    4850 5250
	1    0    0    -1  
$EndComp
Connection ~ 4850 5100
Wire Wire Line
	3900 5400 4350 5400
Wire Wire Line
	4350 5400 4350 5450
Connection ~ 4350 5400
Connection ~ 4350 5450
Wire Wire Line
	4350 5450 4850 5450
Wire Wire Line
	4850 5450 4850 5400
$Comp
L Device:R R7
U 1 1 5E000B18
P 4100 1700
F 0 "R7" H 4170 1746 50  0000 L CNN
F 1 "10k" H 4170 1655 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4030 1700 50  0001 C CNN
F 3 "~" H 4100 1700 50  0001 C CNN
	1    4100 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5E00153C
P 3850 1700
F 0 "R6" H 3920 1746 50  0000 L CNN
F 1 "10k" H 3920 1655 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3780 1700 50  0001 C CNN
F 3 "~" H 3850 1700 50  0001 C CNN
	1    3850 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1850 4000 1850
Wire Wire Line
	4000 1850 4000 2000
Wire Wire Line
	4000 2000 4300 2000
Connection ~ 4000 1850
Wire Wire Line
	4000 1850 4100 1850
Connection ~ 4300 2000
Wire Wire Line
	4300 2000 4300 1550
Text GLabel 3850 1350 1    50   Input ~ 0
SDA
Text GLabel 4100 1350 1    50   Input ~ 0
SCL
Wire Wire Line
	4100 1550 4100 1350
Wire Wire Line
	3850 1350 3850 1550
$EndSCHEMATC
