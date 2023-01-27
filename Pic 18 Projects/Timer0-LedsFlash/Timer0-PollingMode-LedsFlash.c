#include    <p18cxxx.h>

void setup(void);

void main(void) {

    setup();

    //Timer0 in polling mode is similar to using a delay functions,
    // For example in this case: Delay10KTCYx(25) => 0.25 seconds
    //The program will be blocked and you can't do other stuff.
    while(1) {

        //Wait for Timer0 to finish counting
        while(!INTCONbits.TMR0IF);

        //At this point TMR0IF is one. Set it back to zero.
        INTCONbits.TMR0IF = 0;

        //Reload Timer0 with proper values for next rounds
        TMR0H = (65536 - 15625) / 256;
        TMR0L = (65536 - 15625) % 256;

        PORTC = ~PORTC; //Toggle the leds connected to PORTC
    }
}

void setup(void) {
    TRISC = 0x00;
    PORTC = 0b10101010;

    //Configuring Timer0 to count 0.25 seconds
    T0CON = 0b10000011;             // Ps = 16
    TMR0H = (65536 - 15625) / 256;  // n = N * Fcy / Ps
    TMR0L = (65536 - 15625) % 256;  // 15625 = 250000 * 1 / 16
}