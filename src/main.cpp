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

const struct {
    char chargeVoltage;
    char dischargeVoltage;
    char floatVoltage;
    char currentSensor;
    char modeButton;
    char chargeOrDischargeRelay;
    char connectOrFloatRelay;
} k_pins = {A0, A1, A2, A3, 10, 11, 12};

const uint16_t k_nAnalogSamples = 1024;       // to take for each acquisition
const float k_modeFactor[3] = { 3.256, 3.229, 69.7 };   // voltage divider factor


/**
 * Global variables
 **/

unsigned long g_lcdTimer = 0;
float g_currentSensorOffset[3] = {2.5, 2.5, 2.5};   // voltage values for 0 Amperes

uint8_t g_currentMode = 1;         // 0: discharge, 1: float, 2: charging
const char k_modeStrings[3][6] = {"DISCH", "FLOAT", "CHARG"};

unsigned long g_modeMillis = 0;
uint8_t g_modeSecs = 0, g_modeMins = 0, g_modeHours = 0;

/**
 * analogRead() averaged and converted to voltage
 **/
float readAnalog(char pin) {
    uint32_t sum = 0;

    for (uint16_t i = 0; i < k_nAnalogSamples; ++i) {
        sum += analogRead(pin);
    }

    return ((sum/k_nAnalogSamples)/(1023.0)) * 5.0;
}

void changeMode(uint8_t mode) {
    if (mode != 1) {
        digitalWrite(k_pins.connectOrFloatRelay, HIGH);
        if(mode == 0) {
            digitalWrite(k_pins.chargeOrDischargeRelay, LOW);
        } else {
            digitalWrite(k_pins.chargeOrDischargeRelay, HIGH);
        }
    } else {
        digitalWrite(k_pins.connectOrFloatRelay, LOW);
    }

    g_currentMode = mode;

    g_modeMillis = millis();
    g_modeSecs = 0;
    g_modeMins = 0;
    g_modeHours = 0;
}

void modeTimer() {
    if (millis() - g_modeMillis > 900) {        // approximate time
        g_modeMillis = millis();

        if (++g_modeSecs == 60) {
            if (++g_modeMins == 60) {
                ++g_modeHours;
                g_modeMins = 0;
            }
            g_modeSecs = 0;
        }
    }

    if (g_modeHours < 10) g_lcd.print('0');
    g_lcd.print(g_modeHours);
    g_lcd.print(':');
    if (g_modeMins < 10) g_lcd.print('0');
    g_lcd.print(g_modeMins);
    g_lcd.print(':');
    if (g_modeSecs < 10) g_lcd.print('0');
    g_lcd.print(g_modeSecs);
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
    delay(1000);
    g_lcd.print('.');
    delay(1000);
    
    // calibrate float offset
    g_currentSensorOffset[1] = readAnalog(k_pins.currentSensor);
    g_lcd.print('.');
    
    // calibrate discharge offset
    changeMode(0);
    delay(1000);
    g_lcd.print('.');
    delay(1000);
    g_currentSensorOffset[0] = readAnalog(k_pins.currentSensor);
    g_lcd.print('.');

    // calibrate charge offset
    changeMode(2);
    delay(1000);
    g_lcd.print('.');
    delay(1000);
    g_currentSensorOffset[2] = readAnalog(k_pins.currentSensor);
    g_lcd.print('.');

    g_lcd.clear();
    changeMode(1);
}

void loop() {

    // change operating mode when button is pressed
    if (digitalRead(k_pins.modeButton) == LOW) {
        delay(50);
        while (digitalRead(k_pins.modeButton) == LOW) delay(1);
        delay(50);

        if (++g_currentMode == 3) g_currentMode = 0;

        changeMode(g_currentMode);
        g_lcdTimer = 0;
    }
    
    // update LCD display every 1 second
    if (millis() - g_lcdTimer < 250) return;

    g_lcdTimer = millis();

    uint8_t mode = g_currentMode;

    g_lcd.setCursor(0,0);
    g_lcd.print(k_modeStrings[mode]);       // 5 chars

    
    // print mode timer
    g_lcd.setCursor(8, 0);
    modeTimer();

    
    // print voltage, with 1 digit if charging and 2 digits otherwise

    g_lcd.setCursor(0,1);

    char readFrom = k_pins.dischargeVoltage;
    if (mode == 1) readFrom = k_pins.floatVoltage;
    else if (mode == 2) readFrom = k_pins.chargeVoltage;

    float analogValue = readAnalog(readFrom);
    float voltage = analogValue * k_modeFactor[mode];
    
    if (mode == 2) {    // charging
        if (voltage < 2) voltage = 0;      // noise
        g_lcd.print(voltage, 1);
    } else {
        g_lcd.print(voltage, 2);
    }
    g_lcd.print(" V  ");


    // print current, if not on float mode

    g_lcd.setCursor(10, 1);

    if (mode != 1) {        // float
        float current = readAnalog(k_pins.currentSensor);
        current = (current - g_currentSensorOffset[mode]) / 0.185;    // 2.5V offset, 185mV/A
        if (current < 0) current *= -1.0;

        g_lcd.print(current, 2);
        g_lcd.print(" A");
    } else {
        g_lcd.print("      ");
    }
}