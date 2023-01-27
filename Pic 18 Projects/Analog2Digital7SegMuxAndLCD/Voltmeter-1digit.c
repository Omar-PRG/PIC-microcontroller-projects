#include        <p18cxxx.h>
#include        <BCDlib.h>
#include        <delays.h>
#include        <LCD4PORTC.h>

/////////////////////////////////////////
//The 7-seg codes for numbers from 0 to 9

//If you connect a to RD0, b to RD1, c to RD2, ... DP to RD7
//This is the configuration used on the hardware (EasyPic v7)
char CODE1[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F};

unsigned char state;
unsigned char i;
char digits[3];
char digitsAscii[3];
unsigned char v;

void setup(void);

void main() {

    setup();

    while (1) {
        ADCON0bits.GO = 1;      //Start A/D measurement
        while(ADCON0bits.GO);   //Wait for A/D to finish
        v = ((unsigned int)50 * ADRESH + 25) / 256;
        Bin2Bcd(v, digits);

        //Display result on LCD
        Bin2Asc(v, digitsAscii); //Convert v into ascii digits
        DispVarStr(&digitsAscii[1], Ln1Ch10, 1); //Display the first digit
        DispVarStr(&digitsAscii[2], Ln1Ch12, 1); //Display the second digit
    }
}

#pragma code ISR = 0x0008
#pragma interrupt ISR

void ISR(void) {

    if (INTCONbits.TMR0IF) { //TIMER0

        INTCONbits.TMR0IF = 0;
        TMR0L = 256 - 250;

        //SELECT ONE OF THE 7-SEG
        PORTA = state;

        //SEND THE CODE OF ONE OF THE DIGITS
        if(i == 1)
            PORTD = CODE1[digits[i]] | 0b10000000;
        else
            PORTD = CODE1[digits[i]];

        //UPDATE THE STATE FOR NEXT TIME
        state = state >> 1;

        if (++i == 3) {
            i = 1;
            state = 0b00000010;
        }
    }
}

void setup(void) {

    InitLCD(); //Initialize LCD
    DispRomStr(Ln1Ch0, (ROM) "Voltage = _._");

    ADCON0 = 0b00001101; //A/D on, Select channel 3
    ADCON1 = 0b00001011; //Vref+=Vdd=5v, Vref-=Vss=0v, RA3/AN3 is analog
    ADCON2 = 0b00010001; //Left justified, Speed=Fosc/8, Tacq = 4 Tad

    //Enable interrupt globally
    INTCONbits.GIE = 1;

    T0CON = 0b11000100; //Ps = 32
    TMR0L = 256 - 250;  //250*32 = 8000us = 8ms

    //Enable interrupt for Timer0
    INTCONbits.TMR0IE = 1;

    //Data port (PORTD) should be set as output
    TRISD = 0x00;

    //Sinaling pins (RA2, RA1 and RA0) should be set as output
    TRISA = 0b11111000;

    i = 1;
    v = 0;
    Bin2Bcd(v, digits);
    state = 0b00000010;
	
	//Display result on LCD
	Bin2Asc(v, digitsAscii); //Convert v into ascii digits
	DispVarStr(&digitsAscii[1], Ln1Ch10, 1); //Display the first digit
	DispVarStr(&digitsAscii[2], Ln1Ch12, 1); //Display the second digit
}
