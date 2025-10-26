opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6738"

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
# 3 "C:\shaas\OneDrive\shaas\EMB-CLASS\04.PIC16F\01.CODE\GSM\code\gsm.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "C:\shaas\OneDrive\shaas\EMB-CLASS\04.PIC16F\01.CODE\GSM\code\gsm.c"
	dw 0X3F3A ;#
	FNROOT	_main
	global	main@F522
	global	main@F518
	global	main@F514
	global	main@F520
	global	main@F516
	global	main@F512
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\shaas\OneDrive\shaas\EMB-CLASS\04.PIC16F\01.CODE\GSM\code\gsm.c"
	line	13

;initializer for main@F522
	retlw	041h
	retlw	054h
	retlw	048h
	retlw	0Dh
	retlw	0
	line	11

;initializer for main@F518
	retlw	01Ah
	retlw	0
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	line	9

;initializer for main@F514
	retlw	041h
	retlw	054h
	retlw	02Bh
	retlw	043h
	retlw	04Dh
	retlw	047h
	retlw	053h
	retlw	03Dh
	retlw	022h
	retlw	039h
	retlw	034h
	retlw	038h
	retlw	038h
	retlw	039h
	retlw	034h
	retlw	036h
	retlw	036h
	retlw	033h
	retlw	038h
	retlw	022h
	retlw	0Dh
	retlw	0
	line	12

;initializer for main@F520
	retlw	041h
	retlw	054h
	retlw	044h
	retlw	020h
	retlw	039h
	retlw	034h
	retlw	038h
	retlw	038h
	retlw	039h
	retlw	034h
	retlw	036h
	retlw	036h
	retlw	033h
	retlw	038h
	retlw	03Bh
	retlw	0Dh
	retlw	0
	line	10

;initializer for main@F516
	retlw	048h
	retlw	045h
	retlw	04Ch
	retlw	04Ch
	retlw	04Fh
	retlw	020h
	retlw	057h
	retlw	04Fh
	retlw	052h
	retlw	04Ch
	retlw	044h
	retlw	0
	line	8

;initializer for main@F512
	retlw	041h
	retlw	054h
	retlw	02Bh
	retlw	043h
	retlw	04Dh
	retlw	047h
	retlw	046h
	retlw	03Dh
	retlw	031h
	retlw	0Dh
	retlw	0
	global	_RCSTA
_RCSTA	set	24
	global	_TXREG
_TXREG	set	25
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_TXIF
_TXIF	set	100
	global	_SPBRG
_SPBRG	set	153
	global	_TRISD
_TRISD	set	136
	global	_TXSTA
_TXSTA	set	152
	file	"gsm.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\shaas\OneDrive\shaas\EMB-CLASS\04.PIC16F\01.CODE\GSM\code\gsm.c"
	line	13
main@F522:
       ds      5

psect	dataBANK0
	file	"C:\shaas\OneDrive\shaas\EMB-CLASS\04.PIC16F\01.CODE\GSM\code\gsm.c"
	line	11
main@F518:
       ds      2

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"C:\shaas\OneDrive\shaas\EMB-CLASS\04.PIC16F\01.CODE\GSM\code\gsm.c"
	line	9
main@F514:
       ds      22

psect	dataBANK1
	file	"C:\shaas\OneDrive\shaas\EMB-CLASS\04.PIC16F\01.CODE\GSM\code\gsm.c"
	line	12
main@F520:
       ds      17

psect	dataBANK1
	file	"C:\shaas\OneDrive\shaas\EMB-CLASS\04.PIC16F\01.CODE\GSM\code\gsm.c"
	line	10
main@F516:
       ds      12

psect	dataBANK1
	file	"C:\shaas\OneDrive\shaas\EMB-CLASS\04.PIC16F\01.CODE\GSM\code\gsm.c"
	line	8
main@F512:
       ds      11

global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK1
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK1+62)
	movwf btemp-1,f
	movlw high(__pidataBANK1)
	movwf btemp,f
	movlw low(__pidataBANK1)
	movwf btemp+1,f
	movlw low(__pdataBANK1)
	movwf fsr,f
	fcall init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	movlw low(__pdataBANK0+7)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
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
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@a2
main@a2:	; 22 bytes @ 0x0
	ds	22
	global	main@a5
main@a5:	; 17 bytes @ 0x16
	ds	17
	global	main@a3
main@a3:	; 12 bytes @ 0x27
	ds	12
	global	main@a1
main@a1:	; 11 bytes @ 0x33
	ds	11
	global	main@count
main@count:	; 2 bytes @ 0x3E
	ds	2
	global	main@a6
main@a6:	; 5 bytes @ 0x40
	ds	5
	global	main@a4
main@a4:	; 2 bytes @ 0x45
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x47
	ds	2
;;Data sizes: Strings 0, constant 0, data 69, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4       4
;; BANK0           80     73      80
;; BANK1           80      0      62
;; BANK3           96      0       0
;; BANK2           96      0       0

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
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                77    77      0     559
;;                                              0 COMMON     4     4      0
;;                                              0 BANK0     73    73      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0      3E       7       77.5%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      92      12        0.0%
;;ABS                  0      0      92       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       0       2        0.0%
;;BANK0               50     49      50       5      100.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      4       4       1       28.6%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 7 in file "C:\shaas\OneDrive\shaas\EMB-CLASS\04.PIC16F\01.CODE\GSM\code\gsm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  a2             22    0[BANK0 ] unsigned char [22]
;;  a5             17   22[BANK0 ] unsigned char [17]
;;  a3             12   39[BANK0 ] unsigned char [12]
;;  a1             11   51[BANK0 ] unsigned char [11]
;;  a6              5   64[BANK0 ] unsigned char [5]
;;  i               2   71[BANK0 ] int 
;;  a4              2   69[BANK0 ] unsigned char [2]
;;  count           2   62[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      73       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      73       0       0       0
;;Total ram usage:       77 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\shaas\OneDrive\shaas\EMB-CLASS\04.PIC16F\01.CODE\GSM\code\gsm.c"
	line	7
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0]
	line	8
	
l1852:	
;gsm.c: 8: char a1[]="AT+CMGF=1\r";
	movlw	(main@a1)&0ffh
	movwf	fsr0
	movlw	low(main@F512)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	11
	movwf	((??_main+0)+0+2)
u2370:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u2370
	line	9
;gsm.c: 9: char a2[]="AT+CMGS=\"9488946638\"\r";
	movlw	(main@a2)&0ffh
	movwf	fsr0
	movlw	low(main@F514)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	22
	movwf	((??_main+0)+0+2)
u2380:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u2380
	line	10
;gsm.c: 10: char a3[]="HELLO WORLD";
	movlw	(main@a3)&0ffh
	movwf	fsr0
	movlw	low(main@F516)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	12
	movwf	((??_main+0)+0+2)
u2390:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u2390
	line	11
	
l1854:	
;gsm.c: 11: char a4[]={0x1a,'\0'};
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@F518+1),w
	clrf	(main@a4+1)
	addwf	(main@a4+1)
	movf	(main@F518),w
	clrf	(main@a4)
	addwf	(main@a4)

	line	12
	
l1856:	
;gsm.c: 12: char a5[]="ATD 9488946638;\r";
	movlw	(main@a5)&0ffh
	movwf	fsr0
	movlw	low(main@F520)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	17
	movwf	((??_main+0)+0+2)
u2400:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u2400
	line	13
	
l1858:	
;gsm.c: 13: char a6[]="ATH\r";
	movlw	(main@a6)&0ffh
	movwf	fsr0
	movf	(main@F522),w
	movwf	indf
	incf	fsr0,f
	movf	(main@F522)+1,w
	movwf	indf
	incf	fsr0,f
	movf	(main@F522)+2,w
	movwf	indf
	incf	fsr0,f
	movf	(main@F522)+3,w
	movwf	indf
	incf	fsr0,f
	movf	(main@F522)+4,w
	movwf	indf
	line	15
	
l1860:	
;gsm.c: 14: int i;
;gsm.c: 15: int count=0;
	movlw	low(0)
	movwf	(main@count)
	movlw	high(0)
	movwf	((main@count))+1
	line	17
	
l1862:	
;gsm.c: 17: TRISD = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	19
	
l1864:	
;gsm.c: 19: TXSTA=0b00100100;
	movlw	(024h)
	movwf	(152)^080h	;volatile
	line	20
	
l1866:	
;gsm.c: 20: RCSTA=0b10010000;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	21
	
l1868:	
;gsm.c: 21: SPBRG=129;
	movlw	(081h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	goto	l1870
	line	23
;gsm.c: 23: while(1)
	
l573:	
	line	25
	
l1870:	
;gsm.c: 24: {
;gsm.c: 25: if(RD0==0)
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(64/8),(64)&7
	goto	u2411
	goto	u2410
u2411:
	goto	l574
u2410:
	line	27
	
l1872:	
;gsm.c: 26: {
;gsm.c: 27: for(i=0;a1[i]!='\0';i++)
	movlw	low(0)
	movwf	(main@i)
	movlw	high(0)
	movwf	((main@i))+1
	goto	l1878
	line	28
	
l576:	
	line	29
	
l1874:	
;gsm.c: 28: {
;gsm.c: 29: TXREG=a1[i];
	movf	(main@i),w
	addlw	main@a1&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(25)	;volatile
	line	30
;gsm.c: 30: while(TXIF==0);
	goto	l577
	
l578:	
	
l577:	
	btfss	(100/8),(100)&7
	goto	u2421
	goto	u2420
u2421:
	goto	l577
u2420:
	
l579:	
	line	31
;gsm.c: 31: TXIF=0;
	bcf	(100/8),(100)&7
	line	27
	
l1876:	
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	goto	l1878
	
l575:	
	
l1878:	
	movf	(main@i),w
	addlw	main@a1&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u2431
	goto	u2430
u2431:
	goto	l1874
u2430:
	goto	l1880
	
l580:	
	line	33
	
l1880:	
;gsm.c: 32: }
;gsm.c: 33: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_main+0)+0+2),f
movlw	163
movwf	((??_main+0)+0+1),f
	movlw	189
movwf	((??_main+0)+0),f
u2607:
	decfsz	((??_main+0)+0),f
	goto	u2607
	decfsz	((??_main+0)+0+1),f
	goto	u2607
	decfsz	((??_main+0)+0+2),f
	goto	u2607
	clrwdt
opt asmopt_on

	line	35
;gsm.c: 35: for(i=0;a2[i]!='\0';i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@i)
	movlw	high(0)
	movwf	((main@i))+1
	goto	l1886
	line	36
	
l582:	
	line	37
	
l1882:	
;gsm.c: 36: {
;gsm.c: 37: TXREG=a2[i];
	movf	(main@i),w
	addlw	main@a2&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(25)	;volatile
	line	38
;gsm.c: 38: while(TXIF==0);
	goto	l583
	
l584:	
	
l583:	
	btfss	(100/8),(100)&7
	goto	u2441
	goto	u2440
u2441:
	goto	l583
u2440:
	
l585:	
	line	39
;gsm.c: 39: TXIF=0;
	bcf	(100/8),(100)&7
	line	35
	
l1884:	
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	goto	l1886
	
l581:	
	
l1886:	
	movf	(main@i),w
	addlw	main@a2&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u2451
	goto	u2450
u2451:
	goto	l1882
u2450:
	goto	l1888
	
l586:	
	line	41
	
l1888:	
;gsm.c: 40: }
;gsm.c: 41: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_main+0)+0+2),f
movlw	163
movwf	((??_main+0)+0+1),f
	movlw	189
movwf	((??_main+0)+0),f
u2617:
	decfsz	((??_main+0)+0),f
	goto	u2617
	decfsz	((??_main+0)+0+1),f
	goto	u2617
	decfsz	((??_main+0)+0+2),f
	goto	u2617
	clrwdt
opt asmopt_on

	line	43
;gsm.c: 43: for(i=0;a3[i]!='\0';i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@i)
	movlw	high(0)
	movwf	((main@i))+1
	goto	l1894
	line	44
	
l588:	
	line	45
	
l1890:	
;gsm.c: 44: {
;gsm.c: 45: TXREG=a3[i];
	movf	(main@i),w
	addlw	main@a3&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(25)	;volatile
	line	46
;gsm.c: 46: while(TXIF==0);
	goto	l589
	
l590:	
	
l589:	
	btfss	(100/8),(100)&7
	goto	u2461
	goto	u2460
u2461:
	goto	l589
u2460:
	
l591:	
	line	47
;gsm.c: 47: TXIF=0;
	bcf	(100/8),(100)&7
	line	43
	
l1892:	
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	goto	l1894
	
l587:	
	
l1894:	
	movf	(main@i),w
	addlw	main@a3&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u2471
	goto	u2470
u2471:
	goto	l1890
u2470:
	goto	l1896
	
l592:	
	line	50
	
l1896:	
;gsm.c: 48: }
;gsm.c: 50: for(i=0;a4[i]!='\0';i++)
	movlw	low(0)
	movwf	(main@i)
	movlw	high(0)
	movwf	((main@i))+1
	goto	l1902
	line	51
	
l594:	
	line	52
	
l1898:	
;gsm.c: 51: {
;gsm.c: 52: TXREG=a4[i];
	movf	(main@i),w
	addlw	main@a4&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(25)	;volatile
	line	53
;gsm.c: 53: while(TXIF==0);
	goto	l595
	
l596:	
	
l595:	
	btfss	(100/8),(100)&7
	goto	u2481
	goto	u2480
u2481:
	goto	l595
u2480:
	
l597:	
	line	54
;gsm.c: 54: TXIF=0;
	bcf	(100/8),(100)&7
	line	50
	
l1900:	
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	goto	l1902
	
l593:	
	
l1902:	
	movf	(main@i),w
	addlw	main@a4&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u2491
	goto	u2490
u2491:
	goto	l1898
u2490:
	goto	l1904
	
l598:	
	line	56
	
l1904:	
;gsm.c: 55: }
;gsm.c: 56: TXREG='\r';
	movlw	(0Dh)
	movwf	(25)	;volatile
	line	57
;gsm.c: 57: while(TXIF==0);
	goto	l599
	
l600:	
	
l599:	
	btfss	(100/8),(100)&7
	goto	u2501
	goto	u2500
u2501:
	goto	l599
u2500:
	
l601:	
	line	58
;gsm.c: 58: TXIF=0;
	bcf	(100/8),(100)&7
	line	59
;gsm.c: 59: while(RD0==0);
	goto	l602
	
l603:	
	
l602:	
	btfss	(64/8),(64)&7
	goto	u2511
	goto	u2510
u2511:
	goto	l602
u2510:
	goto	l574
	
l604:	
	line	60
	
l574:	
	line	62
;gsm.c: 60: }
;gsm.c: 62: if(RD1==0)
	btfsc	(65/8),(65)&7
	goto	u2521
	goto	u2520
u2521:
	goto	l605
u2520:
	line	64
	
l1906:	
;gsm.c: 63: {
;gsm.c: 64: for(i=0;a5[i]!='\0';i++)
	movlw	low(0)
	movwf	(main@i)
	movlw	high(0)
	movwf	((main@i))+1
	goto	l1912
	line	65
	
l607:	
	line	66
	
l1908:	
;gsm.c: 65: {
;gsm.c: 66: TXREG=a5[i];
	movf	(main@i),w
	addlw	main@a5&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(25)	;volatile
	line	67
;gsm.c: 67: while(TXIF==0);
	goto	l608
	
l609:	
	
l608:	
	btfss	(100/8),(100)&7
	goto	u2531
	goto	u2530
u2531:
	goto	l608
u2530:
	
l610:	
	line	68
;gsm.c: 68: TXIF=0;
	bcf	(100/8),(100)&7
	line	64
	
l1910:	
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	goto	l1912
	
l606:	
	
l1912:	
	movf	(main@i),w
	addlw	main@a5&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u2541
	goto	u2540
u2541:
	goto	l1908
u2540:
	goto	l612
	
l611:	
	line	70
;gsm.c: 69: }
;gsm.c: 70: while(RD1==0);
	goto	l612
	
l613:	
	
l612:	
	btfss	(65/8),(65)&7
	goto	u2551
	goto	u2550
u2551:
	goto	l612
u2550:
	goto	l605
	
l614:	
	line	71
	
l605:	
	line	73
;gsm.c: 71: }
;gsm.c: 73: if(RD2==0)
	btfsc	(66/8),(66)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l1870
u2560:
	line	75
	
l1914:	
;gsm.c: 74: {
;gsm.c: 75: for(i=0;a6[i]!='\0';i++)
	movlw	low(0)
	movwf	(main@i)
	movlw	high(0)
	movwf	((main@i))+1
	goto	l1920
	line	76
	
l617:	
	line	77
	
l1916:	
;gsm.c: 76: {
;gsm.c: 77: TXREG=a6[i];
	movf	(main@i),w
	addlw	main@a6&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(25)	;volatile
	line	78
;gsm.c: 78: while(TXIF==0);
	goto	l618
	
l619:	
	
l618:	
	btfss	(100/8),(100)&7
	goto	u2571
	goto	u2570
u2571:
	goto	l618
u2570:
	
l620:	
	line	79
;gsm.c: 79: TXIF=0;
	bcf	(100/8),(100)&7
	line	75
	
l1918:	
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	goto	l1920
	
l616:	
	
l1920:	
	movf	(main@i),w
	addlw	main@a6&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u2581
	goto	u2580
u2581:
	goto	l1916
u2580:
	goto	l622
	
l621:	
	line	81
;gsm.c: 80: }
;gsm.c: 81: while(RD2==0);
	goto	l622
	
l623:	
	
l622:	
	btfss	(66/8),(66)&7
	goto	u2591
	goto	u2590
u2591:
	goto	l622
u2590:
	goto	l1870
	
l624:	
	goto	l1870
	line	82
	
l615:	
	goto	l1870
	line	83
	
l625:	
	line	23
	goto	l1870
	
l626:	
	line	84
	
l627:	
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
