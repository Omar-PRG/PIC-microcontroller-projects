 
/*Programme canevas de base pour d�marrer une application en C
avec l'outil HI-TECH Software PICC 
sur la carte PICDEM 2 PLUS DEMO BOARD */

#include "pic.h"		// vos headers associ�s
#include "pic168xa.h"		// � vos projets

//#include <stdio.h> 

//#define bit(x) (1<<(x))


 //__CONFIG(HS & WDTDIS &  BOREN &  LVPDIS );


char	debug	@0x70;		// �viter conflits avec ICD3

void init_can(void)
{
	PCFG0=0;
	PCFG1=0;
	PCFG2=0;
	PCFG3=0;
	
	ADFM = 0; //read adresh
	ADCS0 = 1;
	ADCS1 = 0;

	CHS0 = 0;
	CHS1 = 0;
	CHS2 = 0;

	ADON = 1;

}
void tempo15us (void)
{
	unsigned int i;
	for(i=0;i<4;i++);
}

unsigned char conversion (void)
{
	tempo15us;
	GODONE=1;
	while(GODONE);
	return ADRESH;
}

void init_port(void)
{
	TRISC=0x00;
	TRISA=0x01;
	TRISB=0x00;
	PORTB=0;
}

void buzzer_off (void)
{
RC2 = 0;
}

void buzzer_on (void)
{
RC2 = 1;
tempo_p_ms(1);
RC2 = 0;
tempo_p_ms(1);
}



void main(void)

{
unsigned char data;
	init_port();
	init_can();

	while(1)
	{
	data=conversion();
	PORTB=data;

	}

}	

	
