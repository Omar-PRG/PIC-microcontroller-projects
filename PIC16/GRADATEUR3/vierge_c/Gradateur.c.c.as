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
;BANK0:	_main->_CCP
;COMMON:	_CCP->___fttol
;BANK0:	___fttol->___ftmul
;COMMON:	___ftmul->___awtoft
;COMMON:	___awtoft->___ftpack
;BANK0:	___awtoft->___ftpack
;BANK0:	___ftmul->___awtoft
;COMMON:	___awtoft->___ftpack
;BANK0:	___awtoft->___ftpack
;COMMON:	___fttol->___awtoft
;COMMON:	___awtoft->___ftpack
;BANK0:	___awtoft->___ftpack
;BANK0:	_CCP->___fttol
;BANK0:	___fttol->___ftmul
;COMMON:	___ftmul->___awtoft
;COMMON:	___awtoft->___ftpack
;BANK0:	___awtoft->___ftpack
;BANK0:	___ftmul->___awtoft
;COMMON:	___awtoft->___ftpack
;BANK0:	___awtoft->___ftpack
;COMMON:	___fttol->___awtoft
;COMMON:	___awtoft->___ftpack
;BANK0:	___awtoft->___ftpack
	FNCALL	_main,_init_port
	FNCALL	_main,_init_timer2
	FNCALL	_main,___wmul
	FNCALL	_main,_CCP
	FNCALL	_main,_tempo_p_ms
	FNCALL	_CCP,___awtoft
	FNCALL	_CCP,___ftmul
	FNCALL	_CCP,___fttol
	FNCALL	_tempo_p_ms,_tempo_1_ms
	FNCALL	_tempo_1_ms,_init_timer0
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNROOT	_main
	global	_debug
psect	text64,local,class=CODE,delta=2
global __ptext64
__ptext64:
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
	file	"Gradateur.c.c.as"
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
	global	??_init_port
??_init_port: ;@ 0x0
	global	?_init_timer2
?_init_timer2: ;@ 0x0
	global	??___wmul
??___wmul: ;@ 0x0
	global	?_init_port
?_init_port: ;@ 0x0
	global	??_init_timer2
??_init_timer2: ;@ 0x0
	global	?_tempo_1_ms
?_tempo_1_ms: ;@ 0x0
	global	??_tempo_1_ms
??_tempo_1_ms: ;@ 0x0
	global	??_init_timer0
??_init_timer0: ;@ 0x0
	global	?_init_timer0
?_init_timer0: ;@ 0x0
	global	??_tempo_p_ms
??_tempo_p_ms: ;@ 0x0
	global	??___ftpack
??___ftpack: ;@ 0x0
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x0
	ds	1
	global	tempo_p_ms@i
tempo_p_ms@i:	; 2 bytes @ 0x1
	ds	2
	global	??___awtoft
??___awtoft: ;@ 0x3
	global	?_tempo_p_ms
?_tempo_p_ms: ;@ 0x3
	global	tempo_p_ms@delay
tempo_p_ms@delay:	; 2 bytes @ 0x3
	ds	2
	global	??___fttol
??___fttol: ;@ 0x5
	ds	3
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?___wmul
?___wmul: ;@ 0x0
	global	?___ftpack
?___ftpack: ;@ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	ds	1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	??_main
??_main: ;@ 0x4
	global	??_CCP
??_CCP: ;@ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	ds	1
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x5
	ds	1
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x6
	global	?___awtoft
?___awtoft: ;@ 0x6
	ds	3
	global	??___ftmul
??___ftmul: ;@ 0x9
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0xD
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0xE
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x11
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x12
	ds	1
	global	?___ftmul
?___ftmul: ;@ 0x13
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x13
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x16
	ds	3
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x19
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x1A
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x1E
	ds	1
	global	?___fttol
?___fttol: ;@ 0x1F
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x1F
	ds	4
	global	?_CCP
?_CCP: ;@ 0x23
	global	CCP@alpha
CCP@alpha:	; 2 bytes @ 0x23
	ds	2
	global	main@cpt1
main@cpt1:	; 2 bytes @ 0x25
	ds	2
	global	?_main
?_main: ;@ 0x27
;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          13      8       8
; BANK0           80     39      39
; BANK1           80      0       0
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:

;?___fttol	long  size(1); Largest target is 0
;?___ftmul	float  size(1); Largest target is 0
;?___awtoft	float  size(1); Largest target is 0
;?___wmul	unsigned int  size(1); Largest target is 0
;?___ftpack	float  size(1); Largest target is 0


;Main: autosize = 0, tempsize = 0, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                2    0 2105   0.00
;                                   37 BANK0    2
;          _init_port
;        _init_timer2
;             ___wmul
;                _CCP
;         _tempo_p_ms
;  _CCP                                               0    2 1952   0.00
;                                   35 BANK0    2
;           ___awtoft
;            ___ftmul
;            ___fttol
;             ___wmul (ARG)
;  _tempo_p_ms                                        3    2   34   0.00
;                                    0 COMMO    5
;         _tempo_1_ms
;  ___wmul                                            2    4   68   0.00
;                                    0 COMMO    2
;                                    0 BANK0    4
;  _init_port                                         0    0    0   0.00
;  _init_timer2                                       0    0    0   0.00
;    ___fttol                                         9    4 1027   0.00
;                                    5 COMMO    3
;                                   25 BANK0   10
;            ___ftmul (ARG)
;           ___awtoft (ARG)
;    _tempo_1_ms                                      0    0    0   0.00
;        _init_timer0
;    ___awtoft                                        3    3  222   0.00
;                                    3 COMMO    2
;                                    5 BANK0    4
;           ___ftpack
;    ___ftmul                                        10    6  619   0.00
;                                    9 BANK0   16
;           ___awtoft (ARG)
;           ___ftpack
;      _init_timer0                                   0    0    0   0.00
;      ___ftpack                                      3    5  155   0.00
;                                    0 COMMO    3
;                                    0 BANK0    5
; Estimated maximum call depth 3
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            D      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               D      8       8       1       61.5%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;BITSFR1              0      0       0       2        0.0%
;SFR1                 0      0       0       2        0.0%
;ABS                  0      0       C       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50     27      27       5       48.8%
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
;		line 84 in file "G:\GRADATEUR3\vierge_c\Gradateur.c.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  cpt1            2   37[BANK0 ] int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+0, btemp+1, btemp+2, btemp+3, pclath, cstack
; Tracked objects:
;		On entry : 17F/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       2       0       0       0
;      Temp:     0
;      Total:    2
; This function calls:
;		_init_port
;		_init_timer2
;		___wmul
;		_CCP
;		_tempo_p_ms
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"G:\GRADATEUR3\vierge_c\Gradateur.c.c"
	line	84
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;Gradateur.c.c: 82: void main(void)
;Gradateur.c.c: 84: {
	
_main:	
	opt stack 8
; Regs used in _main: [allreg]
	line	85
	
l30000535:	
;Gradateur.c.c: 85: init_port();
	fcall	_init_port
	line	86
;Gradateur.c.c: 86: init_timer2();
	fcall	_init_timer2
	
l30000536:	
	line	87
;Gradateur.c.c: 87: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	
l30000537:	
	line	88
;Gradateur.c.c: 88: int cpt1=0;
	movlw	low(0)
	movwf	(main@cpt1)
	movlw	high(0)
	movwf	((main@cpt1))+1
	goto	l30000541
	
l30000538:	
	line	93
;Gradateur.c.c: 92: {
;Gradateur.c.c: 93: cpt1++;
	movlw	low(01h)
	addwf	(main@cpt1),f
	skipnc
	incf	(main@cpt1+1),f
	movlw	high(01h)
	addwf	(main@cpt1+1),f
	
l30000539:	
	line	94
;Gradateur.c.c: 94: CCP(5*cpt1);
	movf	(main@cpt1+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(main@cpt1),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(05h)
	movwf	0+(?___wmul)+02h
	movlw	high(05h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___wmul)),w
	clrf	(?_CCP+1)
	addwf	(?_CCP+1)
	movf	(0+(?___wmul)),w
	clrf	(?_CCP)
	addwf	(?_CCP)

	fcall	_CCP
	
l30000540:	
	line	95
;Gradateur.c.c: 95: tempo_p_ms(500);
	movlw	low(01F4h)
	movwf	(?_tempo_p_ms)
	movlw	high(01F4h)
	movwf	((?_tempo_p_ms))+1
	fcall	_tempo_p_ms
	
l30000541:	
	line	91
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u611
	goto	u610
u611:
	goto	l30000538
u610:
	goto	l27
	
l30000542:	
	line	102
;Gradateur.c.c: 101: {
;Gradateur.c.c: 102: cpt1--;
	movlw	low(-1)
	addwf	(main@cpt1),f
	skipnc
	incf	(main@cpt1+1),f
	movlw	high(-1)
	addwf	(main@cpt1+1),f
	
l30000543:	
	line	103
;Gradateur.c.c: 103: CCP(5*cpt1);
	movf	(main@cpt1+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(main@cpt1),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(05h)
	movwf	0+(?___wmul)+02h
	movlw	high(05h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___wmul)),w
	clrf	(?_CCP+1)
	addwf	(?_CCP+1)
	movf	(0+(?___wmul)),w
	clrf	(?_CCP)
	addwf	(?_CCP)

	fcall	_CCP
	
l30000544:	
	line	104
;Gradateur.c.c: 104: tempo_p_ms(500);
	movlw	low(01F4h)
	movwf	(?_tempo_p_ms)
	movlw	high(01F4h)
	movwf	((?_tempo_p_ms))+1
	fcall	_tempo_p_ms
	
l30000545:	
	line	105
;Gradateur.c.c: 105: }while(cpt1>=0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(main@cpt1+1),7
	goto	u621
	goto	u620
u621:
	goto	l30000542
u620:
	
l27:	
	line	98
	btfss	(44/8),(44)&7
	goto	u631
	goto	u630
u631:
	goto	l30000542
u630:
	goto	l30000541
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	109
	signat	_main,88
	global	_CCP
psect	text65,local,class=CODE,delta=2
global __ptext65
__ptext65:

; *************** function _CCP *****************
; Defined at:
;		line 75 in file "G:\GRADATEUR3\vierge_c\Gradateur.c.c"
; Parameters:    Size  Location     Type
;  alpha           2   35[BANK0 ] int 
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+0, btemp+1, btemp+2, btemp+3, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       2       0       0       0
;      Temp:     0
;      Total:    2
; This function calls:
;		___awtoft
;		___ftmul
;		___fttol
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text65
	file	"G:\GRADATEUR3\vierge_c\Gradateur.c.c"
	line	75
	global	__size_of_CCP
	__size_of_CCP	equ	__end_of_CCP-_CCP
;Gradateur.c.c: 74: void CCP(int alpha)
;Gradateur.c.c: 75: {
	
_CCP:	
	opt stack 7
; Regs used in _CCP: [allreg]
	line	76
	
l30000533:	
;Gradateur.c.c: 76: CCP1CON=0b00001100;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(23)	;volatile
	
l30000534:	
	line	77
;Gradateur.c.c: 77: CCPR1L=2.5*alpha;
	movf	(CCP@alpha+1),w
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(CCP@alpha),w
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	(?___ftmul)
	movf	(1+(?___awtoft)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___awtoft)),w
	movwf	(?___ftmul+2)
	movlw	0x0
	movwf	0+(?___ftmul)+03h
	movlw	0x20
	movwf	1+(?___ftmul)+03h
	movlw	0x40
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?___fttol)
	movf	(1+(?___ftmul)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftmul)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fttol)),w
	movwf	(21)	;volatile
	
l19:	
	return
	opt stack 0
GLOBAL	__end_of_CCP
	__end_of_CCP:
; =============== function _CCP ends ============

psect	text66,local,class=CODE,delta=2
global __ptext66
__ptext66:
	line	79
	signat	_CCP,4216
	global	_tempo_p_ms

; *************** function _tempo_p_ms *****************
; Defined at:
;		line 69 in file "G:\GRADATEUR3\vierge_c\Gradateur.c.c"
; Parameters:    Size  Location     Type
;  delay           2    3[COMMON] int 
; Auto vars:     Size  Location     Type
;  i               2    1[COMMON] int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         5       0       0       0       0
;      Temp:     1
;      Total:    5
; This function calls:
;		_tempo_1_ms
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text66
	file	"G:\GRADATEUR3\vierge_c\Gradateur.c.c"
	line	69
	global	__size_of_tempo_p_ms
	__size_of_tempo_p_ms	equ	__end_of_tempo_p_ms-_tempo_p_ms
;Gradateur.c.c: 68: void tempo_p_ms(int delay)
;Gradateur.c.c: 69: {
	
_tempo_p_ms:	
	opt stack 7
; Regs used in _tempo_p_ms: [wreg+status,2+status,0+pclath+cstack]
	line	71
	
l30000594:	
;Gradateur.c.c: 70: int i;
;Gradateur.c.c: 71: for(i=0; i<delay; i++)
	movlw	low(0)
	movwf	(tempo_p_ms@i)
	movlw	high(0)
	movwf	((tempo_p_ms@i))+1
	goto	l30000597
	
l30000595:	
	line	72
;Gradateur.c.c: 72: tempo_1_ms();
	fcall	_tempo_1_ms
	
l30000596:	
	line	71
	movlw	low(01h)
	addwf	(tempo_p_ms@i),f
	skipnc
	incf	(tempo_p_ms@i+1),f
	movlw	high(01h)
	addwf	(tempo_p_ms@i+1),f
	
l30000597:	
	movf	(tempo_p_ms@i+1),w
	xorlw	80h
	movwf	(??_tempo_p_ms+0+0)
	movf	(tempo_p_ms@delay+1),w
	xorlw	80h
	subwf	(??_tempo_p_ms+0+0),w
	skipz
	goto	u915
	movf	(tempo_p_ms@delay),w
	subwf	(tempo_p_ms@i),w
u915:

	skipc
	goto	u911
	goto	u910
u911:
	goto	l30000595
u910:
	
l14:	
	return
	opt stack 0
GLOBAL	__end_of_tempo_p_ms
	__end_of_tempo_p_ms:
; =============== function _tempo_p_ms ends ============

psect	text67,local,class=CODE,delta=2
global __ptext67
__ptext67:
	line	73
	signat	_tempo_p_ms,4216
	global	___wmul

; *************** function ___wmul *****************
; Defined at:
;		line 3 in file "C:\Program Files\HI-TECH Software\PICC\9.70\sources\wmul.c"
; Parameters:    Size  Location     Type
;  multiplier      2    0[BANK0 ] unsigned int 
;  multiplicand    2    2[BANK0 ] unsigned int 
; Auto vars:     Size  Location     Type
;  product         2    0[COMMON] unsigned int 
; Return value:  Size  Location     Type
;                  2    0[BANK0 ] unsigned int 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         2       4       0       0       0
;      Temp:     0
;      Total:    6
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text67
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt stack 7
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l30000566:	
	movlw	low(0)
	movwf	(___wmul@product)
	movlw	high(0)
	movwf	((___wmul@product))+1
	
l30000567:	
	line	7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___wmul@multiplier),(0)&7
	goto	u771
	goto	u770
u771:
	goto	l42
u770:
	
l30000568:	
	line	8
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l42:	
	line	9
	movlw	01h
u785:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u785
	
l30000569:	
	line	10
	movlw	01h
u795:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u795
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u801
	goto	u800
u801:
	goto	l30000567
u800:
	
l30000570:	
	line	12
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	
l38:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
; =============== function ___wmul ends ============

psect	text68,local,class=CODE,delta=2
global __ptext68
__ptext68:
	line	13
	signat	___wmul,8314
	global	_init_port

; *************** function _init_port *****************
; Defined at:
;		line 30 in file "G:\GRADATEUR3\vierge_c\Gradateur.c.c"
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
psect	text68
	file	"G:\GRADATEUR3\vierge_c\Gradateur.c.c"
	line	30
	global	__size_of_init_port
	__size_of_init_port	equ	__end_of_init_port-_init_port
;Gradateur.c.c: 29: void init_port(void)
;Gradateur.c.c: 30: {
	
_init_port:	
	opt stack 7
; Regs used in _init_port: [wreg+status,2+status,0]
	line	31
	
l30000598:	
;Gradateur.c.c: 31: TRISA=0x10;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	32
;Gradateur.c.c: 32: TRISB=0x01;
	movlw	(01h)
	movwf	(134)^080h	;volatile
	
l30000599:	
	line	33
;Gradateur.c.c: 33: TRISC=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(135)^080h	;volatile
	
l6:	
	return
	opt stack 0
GLOBAL	__end_of_init_port
	__end_of_init_port:
; =============== function _init_port ends ============

psect	text69,local,class=CODE,delta=2
global __ptext69
__ptext69:
	line	34
	signat	_init_port,88
	global	_init_timer2

; *************** function _init_timer2 *****************
; Defined at:
;		line 38 in file "G:\GRADATEUR3\vierge_c\Gradateur.c.c"
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
psect	text69
	file	"G:\GRADATEUR3\vierge_c\Gradateur.c.c"
	line	38
	global	__size_of_init_timer2
	__size_of_init_timer2	equ	__end_of_init_timer2-_init_timer2
;Gradateur.c.c: 36: void init_timer2(void)
;Gradateur.c.c: 38: {
	
_init_timer2:	
	opt stack 7
; Regs used in _init_timer2: [wreg]
	line	39
	
l30000600:	
;Gradateur.c.c: 39: T2CON=0x07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(18)	;volatile
	line	40
;Gradateur.c.c: 40: PR2=249;
	movlw	(0F9h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	
l7:	
	return
	opt stack 0
GLOBAL	__end_of_init_timer2
	__end_of_init_timer2:
; =============== function _init_timer2 ends ============

psect	text70,local,class=CODE,delta=2
global __ptext70
__ptext70:
	line	41
	signat	_init_timer2,88
	global	___fttol

; *************** function ___fttol *****************
; Defined at:
;		line 45 in file "C:\Program Files\HI-TECH Software\PICC\9.70\sources\fttol.c"
; Parameters:    Size  Location     Type
;  f1              3   31[BANK0 ] float 
; Auto vars:     Size  Location     Type
;  lval            4   26[BANK0 ] unsigned long 
;  exp1            1   30[BANK0 ] unsigned char 
;  sign1           1   25[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  4   31[BANK0 ] long 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         3      10       0       0       0
;      Temp:     3
;      Total:   13
; This function calls:
; This function is called by:
;		_CCP
; This function uses a non-reentrant model
; 
psect	text70
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt stack 6
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l30000572:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fttol@f1),w
	movwf	(??___fttol+0+0)
	movf	(___fttol@f1+1),w
	movwf	(??___fttol+0+0+1)
	movf	(___fttol@f1+2),w
	movwf	(??___fttol+0+0+2)
	clrc
	rlf	(??___fttol+0+1),w
	rlf	(??___fttol+0+2),w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1))&07fh,f
	skipz
	goto	u811
	goto	u810
u811:
	goto	l30000575
u810:
	
l30000573:	
	line	50
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l164
	
l30000575:	
	line	51
	movf	(___fttol@f1),w
	movwf	(??___fttol+0+0)
	movf	(___fttol@f1+1),w
	movwf	(??___fttol+0+0+1)
	movf	(___fttol@f1+2),w
	movwf	(??___fttol+0+0+2)
	movlw	017h
u825:
	clrc
	rrf	(??___fttol+0+2),f
	rrf	(??___fttol+0+1),f
	rrf	(??___fttol+0+0),f
u820:
	addlw	-1
	skipz
	goto	u825
	movf	0+(??___fttol+0+0),w
	movwf	(___fttol@sign1)
	
l30000576:	
	line	52
	bsf	(___fttol@f1)+(15/8),(15)&7
	
l30000577:	
	line	53
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	
l30000578:	
	line	54
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	
	clrf	3+(___fttol@lval)
	
l30000579:	
	line	55
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	
l30000580:	
	line	56
	btfss	(___fttol@exp1),7
	goto	u831
	goto	u830
u831:
	goto	l30000585
u830:
	
l30000581:	
	line	57
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u841
	goto	u840
u841:
	goto	l30000584
u840:
	goto	l30000573
	
l30000584:	
	line	60
	movlw	01h
u855:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u855

	line	61
	movlw	(01h)
	movwf	(??___fttol+0+0)
	movf	(??___fttol+0+0),w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u861
	goto	u860
u861:
	goto	l30000584
u860:
	goto	l30000590
	
l30000585:	
	line	63
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u871
	goto	u870
u871:
	goto	l30000589
u870:
	goto	l30000573
	
l30000588:	
	line	66
	movlw	01h
	movwf	(??___fttol+0+0)
u885:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0+0)
	goto	u885
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	
l30000589:	
	line	65
	movf	(___fttol@exp1),f
	skipz
	goto	u891
	goto	u890
u891:
	goto	l30000588
u890:
	
l30000590:	
	line	70
	movf	(___fttol@sign1),w
	skipz
	goto	u900
	goto	l30000592
u900:
	
l30000591:	
	line	71
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	
l30000592:	
	line	72
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	
l164:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
; =============== function ___fttol ends ============

psect	text71,local,class=CODE,delta=2
global __ptext71
__ptext71:
	line	73
	signat	___fttol,4220
	global	_tempo_1_ms

; *************** function _tempo_1_ms *****************
; Defined at:
;		line 61 in file "G:\GRADATEUR3\vierge_c\Gradateur.c.c"
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
;		_init_timer0
; This function is called by:
;		_tempo_p_ms
; This function uses a non-reentrant model
; 
psect	text71
	file	"G:\GRADATEUR3\vierge_c\Gradateur.c.c"
	line	61
	global	__size_of_tempo_1_ms
	__size_of_tempo_1_ms	equ	__end_of_tempo_1_ms-_tempo_1_ms
;Gradateur.c.c: 60: void tempo_1_ms(void)
;Gradateur.c.c: 61: {
	
_tempo_1_ms:	
	opt stack 6
; Regs used in _tempo_1_ms: [wreg+status,2+status,0+pclath+cstack]
	line	62
	
l30000601:	
;Gradateur.c.c: 62: init_timer0();
	fcall	_init_timer0
	
l11:	
	line	63
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(90/8),(90)&7
	goto	u921
	goto	u920
u921:
	goto	l11
u920:
	
l13:	
	line	64
;Gradateur.c.c: 64: T0IF=0;
	bcf	(90/8),(90)&7
	
l30000602:	
	line	65
;Gradateur.c.c: 65: TMR0=6;
	movlw	(06h)
	movwf	(1)	;volatile
	
l10:	
	return
	opt stack 0
GLOBAL	__end_of_tempo_1_ms
	__end_of_tempo_1_ms:
; =============== function _tempo_1_ms ends ============

psect	text72,local,class=CODE,delta=2
global __ptext72
__ptext72:
	line	66
	signat	_tempo_1_ms,88
	global	___awtoft

; *************** function ___awtoft *****************
; Defined at:
;		line 33 in file "C:\Program Files\HI-TECH Software\PICC\9.70\sources\awtoft.c"
; Parameters:    Size  Location     Type
;  c               2    6[BANK0 ] int 
; Auto vars:     Size  Location     Type
;  sign            1    5[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  3    6[BANK0 ] float 
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         2       4       0       0       0
;      Temp:     2
;      Total:    6
; This function calls:
;		___ftpack
; This function is called by:
;		_CCP
; This function uses a non-reentrant model
; 
psect	text72
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt stack 6
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l30000561:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awtoft@sign)
	
l30000562:	
	line	37
	btfss	(___awtoft@c+1),7
	goto	u761
	goto	u760
u761:
	goto	l30000564
u760:
	
l30000563:	
	line	38
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	
l30000564:	
	line	41
	movf	(___awtoft@c),w
	movwf	(?___ftpack)
	movf	(___awtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___awtoft+0+0)
	movf	(??___awtoft+0+0),w
	movwf	0+(?___ftpack)+03h
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1+0)
	movf	(??___awtoft+1+0),w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	
l180:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
; =============== function ___awtoft ends ============

psect	text73,local,class=CODE,delta=2
global __ptext73
__ptext73:
	line	42
	signat	___awtoft,4219
	global	___ftmul

; *************** function ___ftmul *****************
; Defined at:
;		line 52 in file "C:\Program Files\HI-TECH Software\PICC\9.70\sources\ftmul.c"
; Parameters:    Size  Location     Type
;  f1              3   19[BANK0 ] float 
;  f2              3   22[BANK0 ] float 
; Auto vars:     Size  Location     Type
;  f3_as_produc    3   14[BANK0 ] unsigned um
;  sign            1   18[BANK0 ] unsigned char 
;  cntr            1   17[BANK0 ] unsigned char 
;  exp             1   13[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  3   19[BANK0 ] float 
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0      16       0       0       0
;      Temp:     4
;      Total:   16
; This function calls:
;		___ftpack
; This function is called by:
;		_CCP
; This function uses a non-reentrant model
; 
psect	text73
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt stack 6
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l30000508:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	(??___ftmul+0+0)
	movf	(___ftmul@f1+1),w
	movwf	(??___ftmul+0+0+1)
	movf	(___ftmul@f1+2),w
	movwf	(??___ftmul+0+0+2)
	clrc
	rlf	(??___ftmul+0+1),w
	rlf	(??___ftmul+0+2),w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp))&07fh,f
	skipz
	goto	u471
	goto	u470
u471:
	goto	l30000511
u470:
	
l30000509:	
	line	57
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l111
	
l30000511:	
	line	58
	movf	(___ftmul@f2),w
	movwf	(??___ftmul+0+0)
	movf	(___ftmul@f2+1),w
	movwf	(??___ftmul+0+0+1)
	movf	(___ftmul@f2+2),w
	movwf	(??___ftmul+0+0+2)
	clrc
	rlf	(??___ftmul+0+1),w
	rlf	(??___ftmul+0+2),w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign))&07fh,f
	skipz
	goto	u481
	goto	u480
u481:
	goto	l30000514
u480:
	
l30000512:	
	line	59
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l111
	
l30000514:	
	line	60
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0+0)
	movf	(??___ftmul+0+0),w
	addwf	(___ftmul@exp),f
	line	61
	movf	(___ftmul@f1),w
	movwf	(??___ftmul+0+0)
	movf	(___ftmul@f1+1),w
	movwf	(??___ftmul+0+0+1)
	movf	(___ftmul@f1+2),w
	movwf	(??___ftmul+0+0+2)
	movlw	010h
u495:
	clrc
	rrf	(??___ftmul+0+2),f
	rrf	(??___ftmul+0+1),f
	rrf	(??___ftmul+0+0),f
u490:
	addlw	-1
	skipz
	goto	u495
	movf	0+(??___ftmul+0+0),w
	movwf	(___ftmul@sign)
	line	62
	movf	(___ftmul@f2),w
	movwf	(??___ftmul+0+0)
	movf	(___ftmul@f2+1),w
	movwf	(??___ftmul+0+0+1)
	movf	(___ftmul@f2+2),w
	movwf	(??___ftmul+0+0+2)
	movlw	010h
u505:
	clrc
	rrf	(??___ftmul+0+2),f
	rrf	(??___ftmul+0+1),f
	rrf	(??___ftmul+0+0),f
u500:
	addlw	-1
	skipz
	goto	u505
	movf	0+(??___ftmul+0+0),w
	movwf	(??___ftmul+3+0)
	movf	(??___ftmul+3+0),w
	xorwf	(___ftmul@sign),f
	line	63
	movlw	(080h)
	movwf	(??___ftmul+0+0)
	movf	(??___ftmul+0+0),w
	andwf	(___ftmul@sign),f
	
l30000515:	
	line	64
	bsf	(___ftmul@f1)+(15/8),(15)&7
	
l30000516:	
	line	66
	bsf	(___ftmul@f2)+(15/8),(15)&7
	
l30000517:	
	line	67
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	
l30000518:	
	line	68
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	
l30000519:	
	line	69
	movlw	(07h)
	movwf	(___ftmul@cntr)
	
l30000520:	
	line	71
	btfss	(___ftmul@f1),(0)&7
	goto	u511
	goto	u510
u511:
	goto	l30000522
u510:
	
l30000521:	
	line	72
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u521
	addwf	(___ftmul@f3_as_product+1),f
u521:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u522
	addwf	(___ftmul@f3_as_product+2),f
u522:

	
l30000522:	
	line	73
	movlw	01h
u535:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u535

	
l30000523:	
	line	74
	movlw	01h
u545:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u545
	
l30000524:	
	line	75
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u551
	goto	u550
u551:
	goto	l30000520
u550:
	
l30000525:	
	line	76
	movlw	(09h)
	movwf	(___ftmul@cntr)
	
l30000526:	
	line	78
	btfss	(___ftmul@f1),(0)&7
	goto	u561
	goto	u560
u561:
	goto	l30000528
u560:
	
l30000527:	
	line	79
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u571
	addwf	(___ftmul@f3_as_product+1),f
u571:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u572
	addwf	(___ftmul@f3_as_product+2),f
u572:

	
l30000528:	
	line	80
	movlw	01h
u585:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u585

	
l30000529:	
	line	81
	movlw	01h
u595:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u595

	
l30000530:	
	line	82
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u601
	goto	u600
u601:
	goto	l30000526
u600:
	
l30000531:	
	line	83
	movf	(___ftmul@f3_as_product),w
	movwf	(?___ftpack)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(?___ftpack+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(?___ftpack+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0+0)
	movf	(??___ftmul+0+0),w
	movwf	0+(?___ftpack)+03h
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1+0)
	movf	(??___ftmul+1+0),w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	
l111:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
; =============== function ___ftmul ends ============

psect	text74,local,class=CODE,delta=2
global __ptext74
__ptext74:
	line	84
	signat	___ftmul,8315
	global	_init_timer0

; *************** function _init_timer0 *****************
; Defined at:
;		line 50 in file "G:\GRADATEUR3\vierge_c\Gradateur.c.c"
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
;		_tempo_1_ms
; This function uses a non-reentrant model
; 
psect	text74
	file	"G:\GRADATEUR3\vierge_c\Gradateur.c.c"
	line	50
	global	__size_of_init_timer0
	__size_of_init_timer0	equ	__end_of_init_timer0-_init_timer0
;Gradateur.c.c: 49: void init_timer0(void)
;Gradateur.c.c: 50: {
	
_init_timer0:	
	opt stack 5
; Regs used in _init_timer0: [wreg]
	line	51
	
l30000603:	
;Gradateur.c.c: 51: T0CS=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1037/8)^080h,(1037)&7
	line	52
;Gradateur.c.c: 52: T0SE=0;
	bcf	(1036/8)^080h,(1036)&7
	line	53
;Gradateur.c.c: 53: PSA=0;
	bcf	(1035/8)^080h,(1035)&7
	line	54
;Gradateur.c.c: 54: PS2=0; PS1=0; PS0=1;
	bcf	(1034/8)^080h,(1034)&7
	bcf	(1033/8)^080h,(1033)&7
	bsf	(1032/8)^080h,(1032)&7
	
l30000604:	
	line	55
;Gradateur.c.c: 55: TMR0=6;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	
l30000605:	
	line	56
;Gradateur.c.c: 56: T0IF=0;
	bcf	(90/8),(90)&7
	
l9:	
	return
	opt stack 0
GLOBAL	__end_of_init_timer0
	__end_of_init_timer0:
; =============== function _init_timer0 ends ============

psect	text75,local,class=CODE,delta=2
global __ptext75
__ptext75:
	line	57
	signat	_init_timer0,88
	global	___ftpack

; *************** function ___ftpack *****************
; Defined at:
;		line 63 in file "C:\Program Files\HI-TECH Software\PICC\9.70\sources\float.c"
; Parameters:    Size  Location     Type
;  arg             3    0[BANK0 ] unsigned um
;  exp             1    3[BANK0 ] unsigned char 
;  sign            1    4[BANK0 ] unsigned char 
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;                  3    0[BANK0 ] float 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         3       5       0       0       0
;      Temp:     3
;      Total:    8
; This function calls:
;		Nothing
; This function is called by:
;		___ftmul
;		___awtoft
; This function uses a non-reentrant model
; 
psect	text75
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt stack 5
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l30000546:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u640
	goto	l30000548
u640:
	
l30000547:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u651
	goto	u650
u651:
	goto	l30000551
u650:
	
l30000548:	
	line	65
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l367
	
l30000550:	
	line	67
	movlw	(01h)
	movwf	(??___ftpack+0+0)
	movf	(??___ftpack+0+0),w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u665:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u665

	
l30000551:	
	line	66
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u671
	goto	u670
u671:
	goto	l30000550
u670:
	goto	l372
	
l30000552:	
	line	71
	movlw	(01h)
	movwf	(??___ftpack+0+0)
	movf	(??___ftpack+0+0),w
	addwf	(___ftpack@exp),f
	
l30000553:	
	line	72
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u681
	addwf	(___ftpack@arg+1),f
u681:
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u682
	addwf	(___ftpack@arg+2),f
u682:

	
l30000554:	
	line	73
	movlw	01h
u695:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u695

	
l372:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u701
	goto	u700
u701:
	goto	l30000552
u700:
	goto	l30000556
	
l30000555:	
	line	76
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u715:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u715
	
l30000556:	
	line	75
	btfss	(___ftpack@arg+1),(15)&7
	goto	u721
	goto	u720
u721:
	goto	l30000555
u720:
	
l377:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u731
	goto	u730
u731:
	goto	l378
u730:
	
l30000557:	
	line	80
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l378:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	
l30000558:	
	line	82
	movf	(___ftpack@exp),w
	movwf	(??___ftpack+0+0)
	clrf	(??___ftpack+0+0+1)
	clrf	(??___ftpack+0+0+2)
	movlw	010h
u745:
	clrc
	rlf	(??___ftpack+0+0),f
	rlf	(??___ftpack+0+1),f
	rlf	(??___ftpack+0+2),f
u740:
	addlw	-1
	skipz
	goto	u745
	movf	0+(??___ftpack+0+0),w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0+0),w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0+0),w
	iorwf	(___ftpack@arg+2),f
	
l30000559:	
	line	83
	movf	(___ftpack@sign),w
	skipz
	goto	u750
	goto	l379
u750:
	
l30000560:	
	line	84
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l379:	
	line	85
	
l367:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
; =============== function ___ftpack ends ============

psect	text76,local,class=CODE,delta=2
global __ptext76
__ptext76:
	line	86
	signat	___ftpack,12411
	end
