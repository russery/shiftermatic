opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	12F683
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
# 12 "C:\RobertPersonal\Shiftermatic\Firmware\HAL.c"
	psect config,class=CONFIG,delta=2 ;#
# 12 "C:\RobertPersonal\Shiftermatic\Firmware\HAL.c"
	dw 0xFFFC & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF ;#
	FNROOT	_main
	global	_Timer
	global	_TMR0
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_TMR0	set	1
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_TMR2
_TMR2	set	17
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_GP5
_GP5	set	45
	global	_EEADR
_EEADR	set	155
	global	_EECON1
_EECON1	set	156
	global	_EECON2
_EECON2	set	157
	global	_EEDATA
_EEDATA	set	154
	global	_OSCCONbits
_OSCCONbits	set	143
	global	_RD
_RD	set	1248
	global	_TRISIO5
_TRISIO5	set	1069
	global	_WR
_WR	set	1249
	global	_WREN
_WREN	set	1250
	file	"ShifterMatic.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_Timer:
       ds      6

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
	clrf	((__pbssCOMMON)+5)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
	global	main@i
main@i:	; 4 bytes @ 0x0
	ds	4
;;Data sizes: Strings 0, constant 0, data 0, bss 6, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4      10
;; BANK0           80      0       0
;; BANK1           32      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 4     4      0      30
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      4       A       1       71.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       0       2        0.0%
;;BITBANK0            50      0       0       3        0.0%
;;BANK0               50      0       0       4        0.0%
;;BANK1               20      0       0       5        0.0%
;;ABS                  0      0       A       6        0.0%
;;BITBANK1            20      0       0       7        0.0%
;;DATA                 0      0       A       8        0.0%

	global	_main
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 11 in file "C:\RobertPersonal\Shiftermatic\Firmware\ShiftermaticMain.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               4    0[COMMON] long 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, btemp+1
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         4       0       0
;;      Temps:          0       0       0
;;      Totals:         4       0       0
;;Total ram usage:        4 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\RobertPersonal\Shiftermatic\Firmware\ShiftermaticMain.c"
	line	11
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+btemp+1]
	line	12
	
l2649:	
;ShiftermaticMain.c: 12: long i = 0;
	movlw	0
	movwf	(main@i+3)
	movlw	0
	movwf	(main@i+2)
	movlw	0
	movwf	(main@i+1)
	movlw	0
	movwf	(main@i)

	line	17
	
l2651:	
;ShiftermaticMain.c: 17: TRISIO5 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1069/8)^080h,(1069)&7
	line	18
	
l2653:	
;ShiftermaticMain.c: 18: GP5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(45/8),(45)&7
	goto	l2657
	line	20
;ShiftermaticMain.c: 20: while(1)
	
l447:	
	line	22
;ShiftermaticMain.c: 21: {
;ShiftermaticMain.c: 22: while(i<60000)
	goto	l2657
	
l449:	
	line	24
	
l2655:	
;ShiftermaticMain.c: 23: {
;ShiftermaticMain.c: 24: i++;
	movlw	01h
	addwf	(main@i),f
	movlw	0
	skipnc
movlw 1
	addwf	(main@i+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(main@i+2),f
	movlw	0
	skipnc
movlw 1
	addwf	(main@i+3),f
	goto	l2657
	line	25
	
l448:	
	line	22
	
l2657:	
	movf	(main@i+3),w
	xorlw	80h
	movwf	btemp+1
	movlw	0
	xorlw	80h
	subwf	btemp+1,w
	
	skipz
	goto	u13
	movlw	0
	subwf	(main@i+2),w
	skipz
	goto	u13
	movlw	0EAh
	subwf	(main@i+1),w
	skipz
	goto	u13
	movlw	060h
	subwf	(main@i),w
u13:
	skipc
	goto	u11
	goto	u10
u11:
	goto	l2655
u10:
	
l450:	
	line	27
;ShiftermaticMain.c: 25: }
;ShiftermaticMain.c: 27: GP5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(45/8),(45)&7
	line	29
	
l2659:	
;ShiftermaticMain.c: 29: i=0;
	movlw	0
	movwf	(main@i+3)
	movlw	0
	movwf	(main@i+2)
	movlw	0
	movwf	(main@i+1)
	movlw	0
	movwf	(main@i)

	line	31
;ShiftermaticMain.c: 31: while(i<60000)
	goto	l2663
	
l452:	
	line	33
	
l2661:	
;ShiftermaticMain.c: 32: {
;ShiftermaticMain.c: 33: i++;
	movlw	01h
	addwf	(main@i),f
	movlw	0
	skipnc
movlw 1
	addwf	(main@i+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(main@i+2),f
	movlw	0
	skipnc
movlw 1
	addwf	(main@i+3),f
	goto	l2663
	line	34
	
l451:	
	line	31
	
l2663:	
	movf	(main@i+3),w
	xorlw	80h
	movwf	btemp+1
	movlw	0
	xorlw	80h
	subwf	btemp+1,w
	
	skipz
	goto	u23
	movlw	0
	subwf	(main@i+2),w
	skipz
	goto	u23
	movlw	0EAh
	subwf	(main@i+1),w
	skipz
	goto	u23
	movlw	060h
	subwf	(main@i),w
u23:
	skipc
	goto	u21
	goto	u20
u21:
	goto	l2661
u20:
	
l453:	
	line	36
;ShiftermaticMain.c: 34: }
;ShiftermaticMain.c: 36: GP5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(45/8),(45)&7
	line	37
	
l2665:	
;ShiftermaticMain.c: 37: i=0;
	movlw	0
	movwf	(main@i+3)
	movlw	0
	movwf	(main@i+2)
	movlw	0
	movwf	(main@i+1)
	movlw	0
	movwf	(main@i)

	goto	l2657
	line	38
	
l454:	
	line	20
	goto	l2657
	
l455:	
	line	39
	
l456:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
psect	maintext
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
