EESchema Schematic File Version 2
LIBS:Common_Rail_MC33816-rescue
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
LIBS:mc33816
LIBS:Common_Rail_MC33816-cache
EELAYER 25 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 1 1
Title "Common Rail MC33816"
Date "2018-02-01"
Rev "0.1"
Comp "rusEFI.com"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L DIODE D?
U 1 1 5A77A2A5
P 5125 6475
F 0 "D?" H 5125 6575 40  0000 C CNN
F 1 "DIODE" H 5125 6375 40  0001 C CNN
F 2 "" H 5125 6475 60  0000 C CNN
F 3 "" H 5125 6475 60  0000 C CNN
	1    5125 6475
	0    -1   -1   0   
$EndComp
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A77A37C
P 12300 5400
F 0 "C?" H 12300 5500 40  0000 L CNN
F 1 "C" H 12306 5315 40  0000 L CNN
F 2 "" H 12338 5250 30  0000 C CNN
F 3 "" H 12300 5400 60  0000 C CNN
	1    12300 5400
	1    0    0    -1  
$EndComp
$Comp
L MOS_Nro Q?
U 1 1 5A77A6E1
P 10675 3100
F 0 "Q?" H 10550 3250 60  0000 R CNN
F 1 "MOS_Nro" H 10675 2920 60  0001 R CNN
F 2 "" H 10675 3100 60  0000 C CNN
F 3 "" H 10675 3100 60  0000 C CNN
	1    10675 3100
	1    0    0    -1  
$EndComp
$Comp
L MOS_Nro Q?
U 1 1 5A77A783
P 11975 2575
F 0 "Q?" H 11850 2725 60  0000 R CNN
F 1 "MOS_Nro" H 11975 2395 60  0001 R CNN
F 2 "" H 11975 2575 60  0000 C CNN
F 3 "" H 11975 2575 60  0000 C CNN
	1    11975 2575
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A77A828
P 10475 3300
F 0 "C?" H 10475 3400 40  0000 L CNN
F 1 "C" H 10481 3215 40  0000 L CNN
F 2 "" H 10513 3150 30  0000 C CNN
F 3 "" H 10475 3300 60  0000 C CNN
	1    10475 3300
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A77A8A4
P 11775 2775
F 0 "C?" H 11775 2875 40  0000 L CNN
F 1 "C" H 11781 2690 40  0000 L CNN
F 2 "" H 11813 2625 30  0000 C CNN
F 3 "" H 11775 2775 60  0000 C CNN
	1    11775 2775
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-Common_Rail_MC33816 R?
U 1 1 5A77A923
P 10225 3100
F 0 "R?" V 10305 3100 40  0000 C CNN
F 1 "R" V 10232 3101 40  0000 C CNN
F 2 "" V 10155 3100 30  0000 C CNN
F 3 "" H 10225 3100 30  0000 C CNN
	1    10225 3100
	0    1    1    0   
$EndComp
$Comp
L R-RESCUE-Common_Rail_MC33816 R?
U 1 1 5A77A9C9
P 11525 2575
F 0 "R?" V 11605 2575 40  0000 C CNN
F 1 "R" V 11532 2576 40  0000 C CNN
F 2 "" V 11455 2575 30  0000 C CNN
F 3 "" H 11525 2575 30  0000 C CNN
	1    11525 2575
	0    1    1    0   
$EndComp
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A77AA58
P 10475 3700
F 0 "C?" H 10475 3800 40  0000 L CNN
F 1 "C" H 10481 3615 40  0000 L CNN
F 2 "" H 10513 3550 30  0000 C CNN
F 3 "" H 10475 3700 60  0000 C CNN
	1    10475 3700
	1    0    0    -1  
$EndComp
$Comp
L DIODE D?
U 1 1 5A77AC21
P 9975 3700
F 0 "D?" H 9975 3800 40  0000 C CNN
F 1 "DIODE" H 9975 3600 40  0001 C CNN
F 2 "" H 9975 3700 60  0000 C CNN
F 3 "" H 9975 3700 60  0000 C CNN
	1    9975 3700
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-Common_Rail_MC33816 #PWR?
U 1 1 5A77B382
P 5125 7200
F 0 "#PWR?" H 5125 7200 30  0001 C CNN
F 1 "GND" H 5125 7130 30  0001 C CNN
F 2 "" H 5125 7200 60  0000 C CNN
F 3 "" H 5125 7200 60  0000 C CNN
	1    5125 7200
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-Common_Rail_MC33816 #PWR?
U 1 1 5A77B3BE
P 9975 3900
F 0 "#PWR?" H 9975 3900 30  0001 C CNN
F 1 "GND" H 9975 3830 30  0001 C CNN
F 2 "" H 9975 3900 60  0000 C CNN
F 3 "" H 9975 3900 60  0000 C CNN
	1    9975 3900
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P P?
U 1 1 5A77B4D9
P 10775 3500
F 0 "P?" H 10700 3550 50  0000 C CNN
F 1 "Inj3H" H 10800 3550 50  0000 L CNN
F 2 "" H 10975 3500 50  0000 C CNN
F 3 "" H 10975 3500 50  0000 C CNN
	1    10775 3500
	-1   0    0    1   
$EndComp
$Comp
L TEST_1P P?
U 1 1 5A77B66C
P 10775 4100
F 0 "P?" H 10850 4150 50  0000 C CNN
F 1 "Inj3L" H 10750 4150 50  0000 R CNN
F 2 "" H 10975 4100 50  0000 C CNN
F 3 "" H 10975 4100 50  0000 C CNN
	1    10775 4100
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-Common_Rail_MC33816 #PWR?
U 1 1 5A77BECE
P 10475 3900
F 0 "#PWR?" H 10475 3900 30  0001 C CNN
F 1 "GND" H 10475 3830 30  0001 C CNN
F 2 "" H 10475 3900 60  0000 C CNN
F 3 "" H 10475 3900 60  0000 C CNN
	1    10475 3900
	1    0    0    -1  
$EndComp
Text Label 10775 2900 0    60   ~ 0
Vboost
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A77C8C4
P 9775 3400
F 0 "C?" H 9775 3500 40  0000 L CNN
F 1 "C" H 9781 3315 40  0000 L CNN
F 2 "" H 9813 3250 30  0000 C CNN
F 3 "" H 9775 3400 60  0000 C CNN
	1    9775 3400
	0    -1   -1   0   
$EndComp
$Comp
L D_Small_ALT D?
U 1 1 5A77CB88
P 12075 3075
F 0 "D?" H 12025 3155 50  0000 L CNN
F 1 "D_Small_ALT" H 11925 2995 50  0001 L CNN
F 2 "" V 12075 3075 50  0000 C CNN
F 3 "" V 12075 3075 50  0000 C CNN
	1    12075 3075
	0    -1   -1   0   
$EndComp
Text Label 12075 2375 0    60   ~ 0
Vbat
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A77D4C5
P 11000 4300
F 0 "C?" H 11000 4400 40  0000 L CNN
F 1 "C" H 11006 4215 40  0000 L CNN
F 2 "" H 11038 4150 30  0000 C CNN
F 3 "" H 11000 4300 60  0000 C CNN
	1    11000 4300
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-Common_Rail_MC33816 #PWR?
U 1 1 5A77D4CB
P 11000 4500
F 0 "#PWR?" H 11000 4500 30  0001 C CNN
F 1 "GND" H 11000 4430 30  0001 C CNN
F 2 "" H 11000 4500 60  0000 C CNN
F 3 "" H 11000 4500 60  0000 C CNN
	1    11000 4500
	1    0    0    -1  
$EndComp
$Comp
L DIODE D?
U 1 1 5A77D4F7
P 11000 3900
F 0 "D?" H 11000 4000 40  0000 C CNN
F 1 "DIODE" H 11000 3800 40  0001 C CNN
F 2 "" H 11000 3900 60  0000 C CNN
F 3 "" H 11000 3900 60  0000 C CNN
	1    11000 3900
	0    1    -1   0   
$EndComp
Text Label 11000 3700 0    60   ~ 0
Vboost
$Comp
L MOS_Nro Q?
U 1 1 5A77DD3F
P 10675 4300
F 0 "Q?" H 10550 4450 60  0000 R CNN
F 1 "MOS_Nro" H 10675 4120 60  0001 R CNN
F 2 "" H 10675 4300 60  0000 C CNN
F 3 "" H 10675 4300 60  0000 C CNN
	1    10675 4300
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-Common_Rail_MC33816 R?
U 1 1 5A77E115
P 10025 4300
F 0 "R?" V 10105 4300 40  0000 C CNN
F 1 "R" V 10032 4301 40  0000 C CNN
F 2 "" V 9955 4300 30  0000 C CNN
F 3 "" H 10025 4300 30  0000 C CNN
	1    10025 4300
	0    1    1    0   
$EndComp
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A77E1AB
P 10475 4500
F 0 "C?" H 10475 4600 40  0000 L CNN
F 1 "C" H 10481 4415 40  0000 L CNN
F 2 "" H 10513 4350 30  0000 C CNN
F 3 "" H 10475 4500 60  0000 C CNN
	1    10475 4500
	0    1    1    0   
$EndComp
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A77E5DB
P 11775 3700
F 0 "C?" H 11775 3800 40  0000 L CNN
F 1 "C" H 11781 3615 40  0000 L CNN
F 2 "" H 11813 3550 30  0000 C CNN
F 3 "" H 11775 3700 60  0000 C CNN
	1    11775 3700
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P P?
U 1 1 5A77E5E1
P 12075 3500
F 0 "P?" H 12000 3550 50  0000 C CNN
F 1 "Inj4H" H 12100 3550 50  0000 L CNN
F 2 "" H 12275 3500 50  0000 C CNN
F 3 "" H 12275 3500 50  0000 C CNN
	1    12075 3500
	-1   0    0    1   
$EndComp
$Comp
L TEST_1P P?
U 1 1 5A77E5E7
P 12075 4100
F 0 "P?" H 12150 4150 50  0000 C CNN
F 1 "Inj4L" H 12050 4150 50  0000 R CNN
F 2 "" H 12275 4100 50  0000 C CNN
F 3 "" H 12275 4100 50  0000 C CNN
	1    12075 4100
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-Common_Rail_MC33816 #PWR?
U 1 1 5A77E5FC
P 11775 3900
F 0 "#PWR?" H 11775 3900 30  0001 C CNN
F 1 "GND" H 11775 3830 30  0001 C CNN
F 2 "" H 11775 3900 60  0000 C CNN
F 3 "" H 11775 3900 60  0000 C CNN
	1    11775 3900
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A77E602
P 12300 4850
F 0 "C?" H 12300 4950 40  0000 L CNN
F 1 "C" H 12306 4765 40  0000 L CNN
F 2 "" H 12338 4700 30  0000 C CNN
F 3 "" H 12300 4850 60  0000 C CNN
	1    12300 4850
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-Common_Rail_MC33816 #PWR?
U 1 1 5A77E608
P 12300 5050
F 0 "#PWR?" H 12300 5050 30  0001 C CNN
F 1 "GND" H 12300 4980 30  0001 C CNN
F 2 "" H 12300 5050 60  0000 C CNN
F 3 "" H 12300 5050 60  0000 C CNN
	1    12300 5050
	1    0    0    -1  
$EndComp
$Comp
L DIODE D?
U 1 1 5A77E60E
P 12300 4450
F 0 "D?" H 12300 4550 40  0000 C CNN
F 1 "DIODE" H 12300 4350 40  0001 C CNN
F 2 "" H 12300 4450 60  0000 C CNN
F 3 "" H 12300 4450 60  0000 C CNN
	1    12300 4450
	0    1    -1   0   
$EndComp
Text Label 12300 4250 0    60   ~ 0
Vboost
$Comp
L MOS_Nro Q?
U 1 1 5A77E615
P 11975 4850
F 0 "Q?" H 11850 5000 60  0000 R CNN
F 1 "MOS_Nro" H 11975 4670 60  0001 R CNN
F 2 "" H 11975 4850 60  0000 C CNN
F 3 "" H 11975 4850 60  0000 C CNN
	1    11975 4850
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-Common_Rail_MC33816 R?
U 1 1 5A77E61B
P 11325 4850
F 0 "R?" V 11405 4850 40  0000 C CNN
F 1 "R" V 11332 4851 40  0000 C CNN
F 2 "" V 11255 4850 30  0000 C CNN
F 3 "" H 11325 4850 30  0000 C CNN
	1    11325 4850
	0    1    1    0   
$EndComp
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A77E621
P 11775 5050
F 0 "C?" H 11775 5150 40  0000 L CNN
F 1 "C" H 11781 4965 40  0000 L CNN
F 2 "" H 11813 4900 30  0000 C CNN
F 3 "" H 11775 5050 60  0000 C CNN
	1    11775 5050
	0    1    1    0   
$EndComp
$Comp
L R-RESCUE-Common_Rail_MC33816 R?
U 1 1 5A77E6E9
P 12075 5450
F 0 "R?" V 12155 5450 40  0000 C CNN
F 1 "R" V 12082 5451 40  0000 C CNN
F 2 "" V 12005 5450 30  0000 C CNN
F 3 "" H 12075 5450 30  0000 C CNN
	1    12075 5450
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-Common_Rail_MC33816 #PWR?
U 1 1 5A77E7EB
P 12075 5725
F 0 "#PWR?" H 12075 5725 30  0001 C CNN
F 1 "GND" H 12075 5655 30  0001 C CNN
F 2 "" H 12075 5725 60  0000 C CNN
F 3 "" H 12075 5725 60  0000 C CNN
	1    12075 5725
	1    0    0    -1  
$EndComp
Text Label 9700 5950 0    60   ~ 0
Vpwr
$Comp
L L L?
U 1 1 5A781F25
P 10850 6275
F 0 "L?" V 10800 6275 50  0000 C CNN
F 1 "L" V 10925 6275 50  0001 C CNN
F 2 "" H 10850 6275 50  0000 C CNN
F 3 "" H 10850 6275 50  0000 C CNN
	1    10850 6275
	-1   0    0    1   
$EndComp
$Comp
L DIODE D?
U 1 1 5A78203B
P 11550 6425
F 0 "D?" H 11550 6525 40  0000 C CNN
F 1 "DIODE" H 11550 6325 40  0001 C CNN
F 2 "" H 11550 6425 60  0000 C CNN
F 3 "" H 11550 6425 60  0000 C CNN
	1    11550 6425
	1    0    0    -1  
$EndComp
$Comp
L MOS_Nro Q?
U 1 1 5A7823C9
P 5975 6000
F 0 "Q?" H 5850 6150 60  0000 R CNN
F 1 "MOS_Nro" H 5975 5820 60  0001 R CNN
F 2 "" H 5975 6000 60  0000 C CNN
F 3 "" H 5975 6000 60  0000 C CNN
	1    5975 6000
	-1   0    0    -1  
$EndComp
$Comp
L MOS_Nro Q?
U 1 1 5A7824B4
P 10750 6650
F 0 "Q?" H 10950 6650 60  0000 L CNN
F 1 "MOS_Nro" H 10750 6470 60  0001 R CNN
F 2 "" H 10750 6650 60  0000 C CNN
F 3 "" H 10750 6650 60  0000 C CNN
	1    10750 6650
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-Common_Rail_MC33816 R?
U 1 1 5A7826EE
P 10100 6650
F 0 "R?" V 10180 6650 40  0000 C CNN
F 1 "R" V 10107 6651 40  0000 C CNN
F 2 "" V 10030 6650 30  0000 C CNN
F 3 "" H 10100 6650 30  0000 C CNN
	1    10100 6650
	0    1    1    0   
$EndComp
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A7826F4
P 10550 6850
F 0 "C?" H 10550 6950 40  0000 L CNN
F 1 "C" H 10556 6765 40  0000 L CNN
F 2 "" H 10588 6700 30  0000 C CNN
F 3 "" H 10550 6850 60  0000 C CNN
	1    10550 6850
	0    1    1    0   
$EndComp
$Comp
L R-RESCUE-Common_Rail_MC33816 R?
U 1 1 5A7828D9
P 11350 6675
F 0 "R?" V 11430 6675 40  0000 C CNN
F 1 "R" V 11357 6676 40  0000 C CNN
F 2 "" V 11280 6675 30  0000 C CNN
F 3 "" H 11350 6675 30  0000 C CNN
	1    11350 6675
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A782A0D
P 11350 7125
F 0 "C?" H 11350 7225 40  0000 L CNN
F 1 "C" H 11356 7040 40  0000 L CNN
F 2 "" H 11388 6975 30  0000 C CNN
F 3 "" H 11350 7125 60  0000 C CNN
	1    11350 7125
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-Common_Rail_MC33816 R?
U 1 1 5A782C67
P 11750 6675
F 0 "R?" V 11830 6675 40  0000 C CNN
F 1 "R" V 11757 6676 40  0000 C CNN
F 2 "" V 11680 6675 30  0000 C CNN
F 3 "" H 11750 6675 30  0000 C CNN
	1    11750 6675
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A782C6D
P 11750 7125
F 0 "C?" H 11750 7225 40  0000 L CNN
F 1 "C" H 11756 7040 40  0000 L CNN
F 2 "" H 11788 6975 30  0000 C CNN
F 3 "" H 11750 7125 60  0000 C CNN
	1    11750 7125
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A7839E9
P 11075 7525
F 0 "C?" H 11075 7625 40  0000 L CNN
F 1 "C" H 11081 7440 40  0000 L CNN
F 2 "" H 11113 7375 30  0000 C CNN
F 3 "" H 11075 7525 60  0000 C CNN
	1    11075 7525
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-Common_Rail_MC33816 R?
U 1 1 5A7839EF
P 10850 7575
F 0 "R?" V 10930 7575 40  0000 C CNN
F 1 "R" V 10857 7576 40  0000 C CNN
F 2 "" V 10780 7575 30  0000 C CNN
F 3 "" H 10850 7575 30  0000 C CNN
	1    10850 7575
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-Common_Rail_MC33816 #PWR?
U 1 1 5A7839F5
P 10850 7850
F 0 "#PWR?" H 10850 7850 30  0001 C CNN
F 1 "GND" H 10850 7780 30  0001 C CNN
F 2 "" H 10850 7850 60  0000 C CNN
F 3 "" H 10850 7850 60  0000 C CNN
	1    10850 7850
	1    0    0    -1  
$EndComp
Text Label 12550 6425 0    60   ~ 0
Vboost
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A7847CB
P 11975 7125
F 0 "C?" H 11975 7225 40  0000 L CNN
F 1 "C" H 11981 7040 40  0000 L CNN
F 2 "" H 12013 6975 30  0000 C CNN
F 3 "" H 11975 7125 60  0000 C CNN
	1    11975 7125
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A7848D8
P 12375 7125
F 0 "C?" H 12375 7225 40  0000 L CNN
F 1 "C" H 12381 7040 40  0000 L CNN
F 2 "" H 12413 6975 30  0000 C CNN
F 3 "" H 12375 7125 60  0000 C CNN
	1    12375 7125
	1    0    0    -1  
$EndComp
$Comp
L CP1-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A784974
P 12150 6625
F 0 "C?" H 12200 6725 50  0000 L CNN
F 1 "CP1" H 12200 6525 50  0000 L CNN
F 2 "" H 12150 6625 60  0000 C CNN
F 3 "" H 12150 6625 60  0000 C CNN
	1    12150 6625
	1    0    0    -1  
$EndComp
$Comp
L CP1-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A784A74
P 12550 6625
F 0 "C?" H 12600 6725 50  0000 L CNN
F 1 "CP1" H 12600 6525 50  0000 L CNN
F 2 "" H 12550 6625 60  0000 C CNN
F 3 "" H 12550 6625 60  0000 C CNN
	1    12550 6625
	1    0    0    -1  
$EndComp
$Comp
L L L?
U 1 1 5A78864F
P 10100 6050
F 0 "L?" V 10050 6050 50  0000 C CNN
F 1 "L" V 10175 6050 50  0001 C CNN
F 2 "" H 10100 6050 50  0000 C CNN
F 3 "" H 10100 6050 50  0000 C CNN
	1    10100 6050
	0    1    1    0   
$EndComp
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A7887D5
P 10500 6250
F 0 "C?" H 10500 6350 40  0000 L CNN
F 1 "C" H 10506 6165 40  0000 L CNN
F 2 "" H 10538 6100 30  0000 C CNN
F 3 "" H 10500 6250 60  0000 C CNN
	1    10500 6250
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-Common_Rail_MC33816 #PWR?
U 1 1 5A78893D
P 10500 6450
F 0 "#PWR?" H 10500 6450 30  0001 C CNN
F 1 "GND" H 10500 6380 30  0001 C CNN
F 2 "" H 10500 6450 60  0000 C CNN
F 3 "" H 10500 6450 60  0000 C CNN
	1    10500 6450
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A788CFA
P 10300 6250
F 0 "C?" H 10300 6350 40  0000 L CNN
F 1 "C" H 10306 6165 40  0000 L CNN
F 2 "" H 10338 6100 30  0000 C CNN
F 3 "" H 10300 6250 60  0000 C CNN
	1    10300 6250
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-Common_Rail_MC33816 #PWR?
U 1 1 5A788DAD
P 10300 6450
F 0 "#PWR?" H 10300 6450 30  0001 C CNN
F 1 "GND" H 10300 6380 30  0001 C CNN
F 2 "" H 10300 6450 60  0000 C CNN
F 3 "" H 10300 6450 60  0000 C CNN
	1    10300 6450
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A788E92
P 9900 6250
F 0 "C?" H 9900 6350 40  0000 L CNN
F 1 "C" H 9906 6165 40  0000 L CNN
F 2 "" H 9938 6100 30  0000 C CNN
F 3 "" H 9900 6250 60  0000 C CNN
	1    9900 6250
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-Common_Rail_MC33816 #PWR?
U 1 1 5A788E98
P 9900 6450
F 0 "#PWR?" H 9900 6450 30  0001 C CNN
F 1 "GND" H 9900 6380 30  0001 C CNN
F 2 "" H 9900 6450 60  0000 C CNN
F 3 "" H 9900 6450 60  0000 C CNN
	1    9900 6450
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A788E9E
P 9700 6250
F 0 "C?" H 9700 6350 40  0000 L CNN
F 1 "C" H 9706 6165 40  0000 L CNN
F 2 "" H 9738 6100 30  0000 C CNN
F 3 "" H 9700 6250 60  0000 C CNN
	1    9700 6250
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-Common_Rail_MC33816 #PWR?
U 1 1 5A788EA4
P 9700 6450
F 0 "#PWR?" H 9700 6450 30  0001 C CNN
F 1 "GND" H 9700 6380 30  0001 C CNN
F 2 "" H 9700 6450 60  0000 C CNN
F 3 "" H 9700 6450 60  0000 C CNN
	1    9700 6450
	1    0    0    -1  
$EndComp
Text Label 9700 6050 0    60   ~ 0
Vbat
Text Label 5125 5800 0    60   ~ 0
Vbat
$Comp
L TEST_1P P?
U 1 1 5A78BC3F
P 5875 6200
F 0 "P?" H 5800 6250 50  0000 C CNN
F 1 "MotH" H 5900 6250 50  0000 L CNN
F 2 "" H 6075 6200 50  0000 C CNN
F 3 "" H 6075 6200 50  0000 C CNN
	1    5875 6200
	-1   0    0    1   
$EndComp
$Comp
L TEST_1P P?
U 1 1 5A78BC45
P 5875 6800
F 0 "P?" H 5950 6850 50  0000 C CNN
F 1 "MotL" H 5850 6850 50  0000 R CNN
F 2 "" H 6075 6800 50  0000 C CNN
F 3 "" H 6075 6800 50  0000 C CNN
	1    5875 6800
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-Common_Rail_MC33816 R?
U 1 1 5A78D0D0
P 6725 6000
F 0 "R?" V 6805 6000 40  0000 C CNN
F 1 "R" V 6732 6001 40  0000 C CNN
F 2 "" V 6655 6000 30  0000 C CNN
F 3 "" H 6725 6000 30  0000 C CNN
	1    6725 6000
	0    -1   1    0   
$EndComp
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A78D0D6
P 6275 6200
F 0 "C?" H 6275 6300 40  0000 L CNN
F 1 "C" H 6281 6115 40  0000 L CNN
F 2 "" H 6313 6050 30  0000 C CNN
F 3 "" H 6275 6200 60  0000 C CNN
	1    6275 6200
	0    -1   1    0   
$EndComp
$Comp
L MOS_Nro Q?
U 1 1 5A78D8ED
P 5975 7000
F 0 "Q?" H 5850 7150 60  0000 R CNN
F 1 "MOS_Nro" H 5975 6820 60  0001 R CNN
F 2 "" H 5975 7000 60  0000 C CNN
F 3 "" H 5975 7000 60  0000 C CNN
	1    5975 7000
	-1   0    0    -1  
$EndComp
$Comp
L R-RESCUE-Common_Rail_MC33816 R?
U 1 1 5A78D8F4
P 6725 7000
F 0 "R?" V 6805 7000 40  0000 C CNN
F 1 "R" V 6732 7001 40  0000 C CNN
F 2 "" V 6655 7000 30  0000 C CNN
F 3 "" H 6725 7000 30  0000 C CNN
	1    6725 7000
	0    -1   1    0   
$EndComp
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A78D8FA
P 6275 7200
F 0 "C?" H 6275 7300 40  0000 L CNN
F 1 "C" H 6281 7115 40  0000 L CNN
F 2 "" H 6313 7050 30  0000 C CNN
F 3 "" H 6275 7200 60  0000 C CNN
	1    6275 7200
	0    -1   1    0   
$EndComp
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A78DE61
P 5650 7700
F 0 "C?" H 5650 7800 40  0000 L CNN
F 1 "C" H 5656 7615 40  0000 L CNN
F 2 "" H 5688 7550 30  0000 C CNN
F 3 "" H 5650 7700 60  0000 C CNN
	1    5650 7700
	-1   0    0    -1  
$EndComp
$Comp
L R-RESCUE-Common_Rail_MC33816 R?
U 1 1 5A78DE67
P 5875 7750
F 0 "R?" V 5955 7750 40  0000 C CNN
F 1 "R" V 5882 7751 40  0000 C CNN
F 2 "" V 5805 7750 30  0000 C CNN
F 3 "" H 5875 7750 30  0000 C CNN
	1    5875 7750
	-1   0    0    -1  
$EndComp
$Comp
L GND-RESCUE-Common_Rail_MC33816 #PWR?
U 1 1 5A78DE6D
P 5875 8025
F 0 "#PWR?" H 5875 8025 30  0001 C CNN
F 1 "GND" H 5875 7955 30  0001 C CNN
F 2 "" H 5875 8025 60  0000 C CNN
F 3 "" H 5875 8025 60  0000 C CNN
	1    5875 8025
	-1   0    0    -1  
$EndComp
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A78EDB4
P 5575 6400
F 0 "C?" H 5575 6500 40  0000 L CNN
F 1 "C" H 5581 6315 40  0000 L CNN
F 2 "" H 5613 6250 30  0000 C CNN
F 3 "" H 5575 6400 60  0000 C CNN
	1    5575 6400
	-1   0    0    -1  
$EndComp
$Comp
L DIODE D?
U 1 1 5A78EEDA
P 5350 6400
F 0 "D?" H 5350 6500 40  0000 C CNN
F 1 "DIODE" H 5350 6300 40  0001 C CNN
F 2 "" H 5350 6400 60  0000 C CNN
F 3 "" H 5350 6400 60  0000 C CNN
	1    5350 6400
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-Common_Rail_MC33816 #PWR?
U 1 1 5A78F03D
P 5350 6625
F 0 "#PWR?" H 5350 6625 30  0001 C CNN
F 1 "GND" H 5350 6555 30  0001 C CNN
F 2 "" H 5350 6625 60  0000 C CNN
F 3 "" H 5350 6625 60  0000 C CNN
	1    5350 6625
	-1   0    0    -1  
$EndComp
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A78F77C
P 5125 7000
F 0 "C?" H 5125 7100 40  0000 L CNN
F 1 "C" H 5131 6915 40  0000 L CNN
F 2 "" H 5163 6850 30  0000 C CNN
F 3 "" H 5125 7000 60  0000 C CNN
	1    5125 7000
	-1   0    0    -1  
$EndComp
$Comp
L MC33816 U?
U 1 1 5A794269
P 8275 5325
F 0 "U?" H 8275 5275 60  0000 C CNN
F 1 "MC33816" H 8275 5375 60  0000 C CNN
F 2 "Housings_QFP:HTQFP-64-1EP_10x10mm_Pitch0.5mm_ThermalPad" H 8275 5325 60  0001 C CNN
F 3 "" H 8275 5325 60  0001 C CNN
	1    8275 5325
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-Common_Rail_MC33816 #PWR?
U 1 1 5A7A64A5
P 8825 8525
F 0 "#PWR?" H 8825 8525 30  0001 C CNN
F 1 "GND" H 8825 8455 30  0001 C CNN
F 2 "" H 8825 8525 60  0000 C CNN
F 3 "" H 8825 8525 60  0000 C CNN
	1    8825 8525
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A7A6CDB
P 8475 8650
F 0 "C?" H 8475 8750 40  0000 L CNN
F 1 "C" H 8481 8565 40  0000 L CNN
F 2 "" H 8513 8500 30  0000 C CNN
F 3 "" H 8475 8650 60  0000 C CNN
	1    8475 8650
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A7A6FD2
P 8275 8650
F 0 "C?" H 8275 8750 40  0000 L CNN
F 1 "C" H 8281 8565 40  0000 L CNN
F 2 "" H 8313 8500 30  0000 C CNN
F 3 "" H 8275 8650 60  0000 C CNN
	1    8275 8650
	-1   0    0    -1  
$EndComp
$Comp
L GND-RESCUE-Common_Rail_MC33816 #PWR?
U 1 1 5A7A7506
P 8475 8850
F 0 "#PWR?" H 8475 8850 30  0001 C CNN
F 1 "GND" H 8475 8780 30  0001 C CNN
F 2 "" H 8475 8850 60  0000 C CNN
F 3 "" H 8475 8850 60  0000 C CNN
	1    8475 8850
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-Common_Rail_MC33816 #PWR?
U 1 1 5A7A75D1
P 8275 8850
F 0 "#PWR?" H 8275 8850 30  0001 C CNN
F 1 "GND" H 8275 8780 30  0001 C CNN
F 2 "" H 8275 8850 60  0000 C CNN
F 3 "" H 8275 8850 60  0000 C CNN
	1    8275 8850
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P P?
U 1 1 5A7A781C
P 8375 8950
F 0 "P?" H 8300 9000 50  0000 C CNN
F 1 "5V" H 8400 9000 50  0000 L CNN
F 2 "" H 8575 8950 50  0000 C CNN
F 3 "" H 8575 8950 50  0000 C CNN
	1    8375 8950
	-1   0    0    1   
$EndComp
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A7A7EEF
P 7475 8650
F 0 "C?" H 7475 8750 40  0000 L CNN
F 1 "C" H 7481 8565 40  0000 L CNN
F 2 "" H 7513 8500 30  0000 C CNN
F 3 "" H 7475 8650 60  0000 C CNN
	1    7475 8650
	-1   0    0    -1  
$EndComp
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A7A8043
P 7675 8650
F 0 "C?" H 7675 8750 40  0000 L CNN
F 1 "C" H 7681 8565 40  0000 L CNN
F 2 "" H 7713 8500 30  0000 C CNN
F 3 "" H 7675 8650 60  0000 C CNN
	1    7675 8650
	-1   0    0    -1  
$EndComp
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A7A8271
P 7875 8650
F 0 "C?" H 7875 8750 40  0000 L CNN
F 1 "C" H 7881 8565 40  0000 L CNN
F 2 "" H 7913 8500 30  0000 C CNN
F 3 "" H 7875 8650 60  0000 C CNN
	1    7875 8650
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A7A8277
P 8075 8650
F 0 "C?" H 8075 8750 40  0000 L CNN
F 1 "C" H 8081 8565 40  0000 L CNN
F 2 "" H 8113 8500 30  0000 C CNN
F 3 "" H 8075 8650 60  0000 C CNN
	1    8075 8650
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-Common_Rail_MC33816 #PWR?
U 1 1 5A7A9765
P 8075 8850
F 0 "#PWR?" H 8075 8850 30  0001 C CNN
F 1 "GND" H 8075 8780 30  0001 C CNN
F 2 "" H 8075 8850 60  0000 C CNN
F 3 "" H 8075 8850 60  0000 C CNN
	1    8075 8850
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-Common_Rail_MC33816 #PWR?
U 1 1 5A7A983F
P 7875 8850
F 0 "#PWR?" H 7875 8850 30  0001 C CNN
F 1 "GND" H 7875 8780 30  0001 C CNN
F 2 "" H 7875 8850 60  0000 C CNN
F 3 "" H 7875 8850 60  0000 C CNN
	1    7875 8850
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-Common_Rail_MC33816 #PWR?
U 1 1 5A7A9919
P 7675 8850
F 0 "#PWR?" H 7675 8850 30  0001 C CNN
F 1 "GND" H 7675 8780 30  0001 C CNN
F 2 "" H 7675 8850 60  0000 C CNN
F 3 "" H 7675 8850 60  0000 C CNN
	1    7675 8850
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-Common_Rail_MC33816 #PWR?
U 1 1 5A7A99F3
P 7475 8850
F 0 "#PWR?" H 7475 8850 30  0001 C CNN
F 1 "GND" H 7475 8780 30  0001 C CNN
F 2 "" H 7475 8850 60  0000 C CNN
F 3 "" H 7475 8850 60  0000 C CNN
	1    7475 8850
	1    0    0    -1  
$EndComp
Text Notes 2350 3825 0    60   ~ 0
INJECTOR 1 AND 2 WILL BE HERE AFTER COMPONENTS ARE POPULATD FOR INJECTOR 3 AND 4
Wire Notes Line
	10625 3600 10925 3600
Wire Notes Line
	10925 3600 10925 4000
Wire Notes Line
	10925 4000 10625 4000
Wire Notes Line
	10625 4000 10625 3600
Wire Notes Line
	10850 3700 10825 3725
Wire Notes Line
	10825 3725 10825 3800
Wire Notes Line
	10825 3800 10875 3800
Wire Notes Line
	10875 3800 10875 3725
Wire Notes Line
	10875 3725 10850 3700
Wire Notes Line
	10850 3800 10800 3875
Wire Notes Line
	10850 3800 10900 3875
Wire Notes Line
	10850 3800 10825 3900
Wire Notes Line
	10850 3800 10875 3900
Wire Notes Line
	10850 3800 10850 3925
Wire Wire Line
	9975 3400 9975 3500
Wire Notes Line
	11925 3600 12225 3600
Wire Notes Line
	12225 3600 12225 4000
Wire Notes Line
	12225 4000 11925 4000
Wire Notes Line
	11925 4000 11925 3600
Wire Wire Line
	9575 4100 11000 4100
Wire Wire Line
	9575 5700 12300 5700
Wire Wire Line
	12075 5200 12075 5050
Connection ~ 12075 5200
Wire Wire Line
	10775 4500 10775 5200
Wire Wire Line
	12075 4650 12075 4100
Wire Wire Line
	9575 3500 12075 3500
Connection ~ 11775 3500
Connection ~ 10775 3500
Connection ~ 10475 3500
Connection ~ 9975 3500
Wire Wire Line
	9575 4650 12300 4650
Connection ~ 10775 4100
Connection ~ 12075 4650
Connection ~ 10775 5200
Wire Notes Line
	10750 3950 10750 3750
Wire Notes Line
	10750 3750 10825 3750
Wire Notes Line
	10750 3650 10750 3725
Wire Notes Line
	10750 3725 10825 3725
Wire Notes Line
	12150 3700 12125 3725
Wire Notes Line
	12125 3725 12125 3800
Wire Notes Line
	12125 3800 12175 3800
Wire Notes Line
	12175 3800 12175 3725
Wire Notes Line
	12175 3725 12150 3700
Wire Notes Line
	12150 3800 12100 3875
Wire Notes Line
	12150 3800 12200 3875
Wire Notes Line
	12150 3800 12125 3900
Wire Notes Line
	12150 3800 12175 3900
Wire Notes Line
	12150 3800 12150 3925
Wire Notes Line
	12050 3950 12050 3750
Wire Notes Line
	12050 3750 12125 3750
Wire Notes Line
	12050 3650 12050 3725
Wire Notes Line
	12050 3725 12125 3725
Wire Wire Line
	9575 5200 12300 5200
Wire Wire Line
	12300 5700 12300 5600
Wire Wire Line
	10775 3300 10775 3500
Wire Wire Line
	10775 4500 10675 4500
Wire Wire Line
	10275 4500 10275 4300
Wire Wire Line
	10275 4300 10475 4300
Wire Wire Line
	9775 4300 9575 4300
Wire Wire Line
	11775 4850 11575 4850
Wire Wire Line
	11575 4850 11575 5050
Wire Wire Line
	12075 5050 11975 5050
Wire Wire Line
	11075 4850 9575 4850
Wire Wire Line
	12075 5725 12075 5700
Wire Wire Line
	10550 6650 10350 6650
Wire Wire Line
	10350 6650 10350 6850
Wire Wire Line
	11075 7825 11075 7725
Connection ~ 11075 7825
Wire Wire Line
	10850 7850 10850 7825
Connection ~ 10850 6850
Connection ~ 11350 7325
Wire Wire Line
	10850 6425 11350 6425
Wire Wire Line
	9575 7325 12550 7325
Wire Wire Line
	11750 6425 12550 6425
Connection ~ 12150 6425
Wire Wire Line
	12550 7325 12550 6825
Connection ~ 11750 7325
Connection ~ 12375 7325
Connection ~ 11975 7325
Wire Wire Line
	12375 6925 12375 6425
Connection ~ 12375 6425
Wire Wire Line
	11975 5850 11975 6925
Connection ~ 11975 6425
Wire Wire Line
	10750 6850 10850 6850
Wire Wire Line
	10850 6850 10850 7325
Connection ~ 10850 7325
Wire Wire Line
	9575 7825 11075 7825
Connection ~ 10850 7825
Wire Wire Line
	10250 6050 10850 6050
Connection ~ 10500 6050
Connection ~ 10300 6050
Wire Wire Line
	9575 6050 9950 6050
Connection ~ 9900 6050
Wire Wire Line
	9850 6650 9575 6650
Connection ~ 9700 6050
Wire Wire Line
	11975 5850 9575 5850
Wire Wire Line
	12150 6825 12150 7325
Connection ~ 12150 7325
Wire Notes Line
	5725 6300 6025 6300
Wire Notes Line
	6025 6300 6025 6700
Wire Notes Line
	6025 6700 5725 6700
Wire Notes Line
	5725 6700 5725 6300
Wire Notes Line
	5825 6525 5850 6475
Wire Notes Line
	5850 6475 5875 6525
Wire Notes Line
	5875 6525 5900 6475
Wire Notes Line
	5900 6475 5925 6525
Wire Notes Line
	5875 6350 5875 6400
Wire Notes Line
	5850 6400 5900 6400
Wire Notes Line
	5850 6400 5850 6425
Wire Notes Line
	5850 6425 5900 6425
Wire Notes Line
	5900 6425 5900 6400
Wire Notes Line
	5875 6650 5875 6600
Wire Notes Line
	5850 6600 5900 6600
Wire Notes Line
	5850 6600 5850 6575
Wire Notes Line
	5850 6575 5900 6575
Wire Notes Line
	5900 6575 5900 6600
Wire Notes Line
	5850 6575 5800 6550
Wire Notes Line
	5800 6550 5775 6525
Wire Notes Line
	5775 6525 5775 6475
Wire Notes Line
	5775 6475 5800 6450
Wire Notes Line
	5800 6450 5850 6425
Wire Notes Line
	5900 6575 5950 6550
Wire Notes Line
	5950 6550 5975 6525
Wire Notes Line
	5975 6525 5975 6475
Wire Notes Line
	5975 6475 5950 6450
Wire Notes Line
	5950 6450 5900 6425
Wire Wire Line
	6175 6000 6475 6000
Wire Wire Line
	6475 6000 6475 6200
Wire Wire Line
	5350 6200 6075 6200
Wire Wire Line
	6175 7000 6475 7000
Wire Wire Line
	6475 7000 6475 7200
Wire Wire Line
	5650 8000 5650 7900
Wire Wire Line
	5875 8025 5875 8000
Wire Wire Line
	5650 8000 6975 8000
Connection ~ 5875 8000
Wire Wire Line
	6075 7200 5875 7200
Wire Wire Line
	5875 7200 5875 7500
Wire Wire Line
	5650 7500 6975 7500
Wire Wire Line
	6975 7000 6975 7000
Wire Wire Line
	6975 6000 6975 6000
Wire Wire Line
	5125 6800 5125 6675
Wire Wire Line
	5125 6275 5125 5800
Wire Wire Line
	5125 5800 5875 5800
Wire Wire Line
	5575 6600 5350 6600
Wire Wire Line
	5350 6600 5350 6625
Connection ~ 5875 6200
Connection ~ 5575 6200
Wire Wire Line
	5125 6800 6475 6800
Connection ~ 5875 7500
Wire Wire Line
	10850 5950 10850 6125
Wire Wire Line
	10850 6450 10850 6425
Wire Wire Line
	10850 5950 9575 5950
Connection ~ 10850 6050
Wire Wire Line
	8825 8450 8825 8525
Wire Wire Line
	8375 8450 8375 8950
Wire Wire Line
	8675 8450 8975 8450
Connection ~ 8875 8450
Connection ~ 8825 8450
Connection ~ 8775 8450
Wire Wire Line
	8275 8450 8475 8450
Connection ~ 8375 8450
Wire Wire Line
	8075 8450 7875 8450
Wire Wire Line
	7675 8450 7475 8450
Wire Wire Line
	12075 3500 12075 3175
Wire Wire Line
	12075 2975 12075 2775
Wire Wire Line
	11200 2975 12075 2975
Wire Wire Line
	9975 2800 11200 2800
Wire Wire Line
	9575 2700 9975 2700
Wire Wire Line
	9975 2700 9975 2575
Wire Wire Line
	9975 2575 11275 2575
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A7AA85D
P 9775 2800
F 0 "C?" H 9775 2900 40  0000 L CNN
F 1 "C" H 9781 2715 40  0000 L CNN
F 2 "" H 9813 2650 30  0000 C CNN
F 3 "" H 9775 2800 60  0000 C CNN
	1    9775 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11200 2800 11200 2975
Connection ~ 11775 2975
Wire Wire Line
	9975 2800 9975 2900
Wire Wire Line
	9975 2900 9575 2900
Wire Wire Line
	9575 3300 9975 3300
Wire Wire Line
	9975 3300 9975 3100
Connection ~ 9975 2800
$Comp
L C-RESCUE-Common_Rail_MC33816 C?
U 1 1 5A7B4455
P 6775 6200
F 0 "C?" H 6775 6300 40  0000 L CNN
F 1 "C" H 6781 6115 40  0000 L CNN
F 2 "" H 6813 6050 30  0000 C CNN
F 3 "" H 6775 6200 60  0000 C CNN
	1    6775 6200
	0    -1   1    0   
$EndComp
Wire Wire Line
	6075 6200 6075 6300
Wire Wire Line
	6075 6300 6975 6300
Wire Wire Line
	6575 6200 6575 6300
Connection ~ 6575 6300
Wire Wire Line
	6475 6800 6475 6900
Wire Wire Line
	6475 6900 6975 6900
Connection ~ 5875 6800
NoConn ~ 6975 6700
NoConn ~ 6975 6600
NoConn ~ 6975 5775
NoConn ~ 9575 5775
Text Notes 4300 6550 0    60   ~ 0
PUMP BANK
Text Notes 13100 6550 0    60   ~ 0
INJECTOR BOOSTED VOLTAGE\n
Text Notes 13000 3825 0    60   ~ 0
INJECTOR BANK 2\n
$EndSCHEMATC
