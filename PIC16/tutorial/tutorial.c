 
/*Tutorial en C avec l'outil HI-TECH Software PICC 
sur la carte PICDEM 2 PLUS */

#include "pic.h"			// vos headers associés
#include "pic168xa.h"		// à vos projets

//#include <stdio.h> 

//#define bit(x) (1<<(x))		// à commenter
#define D2 2 // identifiant pour la led D2
#define D3 3 // identifiant pour la led D3
#define D4 4 // identifiant pour la led D4
#define D5 5 // identifiant pour la led D5
#define on 1 // pour allumer
#define off 0 // pour éteindre


__CONFIG(HS & WDTDIS &  BOREN &  LVPDIS );

char	debug	@0x70;		// éviter conflits avec ICD3

// commenter cette fonction
/*void init_port(void)
{
	TRISB=TRISB|bit(0);		// commenter cette ligne et corriger la
}
*/
// commenter cette fonction
/*void allume_led_D2(void)
{
	RB0 = 1;				// commenter cette ligne
}
*/
// commenter cette fonction
/*d eteint_led_D2(void)
{
	RB0 = 0;				// commenter cette ligne	
}
*/
// temporsiation fixe de 1 s
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
TRISB=0;
PORTB=0;
}

void led (unsigned char led, unsigned char action)
{
	if(led==2 && action==1) RB0=1;
	if(led==3 && action==1) RB1=1;
	if(led==4 && action==1) RB2=1;
	if(led==5 && action==1) RB3=1;

	if(led==2 && action==0) RB0=0;
	if(led==3 && action==0) RB1=0;
	if(led==4 && action==0) RB2=0;
	if(led==5 && action==0) RB3=0;

}

void chenillard (void)
{
init_portb();

	while(1)
	{
		led(D2,on);
		led(D5,off);
		tempo_p_ms(100);
		led(D2,off);
		led(D3,on);
		tempo_p_ms(100);
		led(D3,off);
		led(D4,on);
		tempo_p_ms(100);
		led(D4,off);
		led(D5,on);
		tempo_p_ms(100);
	}
}

void init_porta (void)
{
TRISA=1;
}

void minuterie (void)
{
init_porta();
init_portb();
unsigned int compteur = 0;

while(RA4);

	while(compteur<10)
	{
	led(D2,on);
	tempo_p_ms(500);
	if(!RA4) compteur=10;
	compteur++;
	}
led(D2,off);
tempo_p_ms(500);
}


void main(void)

{

//chenillard();
minuterie();

}




	