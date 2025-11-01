EESchema Schematic File Version 4
LIBS:opi-hat-cache
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
L Connector_Generic:Conn_02x13_Odd_Even J1
U 1 1 5DD9F22C
P 2950 1000
F 0 "J1" H 3000 1817 50  0000 C CNN
F 1 "Conn_02x13_Odd_Even" H 3000 1726 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x13_P2.54mm_Vertical" H 2950 1000 50  0001 C CNN
F 3 "~" H 2950 1000 50  0001 C CNN
	1    2950 1000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x13 J2
U 1 1 5DDA0B2B
P 3000 2850
F 0 "J2" H 3080 2892 50  0000 L CNN
F 1 "Conn_01x13" H 3080 2801 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x13_P2.54mm_Vertical" H 3000 2850 50  0001 C CNN
F 3 "~" H 3000 2850 50  0001 C CNN
	1    3000 2850
	1    0    0    -1  
$EndComp
Text Label 2450 400  0    50   ~ 0
3V3
Wire Wire Line
	2750 400  2450 400 
Wire Wire Line
	2750 500  2450 500 
Wire Wire Line
	2750 600  2450 600 
Wire Wire Line
	3250 400  3550 400 
Wire Wire Line
	3250 500  3550 500 
Wire Wire Line
	3250 600  3550 600 
Wire Wire Line
	3250 900  3550 900 
Wire Wire Line
	3250 1000 3550 1000
Wire Wire Line
	3250 1100 3550 1100
Wire Wire Line
	3250 1200 3550 1200
Wire Wire Line
	3250 1300 3550 1300
Wire Wire Line
	3250 1400 3550 1400
Wire Wire Line
	3250 1500 3550 1500
Wire Wire Line
	3250 1600 3550 1600
Wire Wire Line
	2750 700  2450 700 
Wire Wire Line
	2750 800  2450 800 
Wire Wire Line
	2750 900  2450 900 
Wire Wire Line
	2750 1000 2450 1000
Wire Wire Line
	2750 1100 2450 1100
Wire Wire Line
	2750 1200 2450 1200
Wire Wire Line
	2750 1300 2450 1300
Wire Wire Line
	2750 1400 2450 1400
Wire Wire Line
	2750 1500 2450 1500
Wire Wire Line
	2750 1600 2450 1600
Text Label 2450 500  0    50   ~ 0
GPIO_12
Text Label 2450 600  0    50   ~ 0
GPIO_11
Text Label 2450 700  0    50   ~ 0
GPIO_6
Text Label 2450 800  0    50   ~ 0
GND
Text Label 2450 900  0    50   ~ 0
GPIO_1
Text Label 2450 1000 0    50   ~ 0
GPIO_0
Text Label 2450 1100 0    50   ~ 0
GPIO_3
Text Label 2450 1200 0    50   ~ 0
3V3
Text Label 2450 1300 0    50   ~ 0
GPIO_15
Text Label 2450 1400 0    50   ~ 0
GPIO_16
Text Label 2450 1500 0    50   ~ 0
GPIO_14
Text Label 2450 1600 0    50   ~ 0
GND
$Comp
L power:+3.3V #PWR0101
U 1 1 5DDB8D79
P 2100 450
F 0 "#PWR0101" H 2100 300 50  0001 C CNN
F 1 "+3.3V" H 2115 623 50  0000 C CNN
F 2 "" H 2100 450 50  0001 C CNN
F 3 "" H 2100 450 50  0001 C CNN
	1    2100 450 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 450  2100 550 
$Comp
L power:GND #PWR0102
U 1 1 5DDB9D21
P 1800 550
F 0 "#PWR0102" H 1800 300 50  0001 C CNN
F 1 "GND" H 1805 377 50  0000 C CNN
F 2 "" H 1800 550 50  0001 C CNN
F 3 "" H 1800 550 50  0001 C CNN
	1    1800 550 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 550  1800 350 
Text Label 1800 400  0    50   ~ 0
GND
Text Label 2100 500  0    50   ~ 0
3V3
$Comp
L power:+5V #PWR0103
U 1 1 5DDBAEBF
P 2100 850
F 0 "#PWR0103" H 2100 700 50  0001 C CNN
F 1 "+5V" H 2115 1023 50  0000 C CNN
F 2 "" H 2100 850 50  0001 C CNN
F 3 "" H 2100 850 50  0001 C CNN
	1    2100 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 850  2100 1000
Text Label 2100 950  0    50   ~ 0
5V
Text Label 3650 800  2    50   ~ 0
UART_RX
Text Label 3550 900  2    50   ~ 0
GPIO_7
Text Label 3550 1000 2    50   ~ 0
GND
Text Label 3550 1100 2    50   ~ 0
GPIO_19
Text Label 3550 1200 2    50   ~ 0
GPIO_18
Text Label 3550 1300 2    50   ~ 0
GND
Text Label 3550 1400 2    50   ~ 0
GPIO_2
Text Label 3550 1500 2    50   ~ 0
GPIO_13
Text Label 3650 700  2    50   ~ 0
UART_TX
Text Label 3550 600  2    50   ~ 0
GND
Text Label 3550 500  2    50   ~ 0
5V
Text Label 3550 400  2    50   ~ 0
5V
Text Label 3550 1600 2    50   ~ 0
GPIO_10
Wire Wire Line
	3250 800  3650 800 
Wire Wire Line
	3250 700  3650 700 
Text Notes 250  1900 0    39   ~ 0
1 --> 3.3V\n2 --> 5V\n3 --> TWI0_SDA / PA12 / GPIO12\n4 --> 5V\n5 --> TWI0_SCK / PA11 / GPIO11\n6 --> GND\n7 --> PWM1 / PA06 / GPIO6\n8 --> UART1_TX / PG06 / GPIO198\n9 --> GND\n10 -> UART1_RX / PG07 / GPIO199\n11 -> UART2_RX / PA01 / GPIO1\n12 -> SIM_CLK/PA_EINT7 / PA07 / GPIO7\n13 -> UART2_TX / PA00 / GPIO0\n14 -> GND\n15 -> UART2_CTS / PA03 / GPIO3\n16 -> TWI1-SDA / PA19 / GPIO19\n17 -> 3.3V\n18 -> TWI1-SCK / PA18 / GPIO18\n19 -> SPI1_MOSI / PA15 / GPIO15\n20 -> GND\n21 -> SPI1_MISO / PA16 / GPIO16\n22 -> UART2_RTS / PA02 / GPIO2\n23 -> SPI1_CLK / PA14 / GPIO14\n24 -> SPI1_CS / PA13 / GPIO13\n25 -> GND\n26 -> SIM_DET/PA_EINT10 / PA10 / GPIO10
Text Notes 250  3050 0    39   ~ 0
1 --> 5V\n2 --> GND\n3 --> USB-DM2\n4 --> USB-DP2\n5 --> USB-DM3\n6 --> USB-DP3\n7 --> LINEOUTR\n8 --> LINEOUTL\n9 --> TV-OUT\n10 -> MIC-BIAS\n11 -> MIC1P\n12 -> MIC1N\n13 -> CIR-RX
Wire Wire Line
	2800 2250 2450 2250
Wire Wire Line
	2800 2350 2450 2350
Wire Wire Line
	2800 2450 2450 2450
Wire Wire Line
	2800 2550 2450 2550
Wire Wire Line
	2800 2650 2450 2650
Wire Wire Line
	2800 2750 2450 2750
Wire Wire Line
	2800 2850 2450 2850
Wire Wire Line
	2800 2950 2450 2950
Wire Wire Line
	2800 3050 2450 3050
Wire Wire Line
	2800 3150 2450 3150
Wire Wire Line
	2800 3250 2450 3250
Wire Wire Line
	2800 3350 2450 3350
Wire Wire Line
	2800 3450 2450 3450
Text Label 2450 2250 0    50   ~ 0
5V
Text Label 2450 2350 0    50   ~ 0
GND
Text Label 2450 2450 0    50   ~ 0
USB-DM2
Text Label 2450 2550 0    50   ~ 0
USB-DP2
Text Label 2450 2650 0    50   ~ 0
USB-DM3
Text Label 2450 2750 0    50   ~ 0
USB-DP3
Text Label 2450 2850 0    50   ~ 0
LINEOUTR
Text Label 2450 2950 0    50   ~ 0
LINEOUTL
Text Label 2450 3050 0    50   ~ 0
TV-OUT
Text Label 2450 3150 0    50   ~ 0
MIC-BIAS
Text Label 2450 3250 0    50   ~ 0
MIC1P
Text Label 2450 3350 0    50   ~ 0
MIC1N
Text Label 2450 3450 0    50   ~ 0
CIR-RX
$EndSCHEMATC
