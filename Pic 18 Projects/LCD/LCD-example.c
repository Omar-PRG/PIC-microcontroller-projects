#include        <p18cxxx.h>
#include        <delays.h>
#include        <LCD8lib.h>

char digits1[3];
char digits2[5];
unsigned int counter = 0;
//Dummy value for voltage, just an example
unsigned int v = 428; //4.28 volt
char message [] = "voltage = _.__ v";

void main() {

    InitLCD();

    //Display a ROM string (stored in program memory)
    DispRomStr(Ln1Ch0, (ROM) "Count = ");

    //Strings in data memory (RAM) can be changed during runtime
    message[0] = 'V';
    DispRamStr(Ln2Ch0, message);

    //We need the extended version of Bin2Asc because v unsigned int
    Bin2AscE(v, digits2);
    DispVarStr(&digits2[2], Ln2Ch10, 1);
    DispVarStr(&digits2[3], Ln2Ch12, 2);

    while (1) {
        Delay10KTCYx(50);
        counter++;
        Bin2Asc(counter, digits1);
        //&digits[0] and digits are the same
        DispVarStr(digits1, Ln1Ch8, 3);
    }
}
