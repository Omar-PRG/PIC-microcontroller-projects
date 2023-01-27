#include        <p18cxxx.h>
#include        <delays.h>
#include        <LCD4PORTC.h>

char digitsAscii[3];
unsigned char t;

void setup(void);

void main() {

    setup();

    while (1) {
        ADCON0bits.GO = 1;      //Start A/D measurement
        while(ADCON0bits.GO);   //Wait for A/D to finish
        t = ((unsigned int)100 * ADRESH + 50) / 256;

        //Display result on LCD
        Bin2Asc(t, digitsAscii); //Convert t into ascii digits
        DispVarStr(&digitsAscii[0], Ln1Ch7, 3); //Display the first digit
        //Note: &digitsAscii[0] is the same as digitsAscii
    }
}

void setup(void) {

    InitLCD(); //Initialize LCD
    DispRomStr(Ln1Ch0, (ROM) "Temp = ___ C");

    ADCON0 = 0b00001101; //A/D on, Select channel 3
    ADCON1 = 0b00001011; //Vref+=Vdd=5v, Vref-=Vss=0v, RA3/AN3 is analog
    ADCON2 = 0b00010001; //Left justified, Speed=Fosc/8, Tacq = 4 Tad

    t = 0;
	//Display result on LCD
	Bin2Asc(t, digitsAscii); //Convert t into ascii digits
	DispVarStr(&digitsAscii[0], Ln1Ch7, 3); //Display the first digit
	//Note: &digitsAscii[0] is the same as digitsAscii
}
