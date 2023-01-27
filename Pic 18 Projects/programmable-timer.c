#include <p18cxxx.h>
#include <BCDlib.h>
#include <delays.h>
#include <EEPROM.h>

//  Neat definitions for better readability of the program
#define     DEVICE     PORTEbits.RE0

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

//  Max value for the below timer is 255 (0xFF)
unsigned char timer;

void setup(void);
void turnOn(void);

void main() {

    setup();

    while (1) {

        if(INTCONbits.INT0IF) {		//Handle up button
            INTCONbits.INT0IF = 0;      //Acknowledge event
            timer++;                    //Increment timer
            Bin2Bcd(timer, digits);     //Split number into digits
            //Update display
            PORTC = (digits[1] << 4) | digits[2];  //Combine 2 digits into single byte
            PORTD = digits[0];  		//Most significant digit
        }

        else if(INTCON3bits.INT1IF) {	//Handle down button
            INTCON3bits.INT1IF = 0;	//Acknowledge event
            timer--;                    //Decrement timer
            Bin2Bcd(timer, digits);     //Split number into digits
            //Update display
            PORTC = (digits[1] << 4) | digits[2];  //Combine 2 digits into single byte
            PORTD = digits[0];  		//Most significant digit
        }

	else if(INTCON3bits.INT2IF) {	//Handle down button
            INTCON3bits.INT2IF = 0;	//Acknowledge event
            //Don't turn on the device if timer is 0
            if(timer != 0) {
                Wrt2EE(timer, 0x00); //Save the value to EEPROM for later use
                turnOn();
            }
        }
    }
}

void turnOn() {

    DEVICE = 1;    //Turn on the device

    do {
        Delay10KTCYx(100);  //Wait for one second
        timer--;
        Bin2Bcd(timer, digits);
        PORTC = (digits[1] << 4) | digits[2];
        PORTD = digits[0];
    } while(timer > 0);

    DEVICE = 0;    //Turn off the device
}

void setup() {

    INTCON2bits.RBPU = 0;       //enable internal pull-ups on portb
    ADCON1 = 0x0F;              //all pins should be digital

    TRISC = 0x00;		//All PORTC pins are output
    TRISD &= 0xF0;		//Low part of PORTD is output
    TRISEbits.RE0 = 0x00;	//RE0 of PORTE is output

    DEVICE = 0;                             //Make sure the led is off

    //timer = 0;                            //Initial value of timer
    ReadEE(0x00, &timer);                   //Remember the last programmed value
    Bin2Bcd(timer, digits);                 //Split number into digits
    //Display initial value of timer
    PORTC = (digits[1] << 4) | digits[2];   //Combine 2 digits into single byte
    PORTD = digits[0];                      //Most significant digit

    INTCON2bits.INTEDG0 = 0;    //INT0IF should react to falling edge
    INTCON2bits.INTEDG1 = 0;    //INT1IF should react to falling edge
    INTCON2bits.INTEDG2 = 0;    //INT2IF should react to falling edge
}