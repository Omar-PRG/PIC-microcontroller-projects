 
/*Programme canevas de base pour démarrer une application en C
avec l'outil HI-TECH Software PICC 
sur la carte PICDEM 2 PLUS DEMO BOARD */

#include "pic.h"		// vos headers associés
#include "pic168xa.h"		// à vos projets

//#include <stdio.h> 
#define bit(x) (1<<(x))

// __CONFIG(HS & WDTDIS &  BOREN &  LVPDIS );


char	debug	@0x70;		// éviter conflits avec ICD3


void allumage(int duree)
{
   int i;
   for(i=0; i<duree; i++)
   {
     // Augmente la lumminosité progressivement en fonction de la duree
             //  Agir sur alpha
   }

}

void init_port(void)
{
  TRISA=0x10;
  TRISB=0x01;
  TRISC=0x00;
}

void init_timer2(void)

{
   T2CON=0x07;
   PR2=249;
}

void init_CCP1(void)
{
  CCP1CON=0x0C;
  CCPR1L=40;
}

void init_timer0(void)
{
 T0CS=0;
 T0SE=0;
 PSA=0;
 PS2=0; PS1=0; PS0=1;
 TMR0=6;
 T0IF=0;
}

	
void tempo_1_ms(void)
{
  init_timer0();
  while(!T0IF); 
  T0IF=0;
  TMR0=6;
}

void tempo_p_ms(int delay)
{
   int i;
   for(i=0; i<delay; i++)
       tempo_1_ms();
}
void CCP(int alpha)
{
   CCP1CON=0b00001100;
   CCPR1L=2.5*alpha;

}


void main(void)

{
   init_port();
   init_timer2();
   RC2=0;
   int cpt1=0; 
while(1)
{
   while(!RB0)
   {
       cpt1++;
       CCP(5*cpt1);
       tempo_p_ms(500);
   } 
    
   while(!RA4)
   {
      do
      {
       cpt1--;
       CCP(5*cpt1);
       tempo_p_ms(500);
      }while(cpt1>=0);
   } 
 } 
   RC2 = 0;
 }



  