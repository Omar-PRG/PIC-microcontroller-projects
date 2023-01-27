#include <p18cxxx.h>
#include <BCDlib.h>

//  Neat definitions for better readability of the program
#define     LED     PORTEbits.RE0
#define     UP      PORTBbits.RB0
#define     DOWN    PORTBbits.RB1
#define     RESET   PORTBbits.RB2

//  We are working in binary mode but in order to display the number
//      in decimal, we convert it to 8-bit BCD mode with Bin2Bcd()
//  Each decimal digit is represented by an 8-bit binary code
//  We store the 8-bit codes in an array (digits)
//  For example, number 236 will be stored as follow:
//      digits[0] = 02 (0b00000010)
//      digits[1] = 03 (0b00000011)
//      digits[2] = 06 (0b00000110)
//  In this example, the number is displayed in decimal
//  We need 3 7SEG display (one for each digit)

char digits[3]; //Array to hold the digits of the number

//  Max value for the below counter is 255 (0xFF)
unsigned char counter;

void setup(void);

void main() {

    setup();

    while (1) {

        //Check if button is pressed
        if (!UP) {
            counter++;                  //Increment counter
            Bin2Bcd(counter, digits);   //Split number into digits
            //Update display
            PORTC = (digits[1] << 4) | digits[2];  //Combine 2 digits into single byte
            PORTD = digits[0];  //Most significant digit
            while(!UP);         //Wait for button release
        }
        //Check if button is pressed
        else if(!DOWN) {
            counter--;                  //Decrement counter
            Bin2Bcd(counter, digits);   //Split number into digits
            //Update display
            PORTC = (digits[1] << 4) | digits[2];  //Combine 2 digits into single byte
            PORTD = digits[0];  //Most significant digit
            while(!DOWN);       //Wait for button release
        }
        //Check if button is pressed
        else if(!RESET) {
            counter = 0;                //Reset counter
            Bin2Bcd(counter, digits);   //Split number into digits
            //Update display
            PORTC = (digits[1] << 4) | digits[2];  //Combine 2 digits into single byte
            PORTD = digits[0];  //Most significant digit
            while(!RESET);      //Wait for button release
        }

        //For all the values from 20 and above, turn on the led.
        if (counter >= 20) LED = 1;
        else LED = 0;
    }
}

void setup() {

    TRISC = 0x00;       //All PORTC pins are output
    TRISD = 0x00;       //All PORTD pins are output
    TRISE = 0x00;       //All PORTE pins are output

    counter = 0;                            //Initial value of counter
    Bin2Bcd(counter, digits);               //Split number into digits
    //Display initial value of counter
    PORTC = (digits[1] << 4) | digits[2];   //Combine 2 digits into single byte
    PORTD = digits[0];                      //Most significant digit

    LED = 0;            //Make sure the led is off
}