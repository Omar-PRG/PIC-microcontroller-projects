#include <p18cxxx.h>
#include <BCDlib.h>

unsigned char count;

void setup(void);

void main() {

    setup();

    while(1) {

        if(INTCONbits.INT0IF) {
            INTCONbits.INT0IF = 0;
            IncBcd(count)
            PORTC = (PORTC & 0xF0) | (count & 0x0F);
        }
        else if(INTCON3bits.INT2IF) {
            INTCON3bits.INT2IF = 0;
			PORTC = (c << 4) | (c & 0x0F);
            //If we want to remove the value from the 7-seg on the right
            //count = count << 4;
            //PORTC = count;
        }
    }
}

void setup(void) {
    TRISC = 0x00;
    PORTC = 0x00;
    INTCON2bits.RBPU = 0;   //Enable internal pull-ups
    ADCON1 = 0x0F;          //All digital
    count = 0;
    INTCON2bits.INTEDG0 = 1;
    INTCON2bits.INTEDG2 = 0;
}
