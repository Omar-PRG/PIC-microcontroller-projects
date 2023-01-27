 
// Programme canevas de base pour d�marrer une application en C
// avec l'outil HI-TECH Software PICC 
// sur la carte PICDEM 2 PLUS DEMO BOARD 

#include "pic.h"			// vos headers associ�s
#include "pic168xa.h"		// � vos projets
#include "lcdbt.h"
#include    "string.h"

//#include <stdio.h> 

#define bit(x) (1<<(x))

 __CONFIG(HS & WDTDIS &  BOREN &  LVPDIS );
int i;

void main(void)
{



	init_PORTD();				
	

allume_LCD();				
	


init_LCD();
	

char *message ="Bonjour les instru  ";



	print_string(message);			// initialise le LCD

	while(1)
	{
		ecran_gauche();
		
		tempo_N_ms(500);
    }
}
/*	print_char('A');			

	print_string("Le PIC 16F877");
	ecran_droite();
	ecran_gauche();
	ecran_droite();
	curseur_gauche();
		go_to(19);
	tempo_N_ms(3000);
	efface();*/				

/*for(i=1;i<17;i++)
	{
	go_to(i);					// fonction � �crire
	print_char(0xFF);
	tempo_N_ms(100);
	}
	go_to(17);
	print_string("   READY !!!"); 			// fonction � �crire
	
	while(1);	
}*/	

	
