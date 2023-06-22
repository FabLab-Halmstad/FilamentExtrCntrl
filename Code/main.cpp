/*
 * FilamentRecProto1.cpp
 *
 * Created: 2022-10-20 02:22:52
 * Author : Benjamin
 */ 

#define F_CPU 16000000UL

#include <avr/io.h>
#include <util/delay.h>
#include <math.h>

#include "SerialCom.h"
#include "AnalogDigital.h"

const float THERM_STD_R=100000.0f; //Thermistor resistance
const float THERM_B_VAL=4267; //Thermistor coefficient
const float roomTmp=298.15f; //Room temp in kelvin
const float kelvinOffset=273.15f; //Kelvin conversion offset
const float seriesR=100000.0f; //R1 series resistor

float calcTemp(uint16_t adcRead)
{
	float thermR=(-(float)adcRead*seriesR)/((float)adcRead-1023); //Calculate current thermistor resistance
	float temp=(1/((1/roomTmp)+(1/THERM_B_VAL)*(log(thermR/THERM_STD_R))))-kelvinOffset; //Calculate temp with Steinhart equation

	return temp;
}

int main(void)
{
	//Setup

	SerialCom serial;
	serial.setup(F_CPU,BAUD_9600);

	AnalogDigital analog;
	analog.init(INPUT_ADC0,PRESCL_128,MODE_SYNC);

	DDRB |= (1<<PORTB0);
	PORTB &= ~(1<<PORTB0);

	_delay_ms(10);
	serial.writeln("FilamentRec - Ready!");

    while (true) 
    {
		//uint16_t adcCurrent=analog.getCurrent();
		//float data1=calcTemp(adcCurrent);

		
    }
}

