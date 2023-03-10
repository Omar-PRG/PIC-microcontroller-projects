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
	FNCALL	_main,_init_portb
	FNCALL	_main,_init_portc
	FNCALL	_main,_buzzer_on
	FNCALL	_buzzer_on,_tempo_p_ms
	FNCALL	_tempo_p_ms,_tempo1ms
	FNROOT	_main
	FNCALL	intlevel1,_traitement_it
	global	intlevel1
	FNROOT	intlevel1
	global	_compteur
	global	_debug
psect	text37,local,class=CODE,delta=2
global __ptext37
__ptext37:
_debug  equ     112
	DABS	1,112,1	;_debug

	global	_ADCON0
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
	file	"buzzer.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_compteur:
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
	global	?_init_portb
?_init_portb: ;@ 0x0
	global	??_init_portc
??_init_portc: ;@ 0x0
	global	??_tempo_p_ms
??_tempo_p_ms: ;@ 0x0
	global	??_init_portb
??_init_portb: ;@ 0x0
	global	?_init_portc
?_init_portc: ;@ 0x0
	global	??_main
??_main: ;@ 0x0
	global	??_tempo1ms
??_tempo1ms: ;@ 0x0
	global	??_buzzer_on
??_buzzer_on: ;@ 0x0
	global	tempo1ms@i
tempo1ms@i:	; 2 bytes @ 0x0
	ds	2
	global	?_tempo1ms
?_tempo1ms: ;@ 0x2
	global	tempo_p_ms@i
tempo_p_ms@i:	; 2 bytes @ 0x2
	ds	2
	global	?_tempo_p_ms
?_tempo_p_ms: ;@ 0x4
	global	tempo_p_ms@ms
tempo_p_ms@ms:	; 2 bytes @ 0x4
	ds	2
	global	?_main
?_main: ;@ 0x6
	global	?_buzzer_on
?_buzzer_on: ;@ 0x6
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_traitement_it
??_traitement_it: ;@ 0x0
	ds	4
	global	?_traitement_it
?_traitement_it: ;@ 0x4
;Data sizes: Strings 0, constant 0, data 0, bss 2, persistent 0 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          13      6       8
; BANK0           80      4       4
; BANK1           80      0       0
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:



;Main: autosize = 0, tempsize = 0, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                0    0   40   0.00
;         _init_portb
;         _init_portc
;          _buzzer_on
;  _buzzer_on                                         0    0   40   0.00
;         _tempo_p_ms
;  _init_portc                                        0    0    0   0.00
;  _init_portb                                        0    0    0   0.00
;    _tempo_p_ms                                      2    2   40   0.00
;                                    2 COMMO    4
;           _tempo1ms
;      _tempo1ms                                      2    0   20   0.00
;                                    0 COMMO    2
; Estimated maximum call depth 3
;_traitement_it                                       4    0    0   0.00
;                                    0 BANK0    4
; Estimated maximum call depth 0
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            D      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               D      6       8       1       61.5%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;BITSFR1              0      0       0       2        0.0%
;SFR1                 0      0       0       2        0.0%
;ABS                  0      0       C       2        0.0%
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
;DATA                 0      0       C      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 91 in file "E:\Etudiant\telecom1\d_pic\Aeneas RUS LIN\d_pic_ii\prog_c\buzzer\buzzer.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 17F/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_init_portb
;		_init_portc
;		_buzzer_on
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"E:\Etudiant\telecom1\d_pic\Aeneas RUS LIN\d_pic_ii\prog_c\buzzer\buzzer.c"
	line	91
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;buzzer.c: 89: void main(void)
;buzzer.c: 91: {
	
_main:	
	opt stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	92
	
l30000393:	
;buzzer.c: 92: GIE=1;
	bsf	(95/8),(95)&7
	line	93
;buzzer.c: 93: INTF = 0;
	bcf	(89/8),(89)&7
	line	94
;buzzer.c: 94: INTE = 1;
	bsf	(92/8),(92)&7
	line	95
;buzzer.c: 95: INTEDG=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1038/8)^080h,(1038)&7
	
l30000394:	
	line	97
;buzzer.c: 97: init_portb();
	fcall	_init_portb
	line	98
;buzzer.c: 98: init_portc();
	fcall	_init_portc
	
l30000395:	
	line	102
;buzzer.c: 101: {
;buzzer.c: 102: if(compteur==5)
	movlw	05h
	xorwf	(_compteur),w
	iorwf	(_compteur+1),w
	skipz
	goto	u51
	goto	u50
u51:
	goto	l30000395
u50:
	
l30000396:	
	line	104
;buzzer.c: 103: {
;buzzer.c: 104: compteur=0;
	movlw	low(0)
	movwf	(_compteur)
	movlw	high(0)
	movwf	((_compteur))+1
	goto	l30000398
	
l30000397:	
	line	107
;buzzer.c: 106: {
;buzzer.c: 107: buzzer_on();
	fcall	_buzzer_on
	
l30000398:	
	line	105
	movlw	high(03h)
	subwf	(_compteur+1),w
	movlw	low(03h)
	skipnz
	subwf	(_compteur),w
	skipc
	goto	u61
	goto	u60
u61:
	goto	l30000397
u60:
	
l30000399:	
	line	109
;buzzer.c: 108: }
;buzzer.c: 109: buzzer_on();
	fcall	_buzzer_on
	
l30000400:	
	line	110
;buzzer.c: 110: compteur = 0;
	movlw	low(0)
	movwf	(_compteur)
	movlw	high(0)
	movwf	((_compteur))+1
	goto	l30000395
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	115
	signat	_main,88
	global	_buzzer_on
psect	text38,local,class=CODE,delta=2
global __ptext38
__ptext38:

; *************** function _buzzer_on *****************
; Defined at:
;		line 69 in file "E:\Etudiant\telecom1\d_pic\Aeneas RUS LIN\d_pic_ii\prog_c\buzzer\buzzer.c"
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
;		_tempo_p_ms
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text38
	file	"E:\Etudiant\telecom1\d_pic\Aeneas RUS LIN\d_pic_ii\prog_c\buzzer\buzzer.c"
	line	69
	global	__size_of_buzzer_on
	__size_of_buzzer_on	equ	__end_of_buzzer_on-_buzzer_on
;buzzer.c: 68: void buzzer_on (void)
;buzzer.c: 69: {
	
_buzzer_on:	
	opt stack 6
; Regs used in _buzzer_on: [wreg+status,2+status,0+pclath+cstack]
	line	70
	
l30000386:	
;buzzer.c: 70: RC2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	
l30000387:	
	line	71
;buzzer.c: 71: tempo_p_ms(1);
	movlw	low(01h)
	movwf	(?_tempo_p_ms)
	movlw	high(01h)
	movwf	((?_tempo_p_ms))+1
	fcall	_tempo_p_ms
	
l30000388:	
	line	72
;buzzer.c: 72: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	73
;buzzer.c: 73: tempo_p_ms(1);
	movlw	low(01h)
	movwf	(?_tempo_p_ms)
	movlw	high(01h)
	movwf	((?_tempo_p_ms))+1
	fcall	_tempo_p_ms
	
l22:	
	return
	opt stack 0
GLOBAL	__end_of_buzzer_on
	__end_of_buzzer_on:
; =============== function _buzzer_on ends ============

psect	text39,local,class=CODE,delta=2
global __ptext39
__ptext39:
	line	74
	signat	_buzzer_on,88
	global	_init_portc

; *************** function _init_portc *****************
; Defined at:
;		line 58 in file "E:\Etudiant\telecom1\d_pic\Aeneas RUS LIN\d_pic_ii\prog_c\buzzer\buzzer.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0
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
psect	text39
	file	"E:\Etudiant\telecom1\d_pic\Aeneas RUS LIN\d_pic_ii\prog_c\buzzer\buzzer.c"
	line	58
	global	__size_of_init_portc
	__size_of_init_portc	equ	__end_of_init_portc-_init_portc
;buzzer.c: 57: void init_portc (void)
;buzzer.c: 58: {
	
_init_portc:	
	opt stack 6
; Regs used in _init_portc: [wreg+status,2+status,0]
	line	59
	
l30000385:	
;buzzer.c: 59: TRISC=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	60
;buzzer.c: 60: PORTC=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	
l20:	
	return
	opt stack 0
GLOBAL	__end_of_init_portc
	__end_of_init_portc:
; =============== function _init_portc ends ============

psect	text40,local,class=CODE,delta=2
global __ptext40
__ptext40:
	line	61
	signat	_init_portc,88
	global	_init_portb

; *************** function _init_portb *****************
; Defined at:
;		line 53 in file "E:\Etudiant\telecom1\d_pic\Aeneas RUS LIN\d_pic_ii\prog_c\buzzer\buzzer.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg
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
psect	text40
	file	"E:\Etudiant\telecom1\d_pic\Aeneas RUS LIN\d_pic_ii\prog_c\buzzer\buzzer.c"
	line	53
	global	__size_of_init_portb
	__size_of_init_portb	equ	__end_of_init_portb-_init_portb
;buzzer.c: 52: void init_portb (void)
;buzzer.c: 53: {
	
_init_portb:	
	opt stack 6
; Regs used in _init_portb: [wreg]
	line	54
	
l30000384:	
;buzzer.c: 54: TRISB=1;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	
l19:	
	return
	opt stack 0
GLOBAL	__end_of_init_portb
	__end_of_init_portb:
; =============== function _init_portb ends ============

psect	text41,local,class=CODE,delta=2
global __ptext41
__ptext41:
	line	55
	signat	_init_portb,88
	global	_tempo_p_ms

; *************** function _tempo_p_ms *****************
; Defined at:
;		line 35 in file "E:\Etudiant\telecom1\d_pic\Aeneas RUS LIN\d_pic_ii\prog_c\buzzer\buzzer.c"
; Parameters:    Size  Location     Type
;  ms              2    4[COMMON] unsigned int 
; Auto vars:     Size  Location     Type
;  i               2    2[COMMON] unsigned int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         4       0       0       0       0
;      Temp:     0
;      Total:    4
; This function calls:
;		_tempo1ms
; This function is called by:
;		_buzzer_on
; This function uses a non-reentrant model
; 
psect	text41
	file	"E:\Etudiant\telecom1\d_pic\Aeneas RUS LIN\d_pic_ii\prog_c\buzzer\buzzer.c"
	line	35
	global	__size_of_tempo_p_ms
	__size_of_tempo_p_ms	equ	__end_of_tempo_p_ms-_tempo_p_ms
;buzzer.c: 34: void tempo_p_ms (unsigned int ms)
;buzzer.c: 35: {
	
_tempo_p_ms:	
	opt stack 5
; Regs used in _tempo_p_ms: [wreg+status,2+status,0+pclath+cstack]
	line	37
	
l30000380:	
;buzzer.c: 36: unsigned int i;
;buzzer.c: 37: for(i=0; i<ms; i++)
	movlw	low(0)
	movwf	(tempo_p_ms@i)
	movlw	high(0)
	movwf	((tempo_p_ms@i))+1
	goto	l30000383
	
l30000381:	
	line	39
;buzzer.c: 38: {
;buzzer.c: 39: tempo1ms();
	fcall	_tempo1ms
	
l30000382:	
	line	37
	movlw	low(01h)
	addwf	(tempo_p_ms@i),f
	skipnc
	incf	(tempo_p_ms@i+1),f
	movlw	high(01h)
	addwf	(tempo_p_ms@i+1),f
	
l30000383:	
	movf	(tempo_p_ms@ms+1),w
	subwf	(tempo_p_ms@i+1),w
	skipz
	goto	u25
	movf	(tempo_p_ms@ms),w
	subwf	(tempo_p_ms@i),w
u25:
	skipc
	goto	u21
	goto	u20
u21:
	goto	l30000381
u20:
	
l9:	
	return
	opt stack 0
GLOBAL	__end_of_tempo_p_ms
	__end_of_tempo_p_ms:
; =============== function _tempo_p_ms ends ============

psect	text42,local,class=CODE,delta=2
global __ptext42
__ptext42:
	line	41
	signat	_tempo_p_ms,4216
	global	_tempo1ms

; *************** function _tempo1ms *****************
; Defined at:
;		line 19 in file "E:\Etudiant\telecom1\d_pic\Aeneas RUS LIN\d_pic_ii\prog_c\buzzer\buzzer.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  i               2    0[COMMON] unsigned int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         2       0       0       0       0
;      Temp:     0
;      Total:    2
; This function calls:
;		Nothing
; This function is called by:
;		_tempo_p_ms
; This function uses a non-reentrant model
; 
psect	text42
	file	"E:\Etudiant\telecom1\d_pic\Aeneas RUS LIN\d_pic_ii\prog_c\buzzer\buzzer.c"
	line	19
	global	__size_of_tempo1ms
	__size_of_tempo1ms	equ	__end_of_tempo1ms-_tempo1ms
;pic168xa.h: 19: volatile unsigned char INDF @ 0x00;
;pic168xa.h: 20: volatile unsigned char TMR0 @ 0x01;
;pic168xa.h: 21: volatile unsigned char PCL @ 0x02;
;pic168xa.h: 22: volatile unsigned char STATUS @ 0x03;
;pic168xa.h: 23: unsigned char FSR @ 0x04;
;pic168xa.h: 24: volatile unsigned char PORTA @ 0x05;
;pic168xa.h: 25: volatile unsigned char PORTB @ 0x06;
;pic168xa.h: 26: volatile unsigned char PORTC @ 0x07;
;pic168xa.h: 28: volatile unsigned char PORTD @ 0x08;
;pic168xa.h: 29: volatile unsigned char PORTE @ 0x09;
	
_tempo1ms:	
	opt stack 4
; Regs used in _tempo1ms: [wreg]
	line	21
	
l30000377:	
;buzzer.c: 20: unsigned int i;
;buzzer.c: 21: for(i=0;i<62;i++);
	movlw	low(0)
	movwf	(tempo1ms@i)
	movlw	high(0)
	movwf	((tempo1ms@i))+1
	
l30000379:	
	movlw	low(01h)
	addwf	(tempo1ms@i),f
	skipnc
	incf	(tempo1ms@i+1),f
	movlw	high(01h)
	addwf	(tempo1ms@i+1),f
	movlw	high(03Eh)
	subwf	(tempo1ms@i+1),w
	movlw	low(03Eh)
	skipnz
	subwf	(tempo1ms@i),w
	skipc
	goto	u11
	goto	u10
u11:
	goto	l30000379
u10:
	
l1:	
	return
	opt stack 0
GLOBAL	__end_of_tempo1ms
	__end_of_tempo1ms:
; =============== function _tempo1ms ends ============

psect	text43,local,class=CODE,delta=2
global __ptext43
__ptext43:
	line	23
	signat	_tempo1ms,88
	global	_traitement_it

; *************** function _traitement_it *****************
; Defined at:
;		line 79 in file "E:\Etudiant\telecom1\d_pic\Aeneas RUS LIN\d_pic_ii\prog_c\buzzer\buzzer.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       4       0       0       0
;      Temp:     4
;      Total:    4
; This function calls:
;		Nothing
; This function is called by:
;		Interrupt level 1
; This function uses a non-reentrant model
; 
psect	text43
	file	"E:\Etudiant\telecom1\d_pic\Aeneas RUS LIN\d_pic_ii\prog_c\buzzer\buzzer.c"
	line	79
	global	__size_of_traitement_it
	__size_of_traitement_it	equ	__end_of_traitement_it-_traitement_it
;buzzer.c: 76: unsigned int compteur = 0;
;buzzer.c: 78: void interrupt traitement_it (void)
;buzzer.c: 79: {
	
_traitement_it:	
	opt stack 5
; Regs used in _traitement_it: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+1
	movwf	saved_w
	movf	status,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_traitement_it+0)
	movf	fsr0,w
	movwf	(??_traitement_it+1)
	movf	pclath,w
	movwf	(??_traitement_it+2)
	movf	btemp+0,w
	movwf	(??_traitement_it+3)
	ljmp	_traitement_it
psect	text43
	line	80
	
i1l30000405:	
;buzzer.c: 80: if(INTF && INTE)
	btfss	(89/8),(89)&7
	goto	u9_21
	goto	u9_20
u9_21:
	goto	i1l23
u9_20:
	
i1l30000406:	
	btfss	(92/8),(92)&7
	goto	u10_21
	goto	u10_20
u10_21:
	goto	i1l23
u10_20:
	
i1l30000407:	
	line	82
;buzzer.c: 81: {
;buzzer.c: 82: compteur = compteur +1;
	movf	(_compteur),w
	addlw	low(01h)
	movwf	(_compteur)
	movf	(_compteur+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_compteur)
	
i1l30000408:	
	line	83
;buzzer.c: 83: INTF=0;
	bcf	(89/8),(89)&7
	
i1l23:	
	movf	(??_traitement_it+3),w
	movwf	btemp+0
	movf	(??_traitement_it+2),w
	movwf	pclath
	movf	(??_traitement_it+1),w
	movwf	fsr0
	movf	(??_traitement_it+0),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_traitement_it
	__end_of_traitement_it:
; =============== function _traitement_it ends ============

psect	text44,local,class=CODE,delta=2
global __ptext44
__ptext44:
	line	85
	signat	_traitement_it,88
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	end
