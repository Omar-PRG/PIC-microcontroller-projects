#include    <p18cxxx.h>
#include    <delays.h>
#include    <BCDlib.h>

unsigned char counter;

char digits[3];

void setup(void);

void main(void)
{
    setup();

    while (1) {
        Delay10KTCYx(100); //Delay of 10^6 cycles = 1 second
        counter++;
        Bin2Bcd(counter, digits);
        PORTC = (digits[1] << 4) | digits[2];
        PORTD = digits[0];
    }
}

void setup(void) {
    TRISC = 0x00;   //PORTC output
    TRISD = 0x00;   //PORTD output
    counter = 0;
    Bin2Bcd(counter, digits);
    PORTC = (digits[1] << 4) | digits[2];
    PORTD = digits[0];
}
