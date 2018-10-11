# DA PIMP Plus
Improved Battery Desulfator, based on [Mikey Sklar's project](http://mikeysklar.blogspot.com/p/da-pimp-battery-desulfator.html). This repository has both the schematic and the Arduino firmware, developed and built with [PlatformIO](https://platformio.org/).

## Improvements

* Arduino Pro Mini MCU
* Graphical 16x2 LCD
* Charge, discharge and float modes
* Voltage and current sensing
* Time display (how long has it been on selected mode)

## Schematic

[da-pimp-plus-sch.pdf](da-pimp-plus-sch.pdf)

* JP1 and JP2 are used to select the max charging current (180 mA if both disconnected, 360 mA if either is connected, 550 mA if both connected)
* V1, V2 and V3 are the voltage measurements for each mode (charge, discharge and float)
* R1 and R2 are 2W resistors
* J1 is used to connect a load to be used on the discharge mode (like a car incandescent light bulb)
* SW3 is used to select the operating mode by switching relays K1 and K2
* Current is measured through an ACS712-5A module
* Graphical information is shown on DS1, a 16x2 Alphanumeric Display
* **DANGER**: **DO NOT HANDLE THE BATTERY LEADS WHEN SW2 IS ON**

## Programming

When programming your Arduino, you must adjust `k_modeFactor` values on `src/main.cpp` by feeding an known voltage on the battery leads (preferably around 12V) and changing the array values to match what's being displayed on the LCD. For example, suppose the following scenario:

* You're feeding 11.84V on the battery leads
* Da Pimp Plus is on float mode, and the display is showing 12.22V
* `k_modeFactor[1] = 3.229`

The new `k_modeFactor[1]` value must then be `<input voltage>/<display voltage> * <current factor> = 11.84/12.22 * 3.229 = 3.129`. Repeat the process for each mode.



## Operating Instructions

**DANGER**: **DO NOT HANDLE THE BATTERY LEADS WHEN SW2 IS ON**

1. Check that SW1 and SW2 are off and the battery leads are disconnected
2. Turn on SW1 and wait for the calibration procedure to finish
3. Connect the battery leads to the battery
4. Press SW3 to select the operating mode
5. If you want to charge the battery, turn on SW2. After finishing the charge, turn SW2 off

Read more detailed instructions on [Mikey Sklar's page](http://mikeysklar.blogspot.com/p/da-pimp-battery-desulfator.html)
