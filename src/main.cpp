/**
 * DA PIMP Plus - Arduino Pro Mini Firmware
 * 
 * https://github.com/gutierrezps/da-pimp-plus
 * 
 */

#include <Arduino.h>
#include <LiquidCrystal.h>

//              lcd(rs, en, d4, d5, d6, d7)
LiquidCrystal g_lcd( 4,  5,  6,  7,  8,  9);

void setup() {
    g_lcd.begin(16, 2);
    g_lcd.clear();
    g_lcd.print("  hello world!");
}

void loop() {
    // put your main code here, to run repeatedly:
}