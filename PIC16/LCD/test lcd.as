opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 5239"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 15 "G:\test lcd\test lcd.c"
	psect config,class=CONFIG,delta=2 ;#
# 15 "G:\test lcd\test lcd.c"
	dw 0x3FFE & 0x3FFB & 0x3FFF & 0x3F7F ;#
;BANK0:	_main->_print_string
;COMMON:	_print_string->_print_char
;COMMON:	_print_char->_attente_bf
;COMMON:	_attente_bf->_lecture_commande
;COMMON:	_lecture_commande->_tempo_N_ms
;COMMON:	_print_string->_strlen
	FNCALL	_main,_init_PORTD
	FNCALL	_main,_allume_LCD
	FNCALL	_main,_init_LCD
	FNCALL	_main,_print_string
	FNCALL	_main,_ecran_gauche
	FNCALL	_main,_tempo_N_ms
	FNCALL	_ecran_gauche,_ecriture_commande
	FNCALL	_print_string,_print_char
	FNCALL	_print_string,_strlen
	FNCALL	_init_LCD,_tempo_N_ms
	FNCALL	_init_LCD,_ecriture_commande
	FNCALL	_print_char,_attente_bf
	FNCALL	_ecriture_commande,_attente_bf
	FNCALL	_attente_bf,_lecture_commande
	FNCALL	_lecture_commande,_tempo_N_ms
	FNCALL	_tempo_N_ms,_tempo_1_ms
	FNROOT	_main
	global	_i
	global	_ADCON0
psect	text94,local,class=CODE,delta=2
global __ptext94
__ptext94:
_ADCON0  equ     31
	global	_ADRESH
_ADRESH  equ     30
	global	_CCP1CON
_CCP1CON  equ     23
	global	_CCP2CON
_CCP2CON  equ     29
	global	_CCPR1H
_CCPR1H  equ     22
	global	_CCPR1L
_CCPR1L  equ     21
	global	_CCPR2H
_CCPR2H  equ     28
	global	_CCPR2L
_CCPR2L  equ     27
	global	_FSR
_FSR  equ     4
	global	_INDF
_INDF  equ     0
	global	_INTCON
_INTCON  equ     11
	global	_PCL
_PCL  equ     2
	global	_PCLATH
_PCLATH  equ     10
	global	_PIR1
_PIR1  equ     12
	global	_PIR2
_PIR2  equ     13
	global	_PORTA
_PORTA  equ     5
	global	_PORTB
_PORTB  equ     6
	global	_PORTC
_PORTC  equ     7
	global	_PORTD
_PORTD  equ     8
	global	_PORTE
_PORTE  equ     9
	global	_RCREG
_RCREG  equ     26
	global	_RCSTA
_RCSTA  equ     24
	global	_SSPBUF
_SSPBUF  equ     19
	global	_SSPCON
_SSPCON  equ     20
	global	_STATUS
_STATUS  equ     3
	global	_T1CON
_T1CON  equ     16
	global	_T2CON
_T2CON  equ     18
	global	_TMR0
_TMR0  equ     1
	global	_TMR1H
_TMR1H  equ     15
	global	_TMR1L
_TMR1L  equ     14
	global	_TMR2
_TMR2  equ     17
	global	_TXREG
_TXREG  equ     25
	global	_ADCS0
_ADCS0  equ     254
	global	_ADCS1
_ADCS1  equ     255
	global	_ADDEN
_ADDEN  equ     195
	global	_ADGO
_ADGO  equ     250
	global	_ADIF
_ADIF  equ     102
	global	_ADON
_ADON  equ     248
	global	_BCLIF
_BCLIF  equ     107
	global	_CARRY
_CARRY  equ     24
	global	_CCP1IF
_CCP1IF  equ     98
	global	_CCP1M0
_CCP1M0  equ     184
	global	_CCP1M1
_CCP1M1  equ     185
	global	_CCP1M2
_CCP1M2  equ     186
	global	_CCP1M3
_CCP1M3  equ     187
	global	_CCP1X
_CCP1X  equ     189
	global	_CCP1Y
_CCP1Y  equ     188
	global	_CCP2IF
_CCP2IF  equ     104
	global	_CCP2M0
_CCP2M0  equ     232
	global	_CCP2M1
_CCP2M1  equ     233
	global	_CCP2M2
_CCP2M2  equ     234
	global	_CCP2M3
_CCP2M3  equ     235
	global	_CCP2X
_CCP2X  equ     237
	global	_CCP2Y
_CCP2Y  equ     236
	global	_CHS0
_CHS0  equ     251
	global	_CHS1
_CHS1  equ     252
	global	_CHS2
_CHS2  equ     253
	global	_CKP
_CKP  equ     164
	global	_CMIF
_CMIF  equ     110
	global	_CREN
_CREN  equ     196
	global	_DC
_DC  equ     25
	global	_EEIF
_EEIF  equ     108
	global	_FERR
_FERR  equ     194
	global	_GIE
_GIE  equ     95
	global	_GODONE
_GODONE  equ     250
	global	_INTE
_INTE  equ     92
	global	_INTF
_INTF  equ     89
	global	_IRP
_IRP  equ     31
	global	_OERR
_OERR  equ     193
	global	_PD
_PD  equ     27
	global	_PEIE
_PEIE  equ     94
	global	_PSPIF
_PSPIF  equ     103
	global	_RA0
_RA0  equ     40
	global	_RA1
_RA1  equ     41
	global	_RA2
_RA2  equ     42
	global	_RA3
_RA3  equ     43
	global	_RA4
_RA4  equ     44
	global	_RA5
_RA5  equ     45
	global	_RB0
_RB0  equ     48
	global	_RB1
_RB1  equ     49
	global	_RB2
_RB2  equ     50
	global	_RB3
_RB3  equ     51
	global	_RB4
_RB4  equ     52
	global	_RB5
_RB5  equ     53
	global	_RB6
_RB6  equ     54
	global	_RB7
_RB7  equ     55
	global	_RBIE
_RBIE  equ     91
	global	_RBIF
_RBIF  equ     88
	global	_RC0
_RC0  equ     56
	global	_RC1
_RC1  equ     57
	global	_RC2
_RC2  equ     58
	global	_RC3
_RC3  equ     59
	global	_RC4
_RC4  equ     60
	global	_RC5
_RC5  equ     61
	global	_RC6
_RC6  equ     62
	global	_RC7
_RC7  equ     63
	global	_RCIF
_RCIF  equ     101
	global	_RD0
_RD0  equ     64
	global	_RD1
_RD1  equ     65
	global	_RD2
_RD2  equ     66
	global	_RD3
_RD3  equ     67
	global	_RD4
_RD4  equ     68
	global	_RD5
_RD5  equ     69
	global	_RD6
_RD6  equ     70
	global	_RD7
_RD7  equ     71
	global	_RE0
_RE0  equ     72
	global	_RE1
_RE1  equ     73
	global	_RE2
_RE2  equ     74
	global	_RP0
_RP0  equ     29
	global	_RP1
_RP1  equ     30
	global	_RX9
_RX9  equ     198
	global	_RX9D
_RX9D  equ     192
	global	_SPEN
_SPEN  equ     199
	global	_SREN
_SREN  equ     197
	global	_SSPEN
_SSPEN  equ     165
	global	_SSPIF
_SSPIF  equ     99
	global	_SSPM0
_SSPM0  equ     160
	global	_SSPM1
_SSPM1  equ     161
	global	_SSPM2
_SSPM2  equ     162
	global	_SSPM3
_SSPM3  equ     163
	global	_SSPOV
_SSPOV  equ     166
	global	_T0IE
_T0IE  equ     93
	global	_T0IF
_T0IF  equ     90
	global	_T1CKPS0
_T1CKPS0  equ     132
	global	_T1CKPS1
_T1CKPS1  equ     133
	global	_T1OSCEN
_T1OSCEN  equ     131
	global	_T1SYNC
_T1SYNC  equ     130
	global	_T2CKPS0
_T2CKPS0  equ     144
	global	_T2CKPS1
_T2CKPS1  equ     145
	global	_TMR0IE
_TMR0IE  equ     93
	global	_TMR0IF
_TMR0IF  equ     90
	global	_TMR1CS
_TMR1CS  equ     129
	global	_TMR1IF
_TMR1IF  equ     96
	global	_TMR1ON
_TMR1ON  equ     128
	global	_TMR2IF
_TMR2IF  equ     97
	global	_TMR2ON
_TMR2ON  equ     146
	global	_TO
_TO  equ     28
	global	_TOUTPS0
_TOUTPS0  equ     147
	global	_TOUTPS1
_TOUTPS1  equ     148
	global	_TOUTPS2
_TOUTPS2  equ     149
	global	_TOUTPS3
_TOUTPS3  equ     150
	global	_TXIF
_TXIF  equ     100
	global	_WCOL
_WCOL  equ     167
	global	_ZERO
_ZERO  equ     26
	global	_ADCON1
_ADCON1  equ     159
	global	_ADRESL
_ADRESL  equ     158
	global	_CMCON
_CMCON  equ     156
	global	_CVRCON
_CVRCON  equ     157
	global	_OPTION
_OPTION  equ     129
	global	_PCON
_PCON  equ     142
	global	_PIE1
_PIE1  equ     140
	global	_PIE2
_PIE2  equ     141
	global	_PR2
_PR2  equ     146
	global	_SPBRG
_SPBRG  equ     153
	global	_SSPADD
_SSPADD  equ     147
	global	_SSPCON2
_SSPCON2  equ     145
	global	_SSPSTAT
_SSPSTAT  equ     148
	global	_TRISA
_TRISA  equ     133
	global	_TRISB
_TRISB  equ     134
	global	_TRISC
_TRISC  equ     135
	global	_TRISD
_TRISD  equ     136
	global	_TRISE
_TRISE  equ     137
	global	_TXSTA
_TXSTA  equ     152
	global	_ACKDT
_ACKDT  equ     1165
	global	_ACKEN
_ACKEN  equ     1164
	global	_ACKSTAT
_ACKSTAT  equ     1166
	global	_ADCS2
_ADCS2  equ     1278
	global	_ADFM
_ADFM  equ     1279
	global	_ADIE
_ADIE  equ     1126
	global	_BCLIE
_BCLIE  equ     1131
	global	_BF
_BF  equ     1184
	global	_BOR
_BOR  equ     1136
	global	_BRGH
_BRGH  equ     1218
	global	_C1INV
_C1INV  equ     1252
	global	_C1OUT
_C1OUT  equ     1254
	global	_C2INV
_C2INV  equ     1253
	global	_C2OUT
_C2OUT  equ     1255
	global	_CCP1IE
_CCP1IE  equ     1122
	global	_CCP2IE
_CCP2IE  equ     1128
	global	_CIS
_CIS  equ     1251
	global	_CKE
_CKE  equ     1190
	global	_CM0
_CM0  equ     1248
	global	_CM1
_CM1  equ     1249
	global	_CM2
_CM2  equ     1250
	global	_CMIE
_CMIE  equ     1134
	global	_CSRC
_CSRC  equ     1223
	global	_CVR0
_CVR0  equ     1256
	global	_CVR1
_CVR1  equ     1257
	global	_CVR2
_CVR2  equ     1258
	global	_CVR3
_CVR3  equ     1259
	global	_CVREN
_CVREN  equ     1263
	global	_CVROE
_CVROE  equ     1262
	global	_CVRR
_CVRR  equ     1261
	global	_DA
_DA  equ     1189
	global	_EEIE
_EEIE  equ     1132
	global	_GCEN
_GCEN  equ     1167
	global	_IBF
_IBF  equ     1103
	global	_IBOV
_IBOV  equ     1101
	global	_INTEDG
_INTEDG  equ     1038
	global	_OBF
_OBF  equ     1102
	global	_PCFG0
_PCFG0  equ     1272
	global	_PCFG1
_PCFG1  equ     1273
	global	_PCFG2
_PCFG2  equ     1274
	global	_PCFG3
_PCFG3  equ     1275
	global	_PEN
_PEN  equ     1162
	global	_POR
_POR  equ     1137
	global	_PS0
_PS0  equ     1032
	global	_PS1
_PS1  equ     1033
	global	_PS2
_PS2  equ     1034
	global	_PSA
_PSA  equ     1035
	global	_PSPIE
_PSPIE  equ     1127
	global	_PSPMODE
_PSPMODE  equ     1100
	global	_RBPU
_RBPU  equ     1039
	global	_RCEN
_RCEN  equ     1163
	global	_RCIE
_RCIE  equ     1125
	global	_RSEN
_RSEN  equ     1161
	global	_RW
_RW  equ     1186
	global	_SEN
_SEN  equ     1160
	global	_SMP
_SMP  equ     1191
	global	_SSPIE
_SSPIE  equ     1123
	global	_START
_START  equ     1187
	global	_STOP
_STOP  equ     1188
	global	_SYNC
_SYNC  equ     1220
	global	_T0CS
_T0CS  equ     1037
	global	_T0SE
_T0SE  equ     1036
	global	_TMR1IE
_TMR1IE  equ     1120
	global	_TMR2IE
_TMR2IE  equ     1121
	global	_TRISA0
_TRISA0  equ     1064
	global	_TRISA1
_TRISA1  equ     1065
	global	_TRISA2
_TRISA2  equ     1066
	global	_TRISA3
_TRISA3  equ     1067
	global	_TRISA4
_TRISA4  equ     1068
	global	_TRISA5
_TRISA5  equ     1069
	global	_TRISB0
_TRISB0  equ     1072
	global	_TRISB1
_TRISB1  equ     1073
	global	_TRISB2
_TRISB2  equ     1074
	global	_TRISB3
_TRISB3  equ     1075
	global	_TRISB4
_TRISB4  equ     1076
	global	_TRISB5
_TRISB5  equ     1077
	global	_TRISB6
_TRISB6  equ     1078
	global	_TRISB7
_TRISB7  equ     1079
	global	_TRISC0
_TRISC0  equ     1080
	global	_TRISC1
_TRISC1  equ     1081
	global	_TRISC2
_TRISC2  equ     1082
	global	_TRISC3
_TRISC3  equ     1083
	global	_TRISC4
_TRISC4  equ     1084
	global	_TRISC5
_TRISC5  equ     1085
	global	_TRISC6
_TRISC6  equ     1086
	global	_TRISC7
_TRISC7  equ     1087
	global	_TRISD0
_TRISD0  equ     1088
	global	_TRISD1
_TRISD1  equ     1089
	global	_TRISD2
_TRISD2  equ     1090
	global	_TRISD3
_TRISD3  equ     1091
	global	_TRISD4
_TRISD4  equ     1092
	global	_TRISD5
_TRISD5  equ     1093
	global	_TRISD6
_TRISD6  equ     1094
	global	_TRISD7
_TRISD7  equ     1095
	global	_TRISE0
_TRISE0  equ     1096
	global	_TRISE1
_TRISE1  equ     1097
	global	_TRISE2
_TRISE2  equ     1098
	global	_TRMT
_TRMT  equ     1217
	global	_TX9
_TX9  equ     1222
	global	_TX9D
_TX9D  equ     1216
	global	_TXEN
_TXEN  equ     1221
	global	_TXIE
_TXIE  equ     1124
	global	_UA
_UA  equ     1185
	global	_EEADR
_EEADR  equ     269
	global	_EEADRH
_EEADRH  equ     271
	global	_EEADRL
_EEADRL  equ     269
	global	_EEDATA
_EEDATA  equ     268
	global	_EEDATH
_EEDATH  equ     270
	global	_EECON1
_EECON1  equ     396
	global	_EECON2
_EECON2  equ     397
	global	_EEPGD
_EEPGD  equ     3175
	global	_RD
_RD  equ     3168
	global	_WR
_WR  equ     3169
	global	_WREN
_WREN  equ     3170
	global	_WRERR
_WRERR  equ     3171
psect	strings,class=CODE,delta=2,reloc=256
global __pstrings
__pstrings:
	global	stringdir,stringtab,__stringbase,stringjmp
stringtab:
;	String table - string pointers are 1 byte each
	movwf	(btemp)&07Fh
	btfss	(btemp)&07Fh,7
	goto	stringcode
	bcf	status,7
	btfsc	btemp&7Fh,0
	bsf	status,7
	movf	indf,w
	return
stringcode:
	movf	fsr,w
stringdir:
movwf btemp&07Fh
movlw high(stringdir)
movwf pclath
movf btemp&07Fh,w
stringjmp:
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	66	;'B'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	106	;'j'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	117	;'u'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	file	"test lcd.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_i:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initationation code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	??_init_PORTD
??_init_PORTD: ;@ 0x0
	global	?_init_PORTD
?_init_PORTD: ;@ 0x0
	global	?_allume_LCD
?_allume_LCD: ;@ 0x0
	global	??_strlen
??_strlen: ;@ 0x0
	global	??_allume_LCD
??_allume_LCD: ;@ 0x0
	global	?_tempo_N_ms
?_tempo_N_ms: ;@ 0x0
	global	??_tempo_N_ms
??_tempo_N_ms: ;@ 0x0
	global	?_tempo_1_ms
?_tempo_1_ms: ;@ 0x0
	global	??_tempo_1_ms
??_tempo_1_ms: ;@ 0x0
	global	tempo_N_ms@N
tempo_N_ms@N:	; 2 bytes @ 0x0
	ds	2
	global	??_lecture_commande
??_lecture_commande: ;@ 0x2
	ds	1
	global	??_ecran_gauche
??_ecran_gauche: ;@ 0x3
	global	??_init_LCD
??_init_LCD: ;@ 0x3
	global	lecture_commande@quartet_commande
lecture_commande@quartet_commande:	; 1 bytes @ 0x3
	ds	1
	global	??_print_string
??_print_string: ;@ 0x4
	global	??_main
??_main: ;@ 0x4
	global	strlen@s
strlen@s:	; 1 bytes @ 0x4
	global	lecture_commande@commande
lecture_commande@commande:	; 1 bytes @ 0x4
	ds	1
	global	??_attente_bf
??_attente_bf: ;@ 0x5
	global	?_lecture_commande
?_lecture_commande: ;@ 0x5
	global	strlen@cp
strlen@cp:	; 1 bytes @ 0x5
	ds	1
	global	??_ecriture_commande
??_ecriture_commande: ;@ 0x6
	global	?_attente_bf
?_attente_bf: ;@ 0x6
	global	??_print_char
??_print_char: ;@ 0x6
	global	?_strlen
?_strlen: ;@ 0x6
	ds	1
	global	print_char@car
print_char@car:	; 1 bytes @ 0x7
	global	ecriture_commande@commande
ecriture_commande@commande:	; 1 bytes @ 0x7
	ds	1
	global	?_print_string
?_print_string: ;@ 0x8
	global	?_main
?_main: ;@ 0x8
	global	?_ecran_gauche
?_ecran_gauche: ;@ 0x8
	global	?_print_char
?_print_char: ;@ 0x8
	global	?_ecriture_commande
?_ecriture_commande: ;@ 0x8
	global	?_init_LCD
?_init_LCD: ;@ 0x8
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	print_string@s
print_string@s:	; 1 bytes @ 0x0
	ds	1
	global	print_string@i
print_string@i:	; 2 bytes @ 0x1
	ds	2
	global	main@message
main@message:	; 1 bytes @ 0x3
	ds	1
;Data sizes: Strings 21, constant 0, data 0, bss 2, persistent 0 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      8      10
; BANK0           80      4       4
; BANK1           80      0       0
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:

;print_string@s	PTR unsigned char  size(1); Largest target is 21
;		 -> STR_1(CODE[21]), 
;?_strlen	unsigned int  size(1); Largest target is 21
;		 -> STR_1(CODE[21]), 
;main@message	PTR unsigned char  size(1); Largest target is 21
;		 -> STR_1(CODE[21]), 
;strlen@s	PTR const unsigned char  size(1); Largest target is 21
;		 -> STR_1(CODE[21]), 
;strlen@cp	PTR const unsigned char  size(1); Largest target is 21
;		 -> STR_1(CODE[21]), 


;Main: autosize = 0, tempsize = 0, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                1    0  816   0.00
;                                    3 BANK0    1
;         _init_PORTD
;         _allume_LCD
;           _init_LCD
;       _print_string
;       _ecran_gauche
;         _tempo_N_ms
;  _ecran_gauche                                      0    0  180   0.00
;  _ecriture_commande
;  _print_string                                      3    0  381   0.00
;                                    0 BANK0    3
;         _print_char
;             _strlen
;  _init_LCD                                          0    0  204   0.00
;         _tempo_N_ms
;  _ecriture_commande
;  _init_PORTD                                        0    0    0   0.00
;  _allume_LCD                                        0    0    0   0.00
;    _print_char                                      2    0  180   0.00
;                                    6 COMMO    2
;         _attente_bf
;    _strlen                                          6    2   99   0.00
;                                    0 COMMO    8
;    _ecriture_commande                               2    0  180   0.00
;                                    6 COMMO    2
;         _attente_bf
;      _attente_bf                                    1    0  132   0.00
;                                    5 COMMO    1
;   _lecture_commande
;        _lecture_commande                            3    0  132   0.00
;                                    2 COMMO    3
;         _tempo_N_ms
;          _tempo_N_ms                                0    2   24   0.00
;                                    0 COMMO    2
;         _tempo_1_ms
;            _tempo_1_ms                              0    0    0   0.00
; Estimated maximum call depth 6
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            E      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               E      8       A       1       71.4%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;BITSFR1              0      0       0       2        0.0%
;SFR1                 0      0       0       2        0.0%
;ABS                  0      0       E       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50      4       4       5        5.0%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50      0       0       7        0.0%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0       0       9        0.0%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0       E      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 19 in file "G:\test lcd\test lcd.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  message         1    3[BANK0 ] PTR unsigned char 
;		 -> STR_1(21), 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 17F/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       1       0       0       0
;      Temp:     0
;      Total:    1
; This function calls:
;		_init_PORTD
;		_allume_LCD
;		_init_LCD
;		_print_string
;		_ecran_gauche
;		_tempo_N_ms
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"G:\test lcd\test lcd.c"
	line	19
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;test lcd.c: 15: asm("\tpsect config,class=CONFIG,delta=2"); asm("\tdw ""0x3FFE & 0x3FFB & 0x3FFF & 0x3F7F");
;test lcd.c: 16: int i;
;test lcd.c: 18: void main(void)
;test lcd.c: 19: {
	
_main:	
	opt stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	23
	
l30000829:	
;test lcd.c: 23: init_PORTD();
	fcall	_init_PORTD
	line	26
;test lcd.c: 26: allume_LCD();
	fcall	_allume_LCD
	
l30000830:	
	line	30
;test lcd.c: 30: init_LCD();
	fcall	_init_LCD
	line	33
;test lcd.c: 33: char *message ="Bonjour les instru  ";
	movlw	((STR_1-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@message)
	
l30000831:	
	line	37
;test lcd.c: 37: print_string(message);
	movf	(main@message),w
	fcall	_print_string
	
l30000832:	
	line	41
;test lcd.c: 40: {
;test lcd.c: 41: ecran_gauche();
	fcall	_ecran_gauche
	
l30000833:	
	line	43
;test lcd.c: 43: tempo_N_ms(500);
	movlw	low(01F4h)
	movwf	(?_tempo_N_ms)
	movlw	high(01F4h)
	movwf	((?_tempo_N_ms))+1
	fcall	_tempo_N_ms
	goto	l30000832
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	45
	signat	_main,88
	global	_ecran_gauche
psect	text95,local,class=CODE,delta=2
global __ptext95
__ptext95:

; *************** function _ecran_gauche *****************
; Defined at:
;		line 295 in file "G:\test lcd\lcdbt.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_ecriture_commande
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text95
	file	"G:\test lcd\lcdbt.c"
	line	295
	global	__size_of_ecran_gauche
	__size_of_ecran_gauche	equ	__end_of_ecran_gauche-_ecran_gauche
;lcdbt.c: 294: void ecran_gauche(void)
;lcdbt.c: 295: {
	
_ecran_gauche:	
	opt stack 6
; Regs used in _ecran_gauche: [wreg+status,2+status,0+pclath+cstack]
	line	298
	
l30000834:	
;lcdbt.c: 298: ecriture_commande(0b00011000);
	movlw	(018h)
	fcall	_ecriture_commande
	
l29:	
	return
	opt stack 0
GLOBAL	__end_of_ecran_gauche
	__end_of_ecran_gauche:
; =============== function _ecran_gauche ends ============

psect	text96,local,class=CODE,delta=2
global __ptext96
__ptext96:
	line	299
	signat	_ecran_gauche,88
	global	_print_string

; *************** function _print_string *****************
; Defined at:
;		line 231 in file "G:\test lcd\lcdbt.c"
; Parameters:    Size  Location     Type
;  s               1    wreg     PTR unsigned char 
;		 -> STR_1(21), 
; Auto vars:     Size  Location     Type
;  s               1    0[BANK0 ] PTR unsigned char 
;		 -> STR_1(21), 
;  i               2    1[BANK0 ] int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       3       0       0       0
;      Temp:     0
;      Total:    3
; This function calls:
;		_print_char
;		_strlen
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text96
	file	"G:\test lcd\lcdbt.c"
	line	231
	global	__size_of_print_string
	__size_of_print_string	equ	__end_of_print_string-_print_string
;lcdbt.c: 230: void print_string(char * s)
;lcdbt.c: 231: {
	
_print_string:	
	opt stack 6
; Regs used in _print_string: [wreg+status,2+status,0+pclath+cstack]
;print_string@s stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(print_string@s)
	
l30000835:	
	line	232
;lcdbt.c: 232: for(int i=0 ; i < strlen(s) ; i++)
	movlw	low(0)
	movwf	(print_string@i)
	movlw	high(0)
	movwf	((print_string@i))+1
	goto	l30000838
	
l30000836:	
	line	234
;lcdbt.c: 233: {
;lcdbt.c: 234: print_char(s[i]);
	movf	(print_string@s),w
	addwf	(print_string@i),w
	FNCALL _print_string,stringtab
	fcall	stringdir
	fcall	_print_char
	
l30000837:	
	line	232
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(print_string@i),f
	skipnc
	incf	(print_string@i+1),f
	movlw	high(01h)
	addwf	(print_string@i+1),f
	
l30000838:	
	movf	(print_string@s),w
	fcall	_strlen
	movf	(1+(?_strlen)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(print_string@i+1),w
	skipz
	goto	u175
	movf	(0+(?_strlen)),w
	subwf	(print_string@i),w
u175:
	skipc
	goto	u171
	goto	u170
u171:
	goto	l30000836
u170:
	
l19:	
	return
	opt stack 0
GLOBAL	__end_of_print_string
	__end_of_print_string:
; =============== function _print_string ends ============

psect	text97,local,class=CODE,delta=2
global __ptext97
__ptext97:
	line	236
	signat	_print_string,4216
	global	_init_LCD

; *************** function _init_LCD *****************
; Defined at:
;		line 160 in file "G:\test lcd\lcdbt.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_tempo_N_ms
;		_ecriture_commande
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text97
	file	"G:\test lcd\lcdbt.c"
	line	160
	global	__size_of_init_LCD
	__size_of_init_LCD	equ	__end_of_init_LCD-_init_LCD
;lcdbt.c: 159: void init_LCD(void)
;lcdbt.c: 160: {
	
_init_LCD:	
	opt stack 6
; Regs used in _init_LCD: [wreg+status,2+status,0+pclath+cstack]
	line	161
	
l30000839:	
;lcdbt.c: 161: tempo_N_ms(30);
	movlw	low(01Eh)
	movwf	(?_tempo_N_ms)
	movlw	high(01Eh)
	movwf	((?_tempo_N_ms))+1
	fcall	_tempo_N_ms
	
l30000840:	
	line	162
;lcdbt.c: 162: TRISD=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	
l30000841:	
	line	163
;lcdbt.c: 163: RD7=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	
l30000842:	
	line	164
;lcdbt.c: 164: RD4=0;
	bcf	(68/8),(68)&7
	
l30000843:	
	line	165
;lcdbt.c: 165: RD6=0;
	bcf	(70/8),(70)&7
	
l30000844:	
	line	166
;lcdbt.c: 166: RD5=0;
	bcf	(69/8),(69)&7
	
l30000845:	
	line	168
;lcdbt.c: 168: PORTD=PORTD|0x03;
	movf	(8),w	;volatile
	iorlw	03h
	movwf	(8)	;volatile
	
l30000846:	
	line	169
;lcdbt.c: 169: RD6=1;
	bsf	(70/8),(70)&7
	
l30000847:	
	line	170
;lcdbt.c: 170: RD6=0;
	bcf	(70/8),(70)&7
	
l30000848:	
	line	171
;lcdbt.c: 171: tempo_N_ms(30);
	movlw	low(01Eh)
	movwf	(?_tempo_N_ms)
	movlw	high(01Eh)
	movwf	((?_tempo_N_ms))+1
	fcall	_tempo_N_ms
	
l30000849:	
	line	174
;lcdbt.c: 174: PORTD=PORTD|0x03;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w	;volatile
	iorlw	03h
	movwf	(8)	;volatile
	
l30000850:	
	line	175
;lcdbt.c: 175: RD6=1;
	bsf	(70/8),(70)&7
	
l30000851:	
	line	176
;lcdbt.c: 176: RD6=0;
	bcf	(70/8),(70)&7
	
l30000852:	
	line	177
;lcdbt.c: 177: tempo_N_ms(30);
	movlw	low(01Eh)
	movwf	(?_tempo_N_ms)
	movlw	high(01Eh)
	movwf	((?_tempo_N_ms))+1
	fcall	_tempo_N_ms
	
l30000853:	
	line	180
;lcdbt.c: 180: PORTD=PORTD|0x03;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w	;volatile
	iorlw	03h
	movwf	(8)	;volatile
	
l30000854:	
	line	181
;lcdbt.c: 181: RD6=1;
	bsf	(70/8),(70)&7
	
l30000855:	
	line	182
;lcdbt.c: 182: RD6=0;
	bcf	(70/8),(70)&7
	
l30000856:	
	line	183
;lcdbt.c: 183: tempo_N_ms(30);
	movlw	low(01Eh)
	movwf	(?_tempo_N_ms)
	movlw	high(01Eh)
	movwf	((?_tempo_N_ms))+1
	fcall	_tempo_N_ms
	
l30000857:	
	line	188
;lcdbt.c: 188: ecriture_commande(0x28);
	movlw	(028h)
	fcall	_ecriture_commande
	
l30000858:	
	line	191
;lcdbt.c: 191: ecriture_commande(0x0F);
	movlw	(0Fh)
	fcall	_ecriture_commande
	
l30000859:	
	line	194
;lcdbt.c: 194: ecriture_commande(0x01);
	movlw	(01h)
	fcall	_ecriture_commande
	
l30000860:	
	line	199
;lcdbt.c: 199: ecriture_commande(0x06);
	movlw	(06h)
	fcall	_ecriture_commande
	
l17:	
	return
	opt stack 0
GLOBAL	__end_of_init_LCD
	__end_of_init_LCD:
; =============== function _init_LCD ends ============

psect	text98,local,class=CODE,delta=2
global __ptext98
__ptext98:
	line	200
	signat	_init_LCD,88
	global	_init_PORTD

; *************** function _init_PORTD *****************
; Defined at:
;		line 85 in file "G:\test lcd\lcdbt.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		None
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text98
	file	"G:\test lcd\lcdbt.c"
	line	85
	global	__size_of_init_PORTD
	__size_of_init_PORTD	equ	__end_of_init_PORTD-_init_PORTD
;lcdbt.c: 84: void init_PORTD(void)
;lcdbt.c: 85: {
	
_init_PORTD:	
	opt stack 6
; Regs used in _init_PORTD: []
	line	86
	
l30000861:	
;lcdbt.c: 86: TRISD4 =0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1092/8)^080h,(1092)&7
	line	87
;lcdbt.c: 87: TRISD5 =0;
	bcf	(1093/8)^080h,(1093)&7
	line	88
;lcdbt.c: 88: TRISD6 =0;
	bcf	(1094/8)^080h,(1094)&7
	line	89
;lcdbt.c: 89: TRISD7 =0;
	bcf	(1095/8)^080h,(1095)&7
	
l9:	
	return
	opt stack 0
GLOBAL	__end_of_init_PORTD
	__end_of_init_PORTD:
; =============== function _init_PORTD ends ============

psect	text99,local,class=CODE,delta=2
global __ptext99
__ptext99:
	line	90
	signat	_init_PORTD,88
	global	_allume_LCD

; *************** function _allume_LCD *****************
; Defined at:
;		line 96 in file "G:\test lcd\lcdbt.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		None
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text99
	file	"G:\test lcd\lcdbt.c"
	line	96
	global	__size_of_allume_LCD
	__size_of_allume_LCD	equ	__end_of_allume_LCD-_allume_LCD
;lcdbt.c: 95: void allume_LCD(void)
;lcdbt.c: 96: {
	
_allume_LCD:	
	opt stack 6
; Regs used in _allume_LCD: []
	line	98
	
l30000862:	
;lcdbt.c: 98: RD7 =1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	
l10:	
	return
	opt stack 0
GLOBAL	__end_of_allume_LCD
	__end_of_allume_LCD:
; =============== function _allume_LCD ends ============

psect	text100,local,class=CODE,delta=2
global __ptext100
__ptext100:
	line	99
	signat	_allume_LCD,88
	global	_print_char

; *************** function _print_char *****************
; Defined at:
;		line 207 in file "G:\test lcd\lcdbt.c"
; Parameters:    Size  Location     Type
;  car             1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  car             1    7[COMMON] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         2       0       0       0       0
;      Temp:     1
;      Total:    2
; This function calls:
;		_attente_bf
; This function is called by:
;		_print_string
; This function uses a non-reentrant model
; 
psect	text100
	file	"G:\test lcd\lcdbt.c"
	line	207
	global	__size_of_print_char
	__size_of_print_char	equ	__end_of_print_char-_print_char
;lcdbt.c: 206: void print_char(char car)
;lcdbt.c: 207: {
	
_print_char:	
	opt stack 5
; Regs used in _print_char: [wreg+status,2+status,0+pclath+cstack]
;print_char@car stored from wreg
	line	209
	movwf	(print_char@car)
	
l30000863:	
;lcdbt.c: 209: attente_bf();
	fcall	_attente_bf
	
l30000864:	
	line	210
;lcdbt.c: 210: RD5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
	
l30000865:	
	line	211
;lcdbt.c: 211: RD4=1;
	bsf	(68/8),(68)&7
	
l30000866:	
	line	212
;lcdbt.c: 212: PORTD=((car>>4)&0x0F)|0x90;
	movf	(print_char@car),w
	movwf	(??_print_char+0+0)
	movlw	04h
u185:
	clrc
	rrf	(??_print_char+0+0),f
	addlw	-1
	skipz
	goto	u185
	movf	0+(??_print_char+0+0),w
	andlw	0Fh
	iorlw	090h
	movwf	(8)	;volatile
	
l30000867:	
	line	216
;lcdbt.c: 216: RD6=1;
	bsf	(70/8),(70)&7
	
l30000868:	
	line	217
;lcdbt.c: 217: RD6=0;
	bcf	(70/8),(70)&7
	
l30000869:	
	line	219
;lcdbt.c: 219: PORTD=(car&0x0F)|0x90;
	movf	(print_char@car),w
	andlw	0Fh
	iorlw	090h
	movwf	(8)	;volatile
	
l30000870:	
	line	221
;lcdbt.c: 221: RD6=1;
	bsf	(70/8),(70)&7
	
l30000871:	
	line	222
;lcdbt.c: 222: RD6=0;
	bcf	(70/8),(70)&7
	
l18:	
	return
	opt stack 0
GLOBAL	__end_of_print_char
	__end_of_print_char:
; =============== function _print_char ends ============

psect	text101,local,class=CODE,delta=2
global __ptext101
__ptext101:
	line	223
	signat	_print_char,4216
	global	_strlen

; *************** function _strlen *****************
; Defined at:
;		line 5 in file "../../common/strlen.c"
; Parameters:    Size  Location     Type
;  s               1    wreg     PTR const unsigned char 
;		 -> STR_1(21), 
; Auto vars:     Size  Location     Type
;  s               1    4[COMMON] PTR const unsigned char 
;		 -> STR_1(21), 
;  cp              1    5[COMMON] PTR const unsigned char 
;		 -> STR_1(21), 
; Return value:  Size  Location     Type
;                  2    6[COMMON] unsigned int 
; Registers used:
;		wreg, status,2, status,0, pclath
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         8       0       0       0       0
;      Temp:     4
;      Total:    8
; This function calls:
;		Nothing
; This function is called by:
;		_print_string
; This function uses a non-reentrant model
; 
psect	text101
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\strlen.c"
	line	5
	global	__size_of_strlen
	__size_of_strlen	equ	__end_of_strlen-_strlen
	
_strlen:	
	opt stack 5
; Regs used in _strlen: [wreg+status,2+status,0+pclath]
;strlen@s stored from wreg
	line	8
	movwf	(strlen@s)
	
l30000872:	
	movf	(strlen@s),w
	movwf	(strlen@cp)
	
l30000873:	
	line	9
	clrw
	iorlw	01h
	addwf	(strlen@cp),f
	clrw
	iorlw	-01h
	addwf	(strlen@cp),w
	FNCALL _strlen,stringtab
	fcall	stringdir
	iorlw	0
	skipz
	goto	u191
	goto	u190
u191:
	goto	l30000873
u190:
	
l30000874:	
	line	11
	movf	(strlen@s),w
	movwf	(??_strlen+0+0)
	clrf	(??_strlen+0+0+1)
	comf	(??_strlen+0+0),f
	comf	(??_strlen+0+1),f
	incf	(??_strlen+0+0),f
	skipnz
	incf	(??_strlen+0+1),f
	movf	(strlen@cp),w
	addwf	0+(??_strlen+0+0),w
	movwf	(??_strlen+2+0)
	movf	1+(??_strlen+0+0),w
	skipnc
	incf	1+(??_strlen+0+0),w
	movwf	((??_strlen+2+0))+1
	movf	0+(??_strlen+2+0),w
	addlw	low(-1)
	movwf	(?_strlen)
	movf	1+(??_strlen+2+0),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(?_strlen)
	
l39:	
	return
	opt stack 0
GLOBAL	__end_of_strlen
	__end_of_strlen:
; =============== function _strlen ends ============

psect	text102,local,class=CODE,delta=2
global __ptext102
__ptext102:
	line	12
	signat	_strlen,4218
	global	_ecriture_commande

; *************** function _ecriture_commande *****************
; Defined at:
;		line 140 in file "G:\test lcd\lcdbt.c"
; Parameters:    Size  Location     Type
;  commande        1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  commande        1    7[COMMON] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         2       0       0       0       0
;      Temp:     1
;      Total:    2
; This function calls:
;		_attente_bf
; This function is called by:
;		_init_LCD
;		_ecran_gauche
; This function uses a non-reentrant model
; 
psect	text102
	file	"G:\test lcd\lcdbt.c"
	line	140
	global	__size_of_ecriture_commande
	__size_of_ecriture_commande	equ	__end_of_ecriture_commande-_ecriture_commande
;lcdbt.c: 139: void ecriture_commande(char commande)
;lcdbt.c: 140: {
	
_ecriture_commande:	
	opt stack 5
; Regs used in _ecriture_commande: [wreg+status,2+status,0+pclath+cstack]
;ecriture_commande@commande stored from wreg
	movwf	(ecriture_commande@commande)
	
l30000876:	
	line	141
;lcdbt.c: 141: attente_bf();
	fcall	_attente_bf
	
l30000877:	
	line	142
;lcdbt.c: 142: RD5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
	
l30000878:	
	line	143
;lcdbt.c: 143: RD4=0;
	bcf	(68/8),(68)&7
	
l30000879:	
	line	144
;lcdbt.c: 144: PORTD=((commande>>4)&0x0F)|0x80;
	movf	(ecriture_commande@commande),w
	movwf	(??_ecriture_commande+0+0)
	movlw	04h
u205:
	clrc
	rrf	(??_ecriture_commande+0+0),f
	addlw	-1
	skipz
	goto	u205
	movf	0+(??_ecriture_commande+0+0),w
	andlw	0Fh
	iorlw	080h
	movwf	(8)	;volatile
	
l30000880:	
	line	146
;lcdbt.c: 146: RD6=1;
	bsf	(70/8),(70)&7
	
l30000881:	
	line	147
;lcdbt.c: 147: RD6=0;
	bcf	(70/8),(70)&7
	
l30000882:	
	line	149
;lcdbt.c: 149: PORTD=(commande&0x0F)|0x80;
	movf	(ecriture_commande@commande),w
	andlw	0Fh
	iorlw	080h
	movwf	(8)	;volatile
	
l30000883:	
	line	151
;lcdbt.c: 151: RD6=1;
	bsf	(70/8),(70)&7
	
l30000884:	
	line	152
;lcdbt.c: 152: RD6=0;
	bcf	(70/8),(70)&7
	
l16:	
	return
	opt stack 0
GLOBAL	__end_of_ecriture_commande
	__end_of_ecriture_commande:
; =============== function _ecriture_commande ends ============

psect	text103,local,class=CODE,delta=2
global __ptext103
__ptext103:
	line	153
	signat	_ecriture_commande,4216
	global	_attente_bf

; *************** function _attente_bf *****************
; Defined at:
;		line 131 in file "G:\test lcd\lcdbt.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1       0       0       0       0
;      Temp:     1
;      Total:    1
; This function calls:
;		_lecture_commande
; This function is called by:
;		_ecriture_commande
;		_print_char
; This function uses a non-reentrant model
; 
psect	text103
	file	"G:\test lcd\lcdbt.c"
	line	131
	global	__size_of_attente_bf
	__size_of_attente_bf	equ	__end_of_attente_bf-_attente_bf
;lcdbt.c: 130: void attente_bf(void)
;lcdbt.c: 131: {
	
_attente_bf:	
	opt stack 4
; Regs used in _attente_bf: [wreg+status,2+status,0+pclath+cstack]
	
l30000885:	
	
l30000886:	
	line	132
	fcall	_lecture_commande
	movwf	(??_attente_bf+0+0)
	btfsc	0+(??_attente_bf+0+0),(7)&7
	goto	u211
	goto	u210
u211:
	goto	l30000886
u210:
	
l12:	
	return
	opt stack 0
GLOBAL	__end_of_attente_bf
	__end_of_attente_bf:
; =============== function _attente_bf ends ============

psect	text104,local,class=CODE,delta=2
global __ptext104
__ptext104:
	line	133
	signat	_attente_bf,88
	global	_lecture_commande

; *************** function _lecture_commande *****************
; Defined at:
;		line 107 in file "G:\test lcd\lcdbt.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  quartet_comm    1    3[COMMON] unsigned char 
;  commande        1    4[COMMON] unsigned char 
; Return value:  Size  Location     Type
;                  1    wreg      unsigned char 
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         3       0       0       0       0
;      Temp:     1
;      Total:    3
; This function calls:
;		_tempo_N_ms
; This function is called by:
;		_attente_bf
; This function uses a non-reentrant model
; 
psect	text104
	file	"G:\test lcd\lcdbt.c"
	line	107
	global	__size_of_lecture_commande
	__size_of_lecture_commande	equ	__end_of_lecture_commande-_lecture_commande
;lcdbt.c: 106: unsigned char lecture_commande (void)
;lcdbt.c: 107: {
	
_lecture_commande:	
	opt stack 3
; Regs used in _lecture_commande: [wreg+status,2+status,0+pclath+cstack]
	line	109
	
l30000887:	
;lcdbt.c: 108: unsigned char commande, quartet_commande;
;lcdbt.c: 109: TRISD=0x0F;
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	
l30000888:	
	line	110
;lcdbt.c: 110: RD5=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	
l30000889:	
	line	111
;lcdbt.c: 111: RD4=0;
	bcf	(68/8),(68)&7
	
l30000890:	
	line	112
;lcdbt.c: 112: tempo_N_ms(2);
	movlw	low(02h)
	movwf	(?_tempo_N_ms)
	movlw	high(02h)
	movwf	((?_tempo_N_ms))+1
	fcall	_tempo_N_ms
	
l30000891:	
	line	113
;lcdbt.c: 113: RD6=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	
l30000892:	
	line	114
;lcdbt.c: 114: quartet_commande=PORTD;
	movf	(8),w	;volatile
	movwf	(lecture_commande@quartet_commande)
	
l30000893:	
	line	115
;lcdbt.c: 115: commande=((quartet_commande<<4)& 0xF0);
	movf	(lecture_commande@quartet_commande),w
	movwf	(??_lecture_commande+0+0)
	movlw	(04h)-1
u225:
	clrc
	rlf	(??_lecture_commande+0+0),f
	addlw	-1
	skipz
	goto	u225
	clrc
	rlf	(??_lecture_commande+0+0),w
	andlw	0F0h
	movwf	(lecture_commande@commande)
	
l30000894:	
	line	116
;lcdbt.c: 116: RD6=0;
	bcf	(70/8),(70)&7
	
l30000895:	
	line	117
;lcdbt.c: 117: RD6=1;
	bsf	(70/8),(70)&7
	
l30000896:	
	line	118
;lcdbt.c: 118: quartet_commande=PORTD;
	movf	(8),w	;volatile
	movwf	(lecture_commande@quartet_commande)
	
l30000897:	
	line	119
;lcdbt.c: 119: commande=commande|(quartet_commande & 0x0F);
	movf	(lecture_commande@quartet_commande),w
	andlw	0Fh
	iorwf	(lecture_commande@commande),w
	movwf	(lecture_commande@commande)
	
l30000898:	
	line	120
;lcdbt.c: 120: RD6=0;
	bcf	(70/8),(70)&7
	
l30000899:	
	line	121
;lcdbt.c: 121: RD5=0;
	bcf	(69/8),(69)&7
	
l30000900:	
	line	122
;lcdbt.c: 122: TRISD=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	
l30000901:	
	line	123
;lcdbt.c: 123: return(commande);
	movf	(lecture_commande@commande),w
	
l11:	
	return
	opt stack 0
GLOBAL	__end_of_lecture_commande
	__end_of_lecture_commande:
; =============== function _lecture_commande ends ============

psect	text105,local,class=CODE,delta=2
global __ptext105
__ptext105:
	line	124
	signat	_lecture_commande,89
	global	_tempo_N_ms

; *************** function _tempo_N_ms *****************
; Defined at:
;		line 68 in file "G:\test lcd\lcdbt.c"
; Parameters:    Size  Location     Type
;  N               2    0[COMMON] int 
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         2       0       0       0       0
;      Temp:     0
;      Total:    2
; This function calls:
;		_tempo_1_ms
; This function is called by:
;		_lecture_commande
;		_init_LCD
;		_main
; This function uses a non-reentrant model
; 
psect	text105
	file	"G:\test lcd\lcdbt.c"
	line	68
	global	__size_of_tempo_N_ms
	__size_of_tempo_N_ms	equ	__end_of_tempo_N_ms-_tempo_N_ms
;lcdbt.c: 67: void tempo_N_ms(int N)
;lcdbt.c: 68: {
	
_tempo_N_ms:	
	opt stack 2
; Regs used in _tempo_N_ms: [wreg+status,2+status,0+pclath+cstack]
	line	70
	
l30000903:	
;lcdbt.c: 70: OPTION=OPTION & 0b11000001;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(129)^080h,w
	andlw	0C1h
	movwf	(129)^080h
	
l30000904:	
	line	71
;lcdbt.c: 71: TMR0=6;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	
l30000905:	
	line	72
;lcdbt.c: 72: T0IF=0;
	bcf	(90/8),(90)&7
	goto	l30000907
	
l30000906:	
	line	74
	fcall	_tempo_1_ms
	
l30000907:	
	movlw	low(-1)
	addwf	(tempo_N_ms@N),f
	skipnc
	incf	(tempo_N_ms@N+1),f
	movlw	high(-1)
	addwf	(tempo_N_ms@N+1),f
	movlw	high(-1)
	xorwf	((tempo_N_ms@N+1))&07fh,w
	skipz
	goto	u235
	movlw	low(-1)
	xorwf	((tempo_N_ms@N))&07fh,w
u235:

	skipz
	goto	u231
	goto	u230
u231:
	goto	l30000906
u230:
	
l5:	
	return
	opt stack 0
GLOBAL	__end_of_tempo_N_ms
	__end_of_tempo_N_ms:
; =============== function _tempo_N_ms ends ============

psect	text106,local,class=CODE,delta=2
global __ptext106
__ptext106:
	line	75
	signat	_tempo_N_ms,4216
	global	_tempo_1_ms

; *************** function _tempo_1_ms *****************
; Defined at:
;		line 62 in file "G:\test lcd\lcdbt.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		None
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		Nothing
; This function is called by:
;		_tempo_N_ms
; This function uses a non-reentrant model
; 
psect	text106
	file	"G:\test lcd\lcdbt.c"
	line	62
	global	__size_of_tempo_1_ms
	__size_of_tempo_1_ms	equ	__end_of_tempo_1_ms-_tempo_1_ms
;lcdbt.c: 61: void tempo_1_ms(void)
;lcdbt.c: 62: {
	
_tempo_1_ms:	
	opt stack 1
; Regs used in _tempo_1_ms: []
	
l30000908:	
	
l2:	
	line	63
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(90/8),(90)&7
	goto	u241
	goto	u240
u241:
	goto	l2
u240:
	
l4:	
	line	64
;lcdbt.c: 64: T0IF=0;
	bcf	(90/8),(90)&7
	
l1:	
	return
	opt stack 0
GLOBAL	__end_of_tempo_1_ms
	__end_of_tempo_1_ms:
; =============== function _tempo_1_ms ends ============

psect	text107,local,class=CODE,delta=2
global __ptext107
__ptext107:
	line	65
	signat	_tempo_1_ms,88
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	end
