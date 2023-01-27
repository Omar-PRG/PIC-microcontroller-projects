#include <p18cxxx.h>
#include <BCDlib.h>

unsigned char count;
char digits[3];

void setup(void);

void main() {

    setup();

    while(1) {

        if(INTCONbits.INT0IF) {
            INTCONbits.INT0IF = 0;

            while(count < 100) {

                PORTD &= 0xF0;

                if(count < 25) PORTDbits.RD3 = 1;
                else if(25 <= count <50) PORTDbits.RD2 = 1;
                else if(50 <= count <75) PORTDbits.RD1 = 1;
                else if(75 <= count) PORTDbits.RD0 = 1;

                Delay10KTCYx(100);
                count++;
                Bin2Bcd(count, digits);
                PORTC = (digits[1] << 4) | digits[2];
            }

            count = 0;
            PORTD = 0xFF; //all leds on
        }
    }
}

void setup(void) {
    TRISC = 0x00;
    PORTC = 0x00;
    TRISD &= 0xF0;
    PORTD &= 0xF0;

    ADCON1 = 0x0F;          //All digital
    INTCON2bits.RBPU = 0;
    INTCON2bits.INTEDG0 = 0;
    count = 0;
}
