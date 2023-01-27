#include 	<p18cxxx.h>
#include	<LCD4PORTC.h>

char digits[3];
unsigned char delay;

void Setup(void);

void main(void) {
    Setup();
    while (1) {

        ADCON0bits.GO = 1;
        while (ADCON0bits.NOT_DONE);
        delay = ADRESH;

        //If we want the delay between 0 and 100
        //delay = ((unsigned int) 100 * ADRESH) / 256;
        
        if (delay == 0) delay = 1;

        Bin2Asc(delay, digits);
        DispVarStr(digits, Ln1Ch6, 3);

        Delay10KTCYx(delay);
        PORTDbits.RD0 = !PORTDbits.RD0;
    }
}

void Setup(void) {
    InitLCD();
    DispRomStr(Ln1Ch0, (ROM) "Delay:___ x 10ms");
    ADCON0 = 0b00000001; //A/D on, Select channel 0
    ADCON1 = 0b00001011; //Vref+=Vdd=5v, Vref-=Vss=0v, RA0/AN0 is analog
    ADCON2 = 0b00010001; //Left justified, Speed=Fosc/8, Tacq = 4 Tad
    TRISDbits.RD0 = 0;
}
