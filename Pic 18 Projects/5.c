#include <p18cxxx.h>
#include <BCDlib.h>

void setup(void);

char digits[3];

unsigned char score1;
unsigned char score2;

void main() {

    setup();

    while(1) {
        if(!PORTBbits.RB0) { //1 point
            score1 += 1;
            Bin2Bcd(score1, digits);
            PORTA = (digits[1] << 4) | digits[2];
            while(!PORTBbits.RB0);
        }
        else if(!PORTBbits.RB2) { //2 points
            score1 += 2;
            Bin2Bcd(score1, digits);
            PORTA = (digits[1] << 4) | digits[2];
            while(!PORTBbits.RB2);
        }
        else if(!PORTBbits.RB4) { //3 points
            score1 += 3;
            Bin2Bcd(score1, digits);
            PORTA = (digits[1] << 4) | digits[2];
            while(!PORTBbits.RB4);
        }

        else if(!PORTDbits.RD0) { //1 point
            score2 += 1;
            Bin2Bcd(score2, digits);
            PORTC = (digits[1] << 4) | digits[2];
            while(!PORTDbits.RD0);
        }
        else if(!PORTDbits.RD2) { //2 points
            score2 += 2;
            Bin2Bcd(score2, digits);
            PORTC = (digits[1] << 4) | digits[2];
            while(!PORTDbits.RD2);
        }
        else if(!PORTDbits.RD4) { //3 points
            score2 += 3;
            Bin2Bcd(score2, digits);
            PORTC = (digits[1] << 4) | digits[2];
            while(!PORTDbits.RD4);
        }

    }
}

void setup(void) {
    TRISC = 0x00;
    PORTC = 0x00;
    TRISA = 0x00;
    PORTA = 0x00;
    ADCON1 = 0X0F;
    score1 = 0;
    score2 = 0;
    INTCON2bits.RBPU = 0;
}
