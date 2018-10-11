EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Da Pimp Plus"
Date "2018-10-10"
Rev ""
Comp "Gutierrez PS"
Comment1 "https://github.com/gutierrezps/da-pimp-plus"
Comment2 "Improved Battery Desulfator, based on Mikey Sklar's project"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_WallPlug P1
U 1 1 5BBE8AF8
P 1600 1900
F 0 "P1" H 1615 2133 50  0000 C CNN
F 1 "Conn_WallPlug" H 1615 2134 50  0001 C CNN
F 2 "" H 2000 1900 50  0001 C CNN
F 3 "~" H 2000 1900 50  0001 C CNN
	1    1600 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5BBE8C31
P 2500 2500
F 0 "C1" H 2615 2546 50  0000 L CNN
F 1 "2.2u" H 2615 2455 50  0000 L CNN
F 2 "" H 2538 2350 50  0001 C CNN
F 3 "~" H 2500 2500 50  0001 C CNN
	1    2500 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5BBE8C81
P 2950 2500
F 0 "C2" H 3065 2546 50  0000 L CNN
F 1 "2.2u" H 3065 2455 50  0000 L CNN
F 2 "" H 2988 2350 50  0001 C CNN
F 3 "~" H 2950 2500 50  0001 C CNN
	1    2950 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5BBE8CBD
P 3400 2500
F 0 "C3" H 3515 2546 50  0000 L CNN
F 1 "2.2u" H 3515 2455 50  0000 L CNN
F 2 "" H 3438 2350 50  0001 C CNN
F 3 "~" H 3400 2500 50  0001 C CNN
	1    3400 2500
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DPST SW2
U 1 1 5BBE8D4C
P 3650 1900
F 0 "SW2" H 3650 2133 50  0000 C CNN
F 1 "SW_DPST" H 3650 2134 50  0001 C CNN
F 2 "" H 3650 1900 50  0001 C CNN
F 3 "" H 3650 1900 50  0001 C CNN
	1    3650 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Bridge_+-AA D1
U 1 1 5BBE8E65
P 4400 1900
F 0 "D1" H 4550 2050 50  0000 L CNN
F 1 "D_Bridge_+-AA" H 4741 1855 50  0001 L CNN
F 2 "" H 4400 1900 50  0001 C CNN
F 3 "~" H 4400 1900 50  0001 C CNN
	1    4400 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5BBE8F39
P 4900 1900
F 0 "F1" V 4703 1900 50  0000 C CNN
F 1 "1A" V 4794 1900 50  0000 C CNN
F 2 "" V 4830 1900 50  0001 C CNN
F 3 "~" H 4900 1900 50  0001 C CNN
	1    4900 1900
	0    1    1    0   
$EndComp
$Comp
L Device:Jumper_NO_Small JP1
U 1 1 5BBE90F0
P 2500 2200
F 0 "JP1" V 2500 2248 50  0000 L CNN
F 1 "Jumper_NO_Small" V 2545 2248 50  0001 L CNN
F 2 "" H 2500 2200 50  0001 C CNN
F 3 "~" H 2500 2200 50  0001 C CNN
	1    2500 2200
	0    1    1    0   
$EndComp
$Comp
L Device:Jumper_NO_Small JP2
U 1 1 5BBE917D
P 2950 2200
F 0 "JP2" V 2950 2248 50  0000 L CNN
F 1 "Jumper_NO_Small" V 2995 2248 50  0001 L CNN
F 2 "" H 2950 2200 50  0001 C CNN
F 3 "~" H 2950 2200 50  0001 C CNN
	1    2950 2200
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5BBE9237
P 5150 2150
F 0 "R1" H 5220 2196 50  0000 L CNN
F 1 "33k" H 5220 2105 50  0000 L CNN
F 2 "" V 5080 2150 50  0001 C CNN
F 3 "~" H 5150 2150 50  0001 C CNN
	1    5150 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5BBE92AD
P 5150 2550
F 0 "R2" H 5220 2596 50  0000 L CNN
F 1 "560" H 5220 2505 50  0000 L CNN
F 2 "" V 5080 2550 50  0001 C CNN
F 3 "~" H 5150 2550 50  0001 C CNN
	1    5150 2550
	1    0    0    -1  
$EndComp
$Comp
L Relay:G5LE-1 K1
U 1 1 5BBE9B9F
P 6650 2200
F 0 "K1" V 7125 2200 50  0000 C CNN
F 1 "G5LE-1" V 7126 2200 50  0001 C CNN
F 2 "Relay_THT:Relay_SPDT_Omron-G5LE-1" H 7100 2150 50  0001 L CNN
F 3 "http://www.omron.com/ecb/products/pdf/en-g5le.pdf" H 6650 1800 50  0001 C CNN
	1    6650 2200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 5BBE9C7A
P 6050 2300
F 0 "R4" H 6120 2346 50  0000 L CNN
F 1 "22k" H 6120 2255 50  0000 L CNN
F 2 "" V 5980 2300 50  0001 C CNN
F 3 "~" H 6050 2300 50  0001 C CNN
	1    6050 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5BBE9CEC
P 6050 2700
F 0 "R5" H 6120 2746 50  0000 L CNN
F 1 "11k" H 6120 2655 50  0000 L CNN
F 2 "" V 5980 2700 50  0001 C CNN
F 3 "~" H 6050 2700 50  0001 C CNN
	1    6050 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5BBE9D5E
P 5550 2450
F 0 "J1" H 5470 2667 50  0000 C CNN
F 1 "Load" H 5470 2576 50  0000 C CNN
F 2 "" H 5550 2450 50  0001 C CNN
F 3 "~" H 5550 2450 50  0001 C CNN
	1    5550 2450
	-1   0    0    -1  
$EndComp
$Comp
L Relay:G5LE-1 K2
U 1 1 5BBE9E30
P 8150 2300
F 0 "K2" V 8625 2300 50  0000 C CNN
F 1 "G5LE-1" V 8626 2300 50  0001 C CNN
F 2 "Relay_THT:Relay_SPDT_Omron-G5LE-1" H 8600 2250 50  0001 L CNN
F 3 "http://www.omron.com/ecb/products/pdf/en-g5le.pdf" H 8150 1900 50  0001 C CNN
	1    8150 2300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 5BBE9EFB
P 7550 2350
F 0 "R7" H 7620 2396 50  0000 L CNN
F 1 "22k" H 7620 2305 50  0000 L CNN
F 2 "" V 7480 2350 50  0001 C CNN
F 3 "~" H 7550 2350 50  0001 C CNN
	1    7550 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5BBE9F53
P 7550 2750
F 0 "R8" H 7620 2796 50  0000 L CNN
F 1 "11k" H 7620 2705 50  0000 L CNN
F 2 "" V 7480 2750 50  0001 C CNN
F 3 "~" H 7550 2750 50  0001 C CNN
	1    7550 2750
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Current:ACS712xLCTR-05B U1
U 1 1 5BBEA1BD
P 9200 2300
F 0 "U1" H 9450 2650 50  0000 C CNN
F 1 "ACS712-Module" H 9550 1950 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9300 1950 50  0001 L CIN
F 3 "http://www.allegromicro.com/~/media/Files/Datasheets/ACS712-Datasheet.ashx?la=en" H 9200 2300 50  0001 C CNN
	1    9200 2300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5BBEA23F
P 9650 2900
F 0 "J2" H 9729 2892 50  0000 L CNN
F 1 "Bat" H 9729 2801 50  0000 L CNN
F 2 "" H 9650 2900 50  0001 C CNN
F 3 "~" H 9650 2900 50  0001 C CNN
	1    9650 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2000 1850 2000
Wire Wire Line
	2350 2000 2350 2700
Wire Wire Line
	2350 2700 2500 2700
Wire Wire Line
	3400 2700 3400 2650
Wire Wire Line
	2500 2350 2500 2300
Wire Wire Line
	2950 2350 2950 2300
Wire Wire Line
	3400 2350 3400 2000
Wire Wire Line
	3400 2000 3450 2000
Wire Wire Line
	2500 2100 2500 2000
Wire Wire Line
	2500 2000 2950 2000
Connection ~ 3400 2000
Wire Wire Line
	2950 2100 2950 2000
Connection ~ 2950 2000
Wire Wire Line
	2950 2000 3400 2000
Wire Wire Line
	2950 2650 2950 2700
Connection ~ 2950 2700
Wire Wire Line
	2950 2700 3400 2700
Wire Wire Line
	2500 2650 2500 2700
Wire Wire Line
	2500 2700 2950 2700
Connection ~ 2500 2700
Wire Wire Line
	3850 1800 3950 1800
Wire Wire Line
	3950 1800 3950 1550
Wire Wire Line
	3950 1550 4400 1550
Wire Wire Line
	4400 1550 4400 1600
Wire Wire Line
	3850 2000 3950 2000
Wire Wire Line
	3950 2000 3950 2250
Wire Wire Line
	3950 2250 4400 2250
Wire Wire Line
	4400 2250 4400 2200
$Comp
L power:GND #PWR05
U 1 1 5BBEBA6D
P 4050 3050
F 0 "#PWR05" H 4050 2800 50  0001 C CNN
F 1 "GND" H 4055 2877 50  0000 C CNN
F 2 "" H 4050 3050 50  0001 C CNN
F 3 "" H 4050 3050 50  0001 C CNN
	1    4050 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3050 4050 3000
Wire Wire Line
	4050 1900 4100 1900
Wire Wire Line
	4700 1900 4750 1900
Wire Wire Line
	5150 2700 5150 3000
Wire Wire Line
	5150 3000 4050 3000
Connection ~ 4050 3000
Wire Wire Line
	4050 3000 4050 1900
Wire Wire Line
	5050 1900 5150 1900
Wire Wire Line
	5150 1900 5150 2000
Wire Wire Line
	5150 2300 5150 2350
Wire Wire Line
	6350 1900 5150 1900
Connection ~ 5150 1900
Text GLabel 5050 2350 0    50   Output ~ 0
V1
Wire Wire Line
	5050 2350 5150 2350
Connection ~ 5150 2350
Wire Wire Line
	5150 2350 5150 2400
Wire Wire Line
	6350 2100 6050 2100
Wire Wire Line
	6050 2100 6050 2150
Wire Wire Line
	5750 2450 5800 2450
Wire Wire Line
	5800 2450 5800 2100
Wire Wire Line
	5800 2100 6050 2100
Connection ~ 6050 2100
Wire Wire Line
	5750 2550 5800 2550
Wire Wire Line
	5800 2550 5800 3000
Wire Wire Line
	5800 3000 6050 3000
Wire Wire Line
	6050 3000 6050 2850
Wire Wire Line
	5800 3000 5150 3000
Connection ~ 5800 3000
Connection ~ 5150 3000
Wire Wire Line
	6950 2000 7850 2000
Wire Wire Line
	7550 2200 7850 2200
Wire Wire Line
	7550 2500 7550 2550
$Comp
L power:+5V #PWR09
U 1 1 5BBFA446
P 7050 2300
F 0 "#PWR09" H 7050 2150 50  0001 C CNN
F 1 "+5V" H 7065 2473 50  0000 C CNN
F 2 "" H 7050 2300 50  0001 C CNN
F 3 "" H 7050 2300 50  0001 C CNN
	1    7050 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2300 7050 2400
Wire Wire Line
	7050 2400 6950 2400
$Comp
L power:+5V #PWR011
U 1 1 5BBFAD9F
P 8550 2400
F 0 "#PWR011" H 8550 2250 50  0001 C CNN
F 1 "+5V" H 8565 2573 50  0000 C CNN
F 2 "" H 8550 2400 50  0001 C CNN
F 3 "" H 8550 2400 50  0001 C CNN
	1    8550 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 2400 8550 2500
Wire Wire Line
	8550 2500 8450 2500
$Comp
L Transistor_BJT:BC337 Q1
U 1 1 5BBFB884
P 6200 3400
F 0 "Q1" H 6391 3446 50  0000 L CNN
F 1 "BC337" H 6391 3355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6400 3325 50  0001 L CIN
F 3 "http://www.nxp.com/documents/data_sheet/BC817_BC817W_BC337.pdf" H 6200 3400 50  0001 L CNN
	1    6200 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3200 6300 2400
Wire Wire Line
	6300 2400 6350 2400
$Comp
L power:GND #PWR08
U 1 1 5BBFCE69
P 6300 3700
F 0 "#PWR08" H 6300 3450 50  0001 C CNN
F 1 "GND" H 6305 3527 50  0000 C CNN
F 2 "" H 6300 3700 50  0001 C CNN
F 3 "" H 6300 3700 50  0001 C CNN
	1    6300 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3700 6300 3600
$Comp
L Device:R R3
U 1 1 5BBFDA11
P 5800 3400
F 0 "R3" V 5700 3400 50  0000 C CNN
F 1 "1k2" V 5900 3400 50  0000 C CNN
F 2 "" V 5730 3400 50  0001 C CNN
F 3 "~" H 5800 3400 50  0001 C CNN
	1    5800 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	5950 3400 6000 3400
Text GLabel 5600 3400 0    50   Input ~ 0
Relay1
Wire Wire Line
	5600 3400 5650 3400
Text GLabel 6000 2500 0    50   Output ~ 0
V2
$Comp
L Transistor_BJT:BC337 Q2
U 1 1 5BC01D83
P 7700 3400
F 0 "Q2" H 7891 3446 50  0000 L CNN
F 1 "BC337" H 7891 3355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7900 3325 50  0001 L CIN
F 3 "http://www.nxp.com/documents/data_sheet/BC817_BC817W_BC337.pdf" H 7700 3400 50  0001 L CNN
	1    7700 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5BC01D8A
P 7800 3700
F 0 "#PWR010" H 7800 3450 50  0001 C CNN
F 1 "GND" H 7805 3527 50  0000 C CNN
F 2 "" H 7800 3700 50  0001 C CNN
F 3 "" H 7800 3700 50  0001 C CNN
	1    7800 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 3700 7800 3600
$Comp
L Device:R R6
U 1 1 5BC01D91
P 7300 3400
F 0 "R6" V 7200 3400 50  0000 C CNN
F 1 "1k2" V 7400 3400 50  0000 C CNN
F 2 "" V 7230 3400 50  0001 C CNN
F 3 "~" H 7300 3400 50  0001 C CNN
	1    7300 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	7450 3400 7500 3400
Text GLabel 7100 3400 0    50   Input ~ 0
Relay2
Wire Wire Line
	7100 3400 7150 3400
Wire Wire Line
	7800 3200 7800 2500
Wire Wire Line
	7800 2500 7850 2500
Text GLabel 7450 2550 0    50   Output ~ 0
V3
Wire Wire Line
	7450 2550 7550 2550
Connection ~ 7550 2550
Wire Wire Line
	7550 2550 7550 2600
Wire Wire Line
	6050 2450 6050 2500
Wire Wire Line
	6000 2500 6050 2500
Connection ~ 6050 2500
Wire Wire Line
	6050 2500 6050 2550
Wire Wire Line
	8450 2100 8800 2100
Wire Wire Line
	8800 2500 8750 2500
Wire Wire Line
	8750 2500 8750 2900
Wire Wire Line
	8750 2900 9450 2900
Wire Wire Line
	9450 3000 9200 3000
Wire Wire Line
	9200 2700 9200 3000
Connection ~ 9200 3000
Text GLabel 9700 2300 2    50   Output ~ 0
ACS
Wire Wire Line
	9700 2300 9600 2300
$Comp
L power:+5V #PWR012
U 1 1 5BC20239
P 9200 1800
F 0 "#PWR012" H 9200 1650 50  0001 C CNN
F 1 "+5V" H 9215 1973 50  0000 C CNN
F 2 "" H 9200 1800 50  0001 C CNN
F 3 "" H 9200 1800 50  0001 C CNN
	1    9200 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 1800 9200 1900
$Comp
L Converter_ACDC:HS-40005 PS1
U 1 1 5BC22EFE
P 2800 3350
F 0 "PS1" H 2800 3675 50  0000 C CNN
F 1 "AC-DC" H 2800 3584 50  0000 C CNN
F 2 "Converter_ACDC:Converter_ACDC_Hahn_HS-400xx_THT" H 2800 3050 50  0001 C CNN
F 3 "http://www.tme.eu/de/Document/996b08915f81126361ce1f9c12d2f8b9/HS40005.pdf" H 2800 2950 50  0001 C CNN
	1    2800 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3450 1850 3450
Wire Wire Line
	1850 3450 1850 2000
Connection ~ 1850 2000
Wire Wire Line
	1850 2000 2350 2000
$Comp
L Switch:SW_SPST SW1
U 1 1 5BC25921
P 2000 2850
F 0 "SW1" V 2000 2948 50  0000 L CNN
F 1 "SW_SPST" V 2045 2948 50  0001 L CNN
F 2 "" H 2000 2850 50  0001 C CNN
F 3 "" H 2000 2850 50  0001 C CNN
	1    2000 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 3050 2000 3250
Wire Wire Line
	2000 3250 2400 3250
Wire Wire Line
	1800 1800 2000 1800
Wire Wire Line
	2000 2650 2000 1800
Connection ~ 2000 1800
Wire Wire Line
	2000 1800 3450 1800
$Comp
L power:+5V #PWR01
U 1 1 5BC2BF07
P 3300 3200
F 0 "#PWR01" H 3300 3050 50  0001 C CNN
F 1 "+5V" H 3315 3373 50  0000 C CNN
F 2 "" H 3300 3200 50  0001 C CNN
F 3 "" H 3300 3200 50  0001 C CNN
	1    3300 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3200 3300 3250
Wire Wire Line
	3300 3250 3200 3250
$Comp
L power:GND #PWR02
U 1 1 5BC2F835
P 3300 3500
F 0 "#PWR02" H 3300 3250 50  0001 C CNN
F 1 "GND" H 3305 3327 50  0000 C CNN
F 2 "" H 3300 3500 50  0001 C CNN
F 3 "" H 3300 3500 50  0001 C CNN
	1    3300 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3500 3300 3450
Wire Wire Line
	3300 3450 3200 3450
Wire Wire Line
	7550 2900 7550 3000
Wire Wire Line
	7550 3000 6050 3000
Connection ~ 6050 3000
Wire Wire Line
	7550 3000 9200 3000
Connection ~ 7550 3000
$Comp
L MCU_Module:Arduino_Nano_v2.x A1
U 1 1 5BC39AB0
P 5200 5500
F 0 "A1" H 5450 4550 50  0000 C CNN
F 1 "Arduino_Pro_Mini" H 5700 4450 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 5350 4550 50  0001 L CNN
F 3 "https://www.arduino.cc/en/uploads/Main/ArduinoNanoManual23.pdf" H 5200 4500 50  0001 C CNN
	1    5200 5500
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:WC1602A DS1
U 1 1 5BC39F0D
P 3600 5200
F 0 "DS1" H 3400 6050 50  0000 C CNN
F 1 "16x2_Display" H 3250 5950 50  0000 C CNN
F 2 "Display:WC1602A" H 3600 4300 50  0001 C CIN
F 3 "http://www.wincomlcd.com/pdf/WC1602A-SFYLYHTC06.pdf" H 4300 5200 50  0001 C CNN
	1    3600 5200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4000 5800 4700 5800
Wire Wire Line
	4700 5700 4000 5700
Wire Wire Line
	4000 5600 4700 5600
Wire Wire Line
	4700 5500 4000 5500
Wire Wire Line
	4700 5400 4200 5400
Wire Wire Line
	4200 5400 4200 4800
Wire Wire Line
	4200 4800 4000 4800
Wire Wire Line
	4700 5300 4300 5300
Wire Wire Line
	4300 5300 4300 4600
Wire Wire Line
	4300 4600 4000 4600
$Comp
L power:GND #PWR04
U 1 1 5BC512AD
P 3600 6100
F 0 "#PWR04" H 3600 5850 50  0001 C CNN
F 1 "GND" H 3605 5927 50  0000 C CNN
F 2 "" H 3600 6100 50  0001 C CNN
F 3 "" H 3600 6100 50  0001 C CNN
	1    3600 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 6000 3600 6050
Wire Wire Line
	4000 4700 4100 4700
Wire Wire Line
	4100 4700 4100 6050
Wire Wire Line
	4100 6050 3600 6050
Connection ~ 3600 6050
Wire Wire Line
	3600 6050 3600 6100
Wire Wire Line
	3200 5000 3150 5000
Wire Wire Line
	3150 5000 3150 6050
Wire Wire Line
	3150 6050 3600 6050
$Comp
L power:+5V #PWR03
U 1 1 5BC5D24F
P 3600 4300
F 0 "#PWR03" H 3600 4150 50  0001 C CNN
F 1 "+5V" H 3615 4473 50  0000 C CNN
F 2 "" H 3600 4300 50  0001 C CNN
F 3 "" H 3600 4300 50  0001 C CNN
	1    3600 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4300 3600 4350
$Comp
L power:+5V #PWR07
U 1 1 5BC6058F
P 5400 4350
F 0 "#PWR07" H 5400 4200 50  0001 C CNN
F 1 "+5V" H 5415 4523 50  0000 C CNN
F 2 "" H 5400 4350 50  0001 C CNN
F 3 "" H 5400 4350 50  0001 C CNN
	1    5400 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4350 5400 4500
$Comp
L Device:R_POT RV1
U 1 1 5BC63A13
P 2850 4600
F 0 "RV1" H 2780 4646 50  0000 R CNN
F 1 "10k" H 2780 4555 50  0000 R CNN
F 2 "" H 2850 4600 50  0001 C CNN
F 3 "~" H 2850 4600 50  0001 C CNN
	1    2850 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4600 3200 4600
Wire Wire Line
	2850 4450 2850 4350
Wire Wire Line
	2850 4350 3100 4350
Connection ~ 3600 4350
Wire Wire Line
	3600 4350 3600 4400
Wire Wire Line
	2850 4750 2850 5000
Wire Wire Line
	2850 5000 3150 5000
Connection ~ 3150 5000
Wire Wire Line
	3200 4900 3100 4900
Wire Wire Line
	3100 4900 3100 4350
Connection ~ 3100 4350
Wire Wire Line
	3100 4350 3600 4350
$Comp
L Switch:SW_Push SW3
U 1 1 5BC723C5
P 4600 6550
F 0 "SW3" V 4554 6502 50  0000 R CNN
F 1 "Mode" V 4645 6502 50  0000 R CNN
F 2 "" H 4600 6750 50  0001 C CNN
F 3 "" H 4600 6750 50  0001 C CNN
	1    4600 6550
	0    -1   1    0   
$EndComp
Wire Wire Line
	4600 6350 4600 5900
Wire Wire Line
	4600 5900 4700 5900
$Comp
L power:GND #PWR06
U 1 1 5BC82D4B
P 4600 6850
F 0 "#PWR06" H 4600 6600 50  0001 C CNN
F 1 "GND" H 4605 6677 50  0000 C CNN
F 2 "" H 4600 6850 50  0001 C CNN
F 3 "" H 4600 6850 50  0001 C CNN
	1    4600 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 6750 4600 6800
Wire Wire Line
	5300 6500 5300 6800
Wire Wire Line
	5300 6800 5200 6800
Connection ~ 4600 6800
Wire Wire Line
	4600 6800 4600 6850
Wire Wire Line
	5200 6500 5200 6800
Connection ~ 5200 6800
Wire Wire Line
	5200 6800 4600 6800
Text GLabel 4500 6000 0    50   Output ~ 0
Relay1
Wire Wire Line
	4500 6000 4700 6000
Text GLabel 4500 6100 0    50   Output ~ 0
Relay2
Wire Wire Line
	4500 6100 4700 6100
Text GLabel 5850 5500 2    50   Input ~ 0
V1
Wire Wire Line
	5850 5500 5700 5500
Text GLabel 5850 5600 2    50   Input ~ 0
V2
Text GLabel 5850 5700 2    50   Input ~ 0
V3
Text GLabel 5850 5800 2    50   Input ~ 0
ACS
Wire Wire Line
	5850 5800 5700 5800
Wire Wire Line
	5700 5700 5850 5700
Wire Wire Line
	5850 5600 5700 5600
Text Notes 6350 1850 2    50   ~ 0
Charge
Text Notes 6350 2050 2    50   ~ 0
Discharge
Text Notes 7850 2000 2    50   ~ 0
Connect
Text Notes 7850 2200 2    50   ~ 0
Float
$EndSCHEMATC
