// fonctions de pilotage du LCD en 4 bits mode

#include 	"pic.h"			// vos headers associ�s
#include 	"pic168xa.h"		// � vos projets
#include	"lcdbt.h"
#include    "string.h"

// affectation du LCD sur le PORTD
#define 	LCD_PORT		PORTD
#define 	LCD_PORT_TRIS	TRISD

// c�blage hardware du LCD sur la carte PICDEM 2 PLUS
// quartet fort du PORTD
#define 	RS				RD4 
#define 	RW				RD5	
#define 	EN			    RD6	
#define 	VCC				RD7	

// le quartet faible du PORTD RD3 � RD0 est reli� 
// respectivement sur DB7 � DB4 du LCD
// pas de define � faire car lecture ou ecriture
// sur les 4 bits � la fois

// pour la configuration du PORTD 0 = Output et 1 = Input
#define 	RS_TRIS			TRISD4 
#define 	RW_TRIS			TRISD5	
#define 	EN_TRIS			TRISD6	
#define 	VCC_TRIS		TRISD7	

// rep�rage du Busy_flag
#define 	BUSY_FLAG		0x80


// les prototypes de fonctions
void tempo_1_ms(void);
void tempo_N_ms(int);
void init_PORTD(void);
void allume_LCD(void);
unsigned char lecture_commande (void);
void attente_bf(void);
void ecriture_commande(char);
void init_LCD(void);
void print_char(char);					// fonction � �crire		
void print_string(char *);				// fonction � �crire
void goto_ligne_1(void);				// fonction � �crire				
void goto_ligne_2(void);				// fonction � �crire
void curseur_droite(void);				// fonction � �crire
void curseur_gauche(void);				// fonction � �crire
void ecran_droite(void);				// fonction � �crire
void ecran_gauche(void);				// fonction � �crire
void go_to (int);					// fonction � �crire
void efface(void);					// fonction � �crire




//*************************************************************
// fonctions de temporisation utilisant le TIMER0
// voir dans le polycopi� de cours figure VIII.74
//*************************************************************
void tempo_1_ms(void)
{
		while(!T0IF);				// on attend que T0IF passe � 1
		T0IF=0;
}
//*************************************************************
void tempo_N_ms(int N)
{
		// initialisation de OPTION 
		OPTION=OPTION & 0b11000001;
		TMR0=6;					// pour avoir 1ms pour tempo_1_ms
		T0IF=0;					// efface le flag T0IF
	
		while(N--)	tempo_1_ms();		// appelle N fois tempo_1_ms
}
//*************************************************************
//*************************************************************
// fonctions de pilotage du LCD
//*************************************************************

//*************************************************************
// direction des lignes du PORTD
//*************************************************************
void init_PORTD(void)
{
RS_TRIS =0;
RW_TRIS =0;
EN_TRIS	=0;
VCC_TRIS =0;
}

//*************************************************************
// pour allumer le LCD
//*************************************************************
void allume_LCD(void)
{ 
	init_PORTD;
	VCC	=1;	
}


//*************************************************************
// pour lire le registre IR
// renvoie le contenu de IR
//*************************************************************
unsigned char lecture_commande (void)
{
	unsigned char commande, quartet_commande;
	LCD_PORT_TRIS=0x0F;				// ici RD3 � RD0 en entr�e
	RW=1;						// lecture
	RS=0;						// de IR
	tempo_N_ms(2);					// stabilisation de RS (1ms avec TIMER2)
	EN=1;						// front montant valide le LCD
	quartet_commande=LCD_PORT;			// lecture qaurtet fort
	commande=((quartet_commande<<4)& 0xF0); 	// mis en place
	EN=0;						// front descendant fin lecture
	EN=1;						// front montant valide le LCD
	quartet_commande=LCD_PORT;			// lecture qaurtet faible
	commande=commande|(quartet_commande & 0x0F); 	// mise en place
	EN=0;						// front descendant	fin lecture
	RW=0;						// retour �criture
	LCD_PORT_TRIS=0x00;				// tout le PORT LCD en sortie
	return(commande);
}

//*************************************************************	
// fonction "bloquante" de test du BUSY FLAG
// attend que le BUSY FLAG passe � 0
//*************************************************************
void attente_bf(void) 
{
	while (lecture_commande( ) & BUSY_FLAG); //attend que BF passe � 0
}
		
//*************************************************************
// fonction d'envoi d'une commande dans IR
// avec test du busy flag
//*************************************************************
void ecriture_commande(char commande)
{
	attente_bf(); 				//attente que le busy flag oasse � 0
	RW=0;					// �criture
	RS=0;					// dans IR
	LCD_PORT=((commande>>4)&0x0F)|0x80;	// poids fort commande
										// avec maintien de VCC						
	EN=1;					// valide le LCD
	EN=0;					// fin de l'�criture

	LCD_PORT=(commande&0x0F)|0x80; 		// poids faible commande
									// avec maintien de VCC
	EN=1;					// valide le LCD
	EN=0;					// fin de l'�criture
}

//*************************************************************
// fonction pour initialiser le LCD 
// conforme � l'organigramme constructeur
//*************************************************************
void init_LCD(void)
{
	tempo_N_ms(30);			// 30 ms
	LCD_PORT_TRIS=0x00;		// PORT_LCD entier en sortie
	VCC=1;				// maintien VCC
	RS=0;
	EN=0;
	RW=0;
// fonction set DB7=0=RD3 DB6=0=RD2 DB5=1=RD1 DB4=1=RD0	
	LCD_PORT=LCD_PORT|0x03;
	EN=1;				// valide le LCD
	EN=0;				// fin de l'�criture
	tempo_N_ms(30);			// 30 ms				

// fonction set DB7=0=RD3 DB6=0=RD2 DB5=1=RD1 DB4=1=RD0	
	LCD_PORT=LCD_PORT|0x03;
	EN=1;				// valide le LCD
	EN=0;				// fin de l'�criture
	tempo_N_ms(30);			// 30 ms				

// fonction set DB7=0=RD3 DB6=0=RD2 DB5=1=RD1 DB4=1=RD0	
	LCD_PORT=LCD_PORT|0x03;
	EN=1;				// valide le LCD
	EN=0;				// fin de l'�criture
	tempo_N_ms(30);			// 30 ms	

// DL = 0 4 bits interface
// N=1 afficheur 2 lignes
// F=0 5*7 pixels/char
	ecriture_commande(0x28);
	
// Display on, curseur on et clignotant
	ecriture_commande(0x0F);	

// commande d'effacement du LCD
	ecriture_commande(0x01);
	
// Mode de fonctionnement en entr�e (entry mode set)
// incr�menation automatique 
// pas de d�calage	
	ecriture_commande(0x06);
}

//*************************************************************
// fonction d'envoi un caract�re dans DR
// on envoie le code ASCII du caract�re
//*************************************************************
void print_char(char car)
{

	attente_bf(); 				//attente que le busy flag oasse � 0
	RW=0;					// �criture
	RS=1;					// dans DR
	LCD_PORT=((car>>4)&0x0F)|0x90;	// poids fort car avec maintien de VCC						
//avec le d�calage de 4 vers la droite puis l'op�ration bool�nne ET 
//si on veut maintenir le VCC il faut faire un OU avec 10010000. 	

	EN=1;					// valide le LCD
	EN=0;					// fin de l'�criture

	LCD_PORT=(car&0x0F)|0x90; 		// poids faible car
									// avec maintien de VCC
	EN=1;					// valide le LCD
	EN=0;					// fin de l'�criture
}


//*************************************************************
// fonction d'envoi d'une cha�ne de carat�res vers le LCD 
// l'argument est un pointeur sur la cha�ne
//*************************************************************
void print_string(char * s)
{
	for(int i=0 ; i < strlen(s) ; i++)
	{
		print_char(s[i]);
	}
}

//*************************************************************
// fonctions de gestions du curseur du LCD
//*************************************************************
// curseur en d�but de la ligne 1
//*************************************************************
void goto_ligne_1(void)	
{
//car on veut mettre � 0 tout le reste donc on fait un ET puis un OU 
//avec 10000000
	ecriture_commande(0x80);

}

//*************************************************************		
// curseur en d�but de la ligne 2
//*************************************************************
void goto_ligne_2(void)	
{

//car on veut mettre � 0 tout le reste donc on fait un ET puis un OU 
//avec 01000000
	ecriture_commande(0x40+0x80); //Car on a un offset de 0x80

}	
//*************************************************************
// d�calage � droite du curseur
//*************************************************************
void curseur_droite(void)
{
//car on veut d�caler d'un cran le curseur avec 0001 0100 
	ecriture_commande(0x14);
}
	
//*************************************************************
// d�calage � gauche du curseur
//*************************************************************
void curseur_gauche(void)
{
//car on veut d�caler d'un cran le curseur avec 0001 0000 
	ecriture_commande(0x10);
}
	
//*************************************************************
// d�calage � droite de l'�cran
//*************************************************************
void ecran_droite(void)
{

//car on veut d�caler l'�cran avec 0001 1100 
	ecriture_commande(0b00011100);

}
	
//*************************************************************
// d�calage � gauche du curseur
//*************************************************************
void ecran_gauche(void)
{

//car on veut d�caler l'�cran avec 0001 1000 
	ecriture_commande(0b00011000);
}	

//*************************************************************
// place le curseur sur la position x
// x = 1 � 16 	:ligne 1
// x = 17 � 32 	:ligne 2
//*************************************************************
void go_to (int x)
{
	  if ((x>=1)&(x<=16))
	  {
	   ecriture_commande(0x80+x);
	  }
	  else if ((x>=17)&(x<=32))
	  {
		ecriture_commande(x+0xC0-17);
	  }
}
//*************************************************************
// efface le LCD
//*************************************************************
void efface(void)
{

ecriture_commande(0b00000001);

}
		
//*************************************************************
//*************************************************************

