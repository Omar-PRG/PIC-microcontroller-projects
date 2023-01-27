#include <p18cxxx.h>
#include <BCDlib.h>

//  Neat definitions for better readability of the program
#define     LED     PORTEbits.RE0
#define     UP      PORTBbits.RB0
#define     DOWN    PORTBbits.RB1
#define     RESET   PORTBbits.RB2

//  We are working in binary mode
//  The value of the counter will be shown as is (in hex form)
//  Max value for the below counter is 255 (0xFF)
unsigned char counter;

void setup(void);

void main() {

    setup();

    while (1) {

        //Check if button is pressed
        if (!UP) { 
            counter++;          //Increment counter
            PORTC = counter;    //Update display
            while(!UP);         //Wait for button release
        }
        //Check if button is pressed
        else if(!DOWN) {
            counter--;          //Decrement counter
            PORTC = counter;    //Update display
            while(!DOWN);       //Wait for button release
        }
        //Check if button is pressed
        else if(!RESET) {
            counter = 0;		//Reset counter
            PORTC = counter;    //Update display
            while(!RESET);      //Wait for button release
        }

        //For all the values from 20 and above, turn on the led.
        //We compare with 20, but 14 (0x14) will be shown on the display.
        if (counter >= 20) LED = 1;
        else LED = 0;
    }
}

void setup() {

    TRISC = 0x00;       //All PORTC pins are output
    TRISE = 0x00;       //All PORTE pins are output

    counter = 0;		//Initial value of counter
    PORTC = counter;    //Display initial value for counter

    LED = 0;            //Make sure the led is off
}