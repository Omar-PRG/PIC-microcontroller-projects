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
;COMMON:	_main->_write_and_verify_data_eeprom
;COMMON:	_write_and_verify_data_eeprom->_write_data_eeprom
;COMMON:	_write_and_verify_data_eeprom->_read_data_eeprom
	FNCALL	_main,_write_and_verify_data_eeprom
	FNCALL	_write_and_verify_data_eeprom,_write_data_eeprom
	FNCALL	_write_and_verify_data_eeprom,_read_data_eeprom
	FNROOT	_main
	global	_debug
psect	text10,local,class=CODE,delta=2
global __ptext10
__ptext10:
_debug  equ     112
	DABS	1,112,1	;_debug

	global	_resultat
psect	nvCOMMON,class=COMMON,space=1
global __pnvCOMMON
__pnvCOMMON:
_resultat:
       ds      1

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
	file	"eeprom.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initationation code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	??_write_and_verify_data_eeprom
??_write_and_verify_data_eeprom: ;@ 0x0
	global	??_read_data_eeprom
??_read_data_eeprom: ;@ 0x0
	global	??_write_data_eeprom
??_write_data_eeprom: ;@ 0x0
	global	??_main
??_main: ;@ 0x0
	global	read_data_eeprom@offset
read_data_eeprom@offset:	; 1 bytes @ 0x0
	global	write_data_eeprom@offset
write_data_eeprom@offset:	; 1 bytes @ 0x0
	ds	1
	global	?_write_data_eeprom
?_write_data_eeprom: ;@ 0x1
	global	read_data_eeprom@data
read_data_eeprom@data:	; 1 bytes @ 0x1
	global	write_data_eeprom@valeur
write_data_eeprom@valeur:	; 1 bytes @ 0x1
	ds	1
	global	?_read_data_eeprom
?_read_data_eeprom: ;@ 0x2
	global	write_and_verify_data_eeprom@offset
write_and_verify_data_eeprom@offset:	; 1 bytes @ 0x2
	ds	1
	global	?_write_and_verify_data_eeprom
?_write_and_verify_data_eeprom: ;@ 0x3
	global	write_and_verify_data_eeprom@valeur
write_and_verify_data_eeprom@valeur:	; 1 bytes @ 0x3
	ds	1
	global	?_main
?_main: ;@ 0x4
;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 1 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          13      4       5
; BANK0           80      0       0
; BANK1           80      0       0
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:



;Main: autosize = 0, tempsize = 0, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                0    0   80   0.00
;_write_and_verify_da
;  _write_and_verify_data_eeprom                      1    1   80   0.00
;                                    2 COMMO    2
;  _write_data_eeprom
;   _read_data_eeprom
;    _read_data_eeprom                                2    0   20   0.00
;                                    0 COMMO    2
;    _write_data_eeprom                               1    1   20   0.00
;                                    0 COMMO    2
; Estimated maximum call depth 2
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            D      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               D      4       5       1       38.5%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;BITSFR1              0      0       0       2        0.0%
;SFR1                 0      0       0       2        0.0%
;ABS                  0      0       5       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50      0       0       5        0.0%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50      0       0       7        0.0%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0       0       9        0.0%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0       5      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 71 in file "E:\Etudiant\telecom1\d_pic\Aeneas RUS LIN\d_pic_ii\prog_c\eeprom\eeprom.c"
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
;		_write_and_verify_data_eeprom
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"E:\Etudiant\telecom1\d_pic\Aeneas RUS LIN\d_pic_ii\prog_c\eeprom\eeprom.c"
	line	71
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;eeprom.c: 67: char resultat;
;eeprom.c: 69: void main(void)
;eeprom.c: 71: {
	
_main:	
	opt stack 8
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	73
	
l30000390:	
;eeprom.c: 73: resultat = write_and_verify_data_eeprom(44,'H');
	movlw	(048h)
	movwf	(?_write_and_verify_data_eeprom)
	movlw	(02Ch)
	fcall	_write_and_verify_data_eeprom
	movwf	(_resultat)
	
l9:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	76
	signat	_main,88
	global	_write_and_verify_data_eeprom
psect	text11,local,class=CODE,delta=2
global __ptext11
__ptext11:

; *************** function _write_and_verify_data_eeprom *****************
; Defined at:
;		line 55 in file "E:\Etudiant\telecom1\d_pic\Aeneas RUS LIN\d_pic_ii\prog_c\eeprom\eeprom.c"
; Parameters:    Size  Location     Type
;  offset          1    wreg     unsigned char 
;  valeur          1    3[COMMON] unsigned char 
; Auto vars:     Size  Location     Type
;  offset          1    2[COMMON] unsigned char 
; Return value:  Size  Location     Type
;                  1    wreg      unsigned char 
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
;		_write_data_eeprom
;		_read_data_eeprom
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text11
	file	"E:\Etudiant\telecom1\d_pic\Aeneas RUS LIN\d_pic_ii\prog_c\eeprom\eeprom.c"
	line	55
	global	__size_of_write_and_verify_data_eeprom
	__size_of_write_and_verify_data_eeprom	equ	__end_of_write_and_verify_data_eeprom-_write_and_verify_data_eeprom
;eeprom.c: 54: char write_and_verify_data_eeprom (char offset, char valeur)
;eeprom.c: 55: {
	
_write_and_verify_data_eeprom:	
	opt stack 7
; Regs used in _write_and_verify_data_eeprom: [wreg+status,2+status,0+pclath+cstack]
;write_and_verify_data_eeprom@offset stored from wreg
	movwf	(write_and_verify_data_eeprom@offset)
	
l30000384:	
	line	56
;eeprom.c: 56: write_data_eeprom(offset,valeur);
	movf	(write_and_verify_data_eeprom@valeur),w
	movwf	(?_write_data_eeprom)
	movf	(write_and_verify_data_eeprom@offset),w
	fcall	_write_data_eeprom
	line	57
;eeprom.c: 57: if(read_data_eeprom(offset)==valeur)
	movf	(write_and_verify_data_eeprom@offset),w
	fcall	_read_data_eeprom
	xorwf	(write_and_verify_data_eeprom@valeur),w
	skipz
	goto	u21
	goto	u20
u21:
	goto	l30000388
u20:
	
l30000385:	
	line	59
;eeprom.c: 58: {
;eeprom.c: 59: return 0x01;
	movlw	(01h)
	goto	l6
	
l30000388:	
	line	63
;eeprom.c: 61: else
;eeprom.c: 62: {
;eeprom.c: 63: return 0x00;
	movlw	(0)
	
l6:	
	return
	opt stack 0
GLOBAL	__end_of_write_and_verify_data_eeprom
	__end_of_write_and_verify_data_eeprom:
; =============== function _write_and_verify_data_eeprom ends ============

psect	text12,local,class=CODE,delta=2
global __ptext12
__ptext12:
	line	65
	signat	_write_and_verify_data_eeprom,8313
	global	_read_data_eeprom

; *************** function _read_data_eeprom *****************
; Defined at:
;		line 43 in file "E:\Etudiant\telecom1\d_pic\Aeneas RUS LIN\d_pic_ii\prog_c\eeprom\eeprom.c"
; Parameters:    Size  Location     Type
;  offset          1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  offset          1    0[COMMON] unsigned char 
;  data            1    1[COMMON] unsigned char 
; Return value:  Size  Location     Type
;                  1    wreg      unsigned char 
; Registers used:
;		wreg, status,2, status,0
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
;		_write_and_verify_data_eeprom
; This function uses a non-reentrant model
; 
psect	text12
	file	"E:\Etudiant\telecom1\d_pic\Aeneas RUS LIN\d_pic_ii\prog_c\eeprom\eeprom.c"
	line	43
	global	__size_of_read_data_eeprom
	__size_of_read_data_eeprom	equ	__end_of_read_data_eeprom-_read_data_eeprom
;eeprom.c: 42: char read_data_eeprom (char offset)
;eeprom.c: 43: {
	
_read_data_eeprom:	
	opt stack 6
; Regs used in _read_data_eeprom: [wreg+status,2+status,0]
;read_data_eeprom@offset stored from wreg
	line	45
	movwf	(read_data_eeprom@offset)
	
l30000379:	
;eeprom.c: 44: char data;
;eeprom.c: 45: EEADR = offset;
	movf	(read_data_eeprom@offset),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	
l30000380:	
	line	46
;eeprom.c: 46: EEADRH = (offset>>8)& 0x1F;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(271)^0100h	;volatile
	
l30000381:	
	line	47
;eeprom.c: 47: EEPGD = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3175/8)^0180h,(3175)&7
	
l30000382:	
	line	48
;eeprom.c: 48: RD=1;
	bsf	(3168/8)^0180h,(3168)&7
	line	49
;eeprom.c: 49: data=EEDATA;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(268)^0100h,w	;volatile
	movwf	(read_data_eeprom@data)
	line	50
;eeprom.c: 50: return data;
	movf	(read_data_eeprom@data),w
	
l5:	
	return
	opt stack 0
GLOBAL	__end_of_read_data_eeprom
	__end_of_read_data_eeprom:
; =============== function _read_data_eeprom ends ============

psect	text13,local,class=CODE,delta=2
global __ptext13
__ptext13:
	line	52
	signat	_read_data_eeprom,4217
	global	_write_data_eeprom

; *************** function _write_data_eeprom *****************
; Defined at:
;		line 21 in file "E:\Etudiant\telecom1\d_pic\Aeneas RUS LIN\d_pic_ii\prog_c\eeprom\eeprom.c"
; Parameters:    Size  Location     Type
;  offset          1    wreg     unsigned char 
;  valeur          1    1[COMMON] unsigned char 
; Auto vars:     Size  Location     Type
;  offset          1    0[COMMON] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0
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
;		_write_and_verify_data_eeprom
; This function uses a non-reentrant model
; 
psect	text13
	file	"E:\Etudiant\telecom1\d_pic\Aeneas RUS LIN\d_pic_ii\prog_c\eeprom\eeprom.c"
	line	21
	global	__size_of_write_data_eeprom
	__size_of_write_data_eeprom	equ	__end_of_write_data_eeprom-_write_data_eeprom
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
	
_write_data_eeprom:	
	opt stack 6
; Regs used in _write_data_eeprom: [wreg+status,2+status,0]
;write_data_eeprom@offset stored from wreg
	movwf	(write_data_eeprom@offset)
	
l30000371:	
	line	22
;eeprom.c: 22: EEADR = offset;
	movf	(write_data_eeprom@offset),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	
l30000372:	
	line	23
;eeprom.c: 23: EEADRH = (offset>>8)& 0x1F;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(271)^0100h	;volatile
	line	25
;eeprom.c: 25: EEDATA = valeur;
	movf	(write_data_eeprom@valeur),w
	movwf	(268)^0100h	;volatile
	
l30000373:	
	line	26
;eeprom.c: 26: EEPGD = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3175/8)^0180h,(3175)&7
	
l30000374:	
	line	27
;eeprom.c: 27: WREN = 1;
	bsf	(3170/8)^0180h,(3170)&7
	
l30000375:	
	line	28
;eeprom.c: 28: GIE=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(95/8),(95)&7
	line	31
;eeprom.c: 31: EECON2=0x55;
	movlw	(055h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(397)^0180h	;volatile
	line	32
;eeprom.c: 32: EECON2=0xAA;
	movlw	(0AAh)
	movwf	(397)^0180h	;volatile
	
l30000376:	
	line	33
;eeprom.c: 33: WR=1;
	bsf	(3169/8)^0180h,(3169)&7
	
l30000377:	
	line	36
;eeprom.c: 36: GIE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(95/8),(95)&7
	
l30000378:	
	line	37
;eeprom.c: 37: WREN = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3170/8)^0180h,(3170)&7
	
l2:	
	line	38
	btfsc	(3169/8)^0180h,(3169)&7
	goto	u11
	goto	u10
u11:
	goto	l2
u10:
	
l1:	
	return
	opt stack 0
GLOBAL	__end_of_write_data_eeprom
	__end_of_write_data_eeprom:
; =============== function _write_data_eeprom ends ============

psect	text14,local,class=CODE,delta=2
global __ptext14
__ptext14:
	line	39
	signat	_write_data_eeprom,8312
	end
