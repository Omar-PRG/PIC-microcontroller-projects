 
/*Programme canevas de base pour démarrer une application en C
avec l'outil HI-TECH Software PICC 
sur la carte PICDEM 2 PLUS DEMO BOARD */

#include "pic.h"		// vos headers associés
#include "pic168xa.h"		// à vos projets

//#include <stdio.h> 

#define bit(x) (1<<(x))

// __CONFIG(HS & WDTDIS &  BOREN &  LVPDIS );


char	debug	@0x70;		// éviter conflits avec ICD3



void write_data_eeprom (char offset, char valeur)
{
EEADR = offset; // charger le registre SFR EEADR avec l’offset de la case EEPROM
EEADRH = (offset>>8)& 0x1F;

EEDATA = valeur; // charger le registre SFR EEDATA avec la valeur
EEPGD = 0;	// sélectionner la mémoire EEPROM de données : EEPGD = 0
WREN = 1; // ouverture d’une « fenêtre » d’écriture
GIE=0; // masquer toutes les interruptions
//5 instructions fournies apr microchip

EECON2=0x55;
EECON2=0xAA;
WR=1;


GIE = 1;
WREN = 0;
while(WR);
}


char read_data_eeprom (char offset)
{
char data;
EEADR = offset;
EEADRH = (offset>>8)& 0x1F;
EEPGD = 0;
RD=1;
data=EEDATA;
return data;

}

char write_and_verify_data_eeprom (char offset, char valeur)
{
	write_data_eeprom(offset,valeur);
	if(read_data_eeprom(offset)==valeur)
	{
		return 0x01;
	}	
	else 
	{
		return 0x00;
	}
}

char resultat;

void main(void)

{

resultat = write_and_verify_data_eeprom(44,'H');


}	

	
