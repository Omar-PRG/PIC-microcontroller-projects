#include        <p18cxxx.h>
#include        <delays.h>
#include        <LCD4PORTC.h>

char digitsAscii[3];
unsigned char v;

void setup(void);

void main() {

    setup();

    while (1) {
        ADCON0bits.GO = 1;      //Start A/D measurement
        while(ADCON0bits.GO);   //Wait for A/D to finish
        v = ((unsigned int)50 * ADRESH + 25) / 256;

        //Display result on LCD
        Bin2Asc(v, digitsAscii); //Convert v into ascii digits
        DispVarStr(&digitsAscii[1], Ln1Ch10, 1); //Display the first digit
        DispVarStr(&digitsAscii[2], Ln1Ch12, 1); //Display the second digit
    }
}

void setup(void) {

    InitLCD(); //Initialize LCD
    DispRomStr(Ln1Ch0, (ROM) "Voltage = _._");

    ADCON0 = 0b00001101; //A/D on, Select channel 3
    ADCON1 = 0b00001011; //Vref+=Vdd=5v, Vref-=Vss=0v, RA3/AN3 is analog
    ADCON2 = 0b00010001; //Left justified, Speed=Fosc/8, Tacq = 4 Tad

    v = 0;
    //Display result on LCD
    Bin2Asc(v, digitsAscii); //Convert v into ascii digits
    DispVarStr(&digitsAscii[1], Ln1Ch10, 1); //Display the first digit
    DispVarStr(&digitsAscii[2], Ln1Ch12, 1); //Display the second digit
}
