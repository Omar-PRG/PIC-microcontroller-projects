#include    <p18cxxx.h>

void setup(void);

void main(void) {
    setup();
	//Nothing here, Timer0 is used in interrupt mode
    while(1); //This allows us to do other things here in parallel
}

#pragma code ISR = 0x0008
#pragma interrupt ISR
void ISR(void) {

    INTCONbits.TMR0IF = 0; //Acknowledge interrupt event

    //Reload Timer0 with proper values for next rounds
    TMR0H = (65536 - 15625) / 256;
    TMR0L = (65536 - 15625) % 256;

    PORTC = ~PORTC; //Toggle the leds connected to PORTC
}

void setup(void) {
    TRISC = 0x00;
    PORTC = 0b10101010;

    //Configuring Timer0 with an interrupt every 0.25 seconds
    T0CON = 0b10000011;             // Ps = 16
    TMR0H = (65536 - 15625) / 256;  // n = N * Fcy / Ps
    TMR0L = (65536 - 15625) % 256;  // 15625 = 250000 * 1 / 16
    INTCONbits.GIE = 1;
    INTCONbits.TMR0IE = 1;
}