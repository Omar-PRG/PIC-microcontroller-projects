 
/*Programme canevas de base pour démarrer une application en C
avec l'outil HI-TECH Software PICC 
sur la carte PICDEM 2 PLUS DEMO BOARD */

#include "pic.h"		// vos headers associés
#include "pic168xa.h"		// à vos projets

//#include <stdio.h> 

//#define bit(x) (1<<(x))

// __CONFIG(HS & WDTDIS &  BOREN &  LVPDIS );


char	debug	@0x70;		// éviter conflits avec ICD3

void tempo1ms(void)
{
	unsigned int i;
for(i=0;i<62;i++);

}

void tempo1s (void)
{
	unsigned int j;
	for(j=0;j<1000;j++)
	{
		tempo1ms();
	}
}

void tempo_p_ms (unsigned int ms)
{
	unsigned int i;
	for(i=0; i<ms; i++)
	{
	tempo1ms();
	}
}

void tempo_p_s (unsigned int s)
{
	unsigned int j;
	for(j=0; j<s; j++)
	{
	tempo1s();
	}
}

void init_portb (void)
{
TRISB=1;
}

void init_portc (void)
{
TRISC=0;
PORTC=0;
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

unsigned int compteur = 0;

void interrupt traitement_it (void)
{
	if(INTF && INTE)
	{
	compteur = compteur +1;	
	INTF=0;
	}
}



void main(void)

{
	GIE=1;
	INTF = 0;
	INTE = 1;
	INTEDG=1;

init_portb();
init_portc();

	while(1)
	{
 		if(compteur==5)
		{
			compteur=0;
			while(compteur<3)
			{
				buzzer_on();
			}
			buzzer_on();
			compteur = 0;

		}
	}
	
}