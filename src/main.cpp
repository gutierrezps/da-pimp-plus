/**
 * DA PIMP Plus - Arduino Pro Mini Firmware
 * 
 * https://github.com/gutierrezps/da-pimp-plus
 * 
 */

#include <Arduino.h>
#include <LiquidCrystal.h>

/**
 * Configurable section
 **/

//              lcd(rs, en, d4, d5, d6, d7)
LiquidCrystal g_lcd( 4,  5,  6,  7,  8,  9);

const struct
{
    char chargeVoltage;
    char dischargeVoltage;
    char floatVoltage;
    char currentSensor;
    char modeButton;
    char chargeOrDischargeRelay;
    char connectOrFloatRelay;
} k_pins = {A0, A1, A2, A3, 9, 10, 11};

const char k_nAnalogSamples = 100;       // to take for each acquisition


/**
 * Global variables
 **/

float g_currentSensorOffset = 2.5;      // voltage value for 0 Amperes
unsigned long g_lcdTimer = 0;

char g_currentMode = 1;         // 0: discharge, 1: float, 2: charging
const char k_modeStrings[3][6] = {"DISCH", "FLOAT", "CHARG"};
const float k_modeFactor[3] = { 3.04, 3.249, 65.57 };

/**
 * Better precision analogRead()
 * 
 * TODO: https://forum.arduino.cc/index.php?topic=109672.msg827645#msg827645
 **/
float avgAnalog(char pin) {
    unsigned long sum = 0;

    for (char i = 0; i < k_nAnalogSamples; ++i)
    {
        sum += analogRead(pin);
        delayMicroseconds(25);
    }

    return (sum/(k_nAnalogSamples * 1023.0)) * 5.0;
}


void setup() {
    pinMode(k_pins.modeButton, INPUT_PULLUP);
    pinMode(k_pins.chargeOrDischargeRelay, OUTPUT);
    pinMode(k_pins.connectOrFloatRelay, OUTPUT);

    g_lcd.begin(16, 2);
    g_lcd.clear();
    g_lcd.print("  DA PIMP Plus");
    g_lcd.setCursor(0, 1);
    g_lcd.print("Calibrating");

    
    // Current sensor offset calibration

    int count = 0;
    unsigned long sum = 0;
    unsigned long calibrationTimer = millis(), dotsTimer = millis();

    while (millis() - calibrationTimer < 2000) {
        sum += analogRead(k_pins.currentSensor);
        count++;
        delay(10);

        if (millis() - dotsTimer > 400) {
            g_lcd.print('.');
            dotsTimer = millis();
        }
    }

    g_currentSensorOffset = (sum/(count * 1023.0)) * 5.0;

    g_lcd.clear();
}

void loop() {
    
    // update LCD display every 1 second
    if (millis() - g_lcdTimer < 1000) return;

    g_lcdTimer = millis();

    char mode = g_currentMode;

    g_lcd.setCursor(0,0);
    g_lcd.print(k_modeStrings[mode]);


    // print voltage

    g_lcd.setCursor(0,1);

    char readFrom = k_pins.dischargeVoltage;
    if (mode == 1) readFrom = k_pins.floatVoltage;
    else if (mode == 2) readFrom = k_pins.chargeVoltage;

    float voltage = avgAnalog(readFrom) * k_modeFactor[mode];
    g_lcd.print(voltage, 2);
    g_lcd.print(" V    ");


    // print current 

    g_lcd.setCursor(10, 1);

    float current = avgAnalog(k_pins.currentSensor);
    current = (current - g_currentSensorOffset) * 0.066;    // 2.5V offset, 66mV/A
    if (current < 0) current *= -1.0;

    g_lcd.print(current);
    g_lcd.print(" A  ");
}