#include        <p18cxxx.h>
#include        <BCDlib.h>
#include        <delays.h>

#define     DEVICE  PORTEbits.RE0

/////////////////////////////////////////
//The 7-seg codes for numbers from 0 to 9

//If you connect a to RD0, b to RD1, c to RD2, ... DP to RD7
//This is the configuration used on the hardware (EasyPic v7)
char CODE1[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F};

//If you connect a to RD7, b to RD6, c to RD5, ... DP to RD0
char CODE2[] = {0xFC, 0x60, 0xDA, 0XF2, 0X66, 0XB6, 0XBE, 0XE0, 0XFE, 0XF6};
/////////////////////////////////////////

unsigned char state;
unsigned char i;
char digits[3];
unsigned char time, interruptCounter;
char start;

void setup(void);

void main() {

    setup();

    while (1) {
        //Nothing to do here...
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
        PORTD = CODE1[digits[i]];

        //UPDATE THE STATE FOR NEXT TIME
        state = state >> 1;

        if (++i == 3) {
            i = 0;
            state = 0b00000100;
        }

        if(--interruptCounter == 0) {

            interruptCounter = 125;

            if(start == 1) { //Are we counting?

                //Decrement time and update the array
                Bin2Bcd(--time, digits);

                //Turn off the device and stop counting
                if(time == 0) {
                    DEVICE = 0;
                    start = 0;
                }
            }
        }

    } else if (INTCONbits.INT0IF) { //UP
        INTCONbits.INT0IF = 0;
        Bin2Bcd(++time, digits);

    } else if (INTCON3bits.INT1IF) { //DOWN
        INTCON3bits.INT1IF = 0;
        Bin2Bcd(--time, digits);

    } else if (INTCON3bits.INT2IF) { //START
        INTCON3bits.INT2IF = 0;
        //Only start counting if timer is != 0
        if (time != 0) {
            //First thing to do is turn on the device
            DEVICE = 1;
            //Declare that we started the count down
            start = 1;
        }
    }
}

void setup(void) {

    //Enable interrupt globally
    INTCONbits.GIE = 1;

    //We use it to count how many times Timer0 issues an interrupt
    //If we go to interrupt 125 times, it means that 1 second has elapsed
    // 125 * 8 = 1000ms = 1 second
    interruptCounter = 125;

    T0CON = 0b11000100; //Ps = 32
    TMR0L = 256 - 250;  //250*32 = 8000us = 8ms

    //Enable interrupt for Timer0
    INTCONbits.TMR0IE = 1;

    //Enable internal pull-ups on PORTB
    INTCON2bits.RBPU = 0;

    //All pin edge flash should react to falling edge
    INTCON2bits.INTEDG0 = 0;
    INTCON2bits.INTEDG1 = 0;
    INTCON2bits.INTEDG2 = 0;

    //Enable interrupt for pin edge flags
    INTCONbits.INT0IE = 1;
    INTCON3bits.INT1IE = 1;
    INTCON3bits.INT2IE = 1;

    //Data port (PORTD) should be set as output
    TRISD = 0x00;

    //Sinaling pins (RA2, RA1 and RA0) should be set as output
    TRISA = 0b11111000;

    //Device/led pin should be set as output
    TRISEbits.RE0 = 0;

    i = 0;
    time = 0;
    Bin2Bcd(time, digits);
    state = 0b00000100;
    DEVICE = 0;
    start = 0; //Initial value 0: DO NOT START COUNTING

    //ALL PINS DIGITAL FOR PIC18F4520
    ADCON1 = 0x0F;

    //ALL PINS DIGITAL FOR PIC18F45K22
    //    ANSELA = 0x00;
    //    ANSELB = 0x00;
    //    ANSELC = 0x00;
    //    ANSELD = 0x00;
    //    ANSELE = 0x00;
}

