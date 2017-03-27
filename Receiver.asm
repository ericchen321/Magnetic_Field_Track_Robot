;--------------------------------------------------------
; File Created by C51
; Version 1.0.0 #1069 (Apr 23 2015) (MSVC)
; This file was generated Sun Mar 26 19:18:25 2017
;--------------------------------------------------------
$name Receiver
$optc51 --model-small
$printf_float
	R_DSEG    segment data
	R_CSEG    segment code
	R_BSEG    segment bit
	R_XSEG    segment xdata
	R_PSEG    segment xdata
	R_ISEG    segment idata
	R_OSEG    segment data overlay
	BIT_BANK  segment data overlay
	R_HOME    segment code
	R_GSINIT  segment code
	R_IXSEG   segment xdata
	R_CONST   segment code
	R_XINIT   segment code
	R_DINIT   segment code

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	public _InitPinADC_PARM_2
	public _main
	public _MotorControl
	public _UserInterface
	public _ReadFrequency
	public _Timer2_ISR
	public _Volts_at_Pin
	public _ADC_at_Pin
	public _InitPinADC
	public _InitADC
	public _TIMER2_Init
	public _TIMER0_Init
	public _waitms
	public _Timer3us
	public __c51_external_startup
	public _frequency
	public _i
	public _overflow_count
	public _dirout
	public _pwm_out3
	public _pwm_out2
	public _pwm_out1
	public _pwm_out0
	public _power
	public _pwm_count
;--------------------------------------------------------
; Special Function Registers
;--------------------------------------------------------
_P0             DATA 0x80
_SP             DATA 0x81
_DPL            DATA 0x82
_DPH            DATA 0x83
_EMI0TC         DATA 0x84
_EMI0CF         DATA 0x85
_OSCLCN         DATA 0x86
_PCON           DATA 0x87
_TCON           DATA 0x88
_TMOD           DATA 0x89
_TL0            DATA 0x8a
_TL1            DATA 0x8b
_TH0            DATA 0x8c
_TH1            DATA 0x8d
_CKCON          DATA 0x8e
_PSCTL          DATA 0x8f
_P1             DATA 0x90
_TMR3CN         DATA 0x91
_TMR4CN         DATA 0x91
_TMR3RLL        DATA 0x92
_TMR4RLL        DATA 0x92
_TMR3RLH        DATA 0x93
_TMR4RLH        DATA 0x93
_TMR3L          DATA 0x94
_TMR4L          DATA 0x94
_TMR3H          DATA 0x95
_TMR4H          DATA 0x95
_USB0ADR        DATA 0x96
_USB0DAT        DATA 0x97
_SCON           DATA 0x98
_SCON0          DATA 0x98
_SBUF           DATA 0x99
_SBUF0          DATA 0x99
_CPT1CN         DATA 0x9a
_CPT0CN         DATA 0x9b
_CPT1MD         DATA 0x9c
_CPT0MD         DATA 0x9d
_CPT1MX         DATA 0x9e
_CPT0MX         DATA 0x9f
_P2             DATA 0xa0
_SPI0CFG        DATA 0xa1
_SPI0CKR        DATA 0xa2
_SPI0DAT        DATA 0xa3
_P0MDOUT        DATA 0xa4
_P1MDOUT        DATA 0xa5
_P2MDOUT        DATA 0xa6
_P3MDOUT        DATA 0xa7
_IE             DATA 0xa8
_CLKSEL         DATA 0xa9
_EMI0CN         DATA 0xaa
__XPAGE         DATA 0xaa
_SBCON1         DATA 0xac
_P4MDOUT        DATA 0xae
_PFE0CN         DATA 0xaf
_P3             DATA 0xb0
_OSCXCN         DATA 0xb1
_OSCICN         DATA 0xb2
_OSCICL         DATA 0xb3
_SBRLL1         DATA 0xb4
_SBRLH1         DATA 0xb5
_FLSCL          DATA 0xb6
_FLKEY          DATA 0xb7
_IP             DATA 0xb8
_CLKMUL         DATA 0xb9
_SMBTC          DATA 0xb9
_AMX0N          DATA 0xba
_AMX0P          DATA 0xbb
_ADC0CF         DATA 0xbc
_ADC0L          DATA 0xbd
_ADC0H          DATA 0xbe
_SFRPAGE        DATA 0xbf
_SMB0CN         DATA 0xc0
_SMB1CN         DATA 0xc0
_SMB0CF         DATA 0xc1
_SMB1CF         DATA 0xc1
_SMB0DAT        DATA 0xc2
_SMB1DAT        DATA 0xc2
_ADC0GTL        DATA 0xc3
_ADC0GTH        DATA 0xc4
_ADC0LTL        DATA 0xc5
_ADC0LTH        DATA 0xc6
_P4             DATA 0xc7
_TMR2CN         DATA 0xc8
_TMR5CN         DATA 0xc8
_REG01CN        DATA 0xc9
_TMR2RLL        DATA 0xca
_TMR5RLL        DATA 0xca
_TMR2RLH        DATA 0xcb
_TMR5RLH        DATA 0xcb
_TMR2L          DATA 0xcc
_TMR5L          DATA 0xcc
_TMR2H          DATA 0xcd
_TMR5H          DATA 0xcd
_SMB0ADM        DATA 0xce
_SMB1ADM        DATA 0xce
_SMB0ADR        DATA 0xcf
_SMB1ADR        DATA 0xcf
_PSW            DATA 0xd0
_REF0CN         DATA 0xd1
_SCON1          DATA 0xd2
_SBUF1          DATA 0xd3
_P0SKIP         DATA 0xd4
_P1SKIP         DATA 0xd5
_P2SKIP         DATA 0xd6
_USB0XCN        DATA 0xd7
_PCA0CN         DATA 0xd8
_PCA0MD         DATA 0xd9
_PCA0CPM0       DATA 0xda
_PCA0CPM1       DATA 0xdb
_PCA0CPM2       DATA 0xdc
_PCA0CPM3       DATA 0xdd
_PCA0CPM4       DATA 0xde
_P3SKIP         DATA 0xdf
_ACC            DATA 0xe0
_XBR0           DATA 0xe1
_XBR1           DATA 0xe2
_XBR2           DATA 0xe3
_IT01CF         DATA 0xe4
_CKCON1         DATA 0xe4
_SMOD1          DATA 0xe5
_EIE1           DATA 0xe6
_EIE2           DATA 0xe7
_ADC0CN         DATA 0xe8
_PCA0CPL1       DATA 0xe9
_PCA0CPH1       DATA 0xea
_PCA0CPL2       DATA 0xeb
_PCA0CPH2       DATA 0xec
_PCA0CPL3       DATA 0xed
_PCA0CPH3       DATA 0xee
_RSTSRC         DATA 0xef
_B              DATA 0xf0
_P0MDIN         DATA 0xf1
_P1MDIN         DATA 0xf2
_P2MDIN         DATA 0xf3
_P3MDIN         DATA 0xf4
_P4MDIN         DATA 0xf5
_EIP1           DATA 0xf6
_EIP2           DATA 0xf7
_SPI0CN         DATA 0xf8
_PCA0L          DATA 0xf9
_PCA0H          DATA 0xfa
_PCA0CPL0       DATA 0xfb
_PCA0CPH0       DATA 0xfc
_PCA0CPL4       DATA 0xfd
_PCA0CPH4       DATA 0xfe
_VDM0CN         DATA 0xff
_DPTR           DATA 0x8382
_TMR2RL         DATA 0xcbca
_TMR3RL         DATA 0x9392
_TMR4RL         DATA 0x9392
_TMR5RL         DATA 0xcbca
_TMR2           DATA 0xcdcc
_TMR3           DATA 0x9594
_TMR4           DATA 0x9594
_TMR5           DATA 0xcdcc
_SBRL1          DATA 0xb5b4
_ADC0           DATA 0xbebd
_ADC0GT         DATA 0xc4c3
_ADC0LT         DATA 0xc6c5
_PCA0           DATA 0xfaf9
_PCA0CP1        DATA 0xeae9
_PCA0CP2        DATA 0xeceb
_PCA0CP3        DATA 0xeeed
_PCA0CP0        DATA 0xfcfb
_PCA0CP4        DATA 0xfefd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
_P0_0           BIT 0x80
_P0_1           BIT 0x81
_P0_2           BIT 0x82
_P0_3           BIT 0x83
_P0_4           BIT 0x84
_P0_5           BIT 0x85
_P0_6           BIT 0x86
_P0_7           BIT 0x87
_TF1            BIT 0x8f
_TR1            BIT 0x8e
_TF0            BIT 0x8d
_TR0            BIT 0x8c
_IE1            BIT 0x8b
_IT1            BIT 0x8a
_IE0            BIT 0x89
_IT0            BIT 0x88
_P1_0           BIT 0x90
_P1_1           BIT 0x91
_P1_2           BIT 0x92
_P1_3           BIT 0x93
_P1_4           BIT 0x94
_P1_5           BIT 0x95
_P1_6           BIT 0x96
_P1_7           BIT 0x97
_S0MODE         BIT 0x9f
_SCON0_6        BIT 0x9e
_MCE0           BIT 0x9d
_REN0           BIT 0x9c
_TB80           BIT 0x9b
_RB80           BIT 0x9a
_TI0            BIT 0x99
_RI0            BIT 0x98
_SCON_6         BIT 0x9e
_MCE            BIT 0x9d
_REN            BIT 0x9c
_TB8            BIT 0x9b
_RB8            BIT 0x9a
_TI             BIT 0x99
_RI             BIT 0x98
_P2_0           BIT 0xa0
_P2_1           BIT 0xa1
_P2_2           BIT 0xa2
_P2_3           BIT 0xa3
_P2_4           BIT 0xa4
_P2_5           BIT 0xa5
_P2_6           BIT 0xa6
_P2_7           BIT 0xa7
_EA             BIT 0xaf
_ESPI0          BIT 0xae
_ET2            BIT 0xad
_ES0            BIT 0xac
_ET1            BIT 0xab
_EX1            BIT 0xaa
_ET0            BIT 0xa9
_EX0            BIT 0xa8
_P3_0           BIT 0xb0
_P3_1           BIT 0xb1
_P3_2           BIT 0xb2
_P3_3           BIT 0xb3
_P3_4           BIT 0xb4
_P3_5           BIT 0xb5
_P3_6           BIT 0xb6
_P3_7           BIT 0xb7
_IP_7           BIT 0xbf
_PSPI0          BIT 0xbe
_PT2            BIT 0xbd
_PS0            BIT 0xbc
_PT1            BIT 0xbb
_PX1            BIT 0xba
_PT0            BIT 0xb9
_PX0            BIT 0xb8
_MASTER0        BIT 0xc7
_TXMODE0        BIT 0xc6
_STA0           BIT 0xc5
_STO0           BIT 0xc4
_ACKRQ0         BIT 0xc3
_ARBLOST0       BIT 0xc2
_ACK0           BIT 0xc1
_SI0            BIT 0xc0
_MASTER1        BIT 0xc7
_TXMODE1        BIT 0xc6
_STA1           BIT 0xc5
_STO1           BIT 0xc4
_ACKRQ1         BIT 0xc3
_ARBLOST1       BIT 0xc2
_ACK1           BIT 0xc1
_SI1            BIT 0xc0
_TF2            BIT 0xcf
_TF2H           BIT 0xcf
_TF2L           BIT 0xce
_TF2LEN         BIT 0xcd
_TF2CEN         BIT 0xcc
_T2SPLIT        BIT 0xcb
_TR2            BIT 0xca
_T2CSS          BIT 0xc9
_T2XCLK         BIT 0xc8
_TF5H           BIT 0xcf
_TF5L           BIT 0xce
_TF5LEN         BIT 0xcd
_TMR5CN_4       BIT 0xcc
_T5SPLIT        BIT 0xcb
_TR5            BIT 0xca
_TMR5CN_1       BIT 0xc9
_T5XCLK         BIT 0xc8
_CY             BIT 0xd7
_AC             BIT 0xd6
_F0             BIT 0xd5
_RS1            BIT 0xd4
_RS0            BIT 0xd3
_OV             BIT 0xd2
_F1             BIT 0xd1
_PARITY         BIT 0xd0
_CF             BIT 0xdf
_CR             BIT 0xde
_PCA0CN_5       BIT 0xde
_CCF4           BIT 0xdc
_CCF3           BIT 0xdb
_CCF2           BIT 0xda
_CCF1           BIT 0xd9
_CCF0           BIT 0xd8
_ACC_7          BIT 0xe7
_ACC_6          BIT 0xe6
_ACC_5          BIT 0xe5
_ACC_4          BIT 0xe4
_ACC_3          BIT 0xe3
_ACC_2          BIT 0xe2
_ACC_1          BIT 0xe1
_ACC_0          BIT 0xe0
_AD0EN          BIT 0xef
_AD0TM          BIT 0xee
_AD0INT         BIT 0xed
_AD0BUSY        BIT 0xec
_AD0WINT        BIT 0xeb
_AD0CM2         BIT 0xea
_AD0CM1         BIT 0xe9
_AD0CM0         BIT 0xe8
_B_7            BIT 0xf7
_B_6            BIT 0xf6
_B_5            BIT 0xf5
_B_4            BIT 0xf4
_B_3            BIT 0xf3
_B_2            BIT 0xf2
_B_1            BIT 0xf1
_B_0            BIT 0xf0
_SPIF           BIT 0xff
_WCOL           BIT 0xfe
_MODF           BIT 0xfd
_RXOVRN         BIT 0xfc
_NSSMD1         BIT 0xfb
_NSSMD0         BIT 0xfa
_TXBMT          BIT 0xf9
_SPIEN          BIT 0xf8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	rbank0 segment data overlay
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	rseg R_DSEG
_pwm_count:
	ds 1
_power:
	ds 1
_pwm_out0:
	ds 1
_pwm_out1:
	ds 1
_pwm_out2:
	ds 1
_pwm_out3:
	ds 1
_dirout:
	ds 1
_overflow_count:
	ds 1
_i:
	ds 2
_frequency:
	ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	rseg	R_OSEG
	rseg	R_OSEG
_InitPinADC_PARM_2:
	ds 1
	rseg	R_OSEG
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	rseg R_ISEG
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	DSEG
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	rseg R_BSEG
_Timer2_ISR_sloc0_1_0:
	DBIT	1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	rseg R_PSEG
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	rseg R_XSEG
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	XSEG
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	rseg R_IXSEG
	rseg R_HOME
	rseg R_GSINIT
	rseg R_CSEG
;--------------------------------------------------------
; Reset entry point and interrupt vectors
;--------------------------------------------------------
	CSEG at 0x0000
	ljmp	_crt0
	CSEG at 0x002b
	ljmp	_Timer2_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	rseg R_HOME
	rseg R_GSINIT
	rseg R_GSINIT
;--------------------------------------------------------
; data variables initialization
;--------------------------------------------------------
	rseg R_DINIT
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:18: volatile unsigned char pwm_count=0;
	mov	_pwm_count,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:19: volatile unsigned char power=50;
	mov	_power,#0x32
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:20: volatile unsigned char pwm_out0=0;
	mov	_pwm_out0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:21: volatile unsigned char pwm_out1=0;
	mov	_pwm_out1,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:22: volatile unsigned char pwm_out2=0;
	mov	_pwm_out2,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:23: volatile unsigned char pwm_out3=0;
	mov	_pwm_out3,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:24: volatile unsigned char dirout=0;
	mov	_dirout,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:25: volatile unsigned char overflow_count=0;
	mov	_overflow_count,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:26: int i = 0;
	clr	a
	mov	_i,a
	mov	(_i + 1),a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:27: float frequency=0;
	mov	_frequency,#0x00
	mov	(_frequency + 1),#0x00
	mov	(_frequency + 2),#0x00
	mov	(_frequency + 3),#0x00
	; The linker places a 'ret' at the end of segment R_DINIT.
;--------------------------------------------------------
; code
;--------------------------------------------------------
	rseg R_CSEG
;------------------------------------------------------------
;Allocation info for local variables in function '_c51_external_startup'
;------------------------------------------------------------
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:32: char _c51_external_startup (void)
;	-----------------------------------------
;	 function _c51_external_startup
;	-----------------------------------------
__c51_external_startup:
	using	0
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:34: PCA0MD&=(~0x40) ;    // DISABLE WDT: clear Watchdog Enable bit
	anl	_PCA0MD,#0xBF
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:35: VDM0CN=0x80; // enable VDD monitor
	mov	_VDM0CN,#0x80
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:36: RSTSRC=0x02|0x04; // Enable reset on missing clock detector and VDD
	mov	_RSTSRC,#0x06
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:44: CLKSEL|=0b_0000_0011; // SYSCLK derived from the Internal High-Frequency Oscillator / 1.
	orl	_CLKSEL,#0x03
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:48: OSCICN |= 0x03; // Configure internal oscillator for its maximum frequency
	orl	_OSCICN,#0x03
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:51: SCON0 = 0x10;
	mov	_SCON0,#0x10
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:53: TH1 = 0x10000-((SYSCLK/BAUDRATE)/2L);
	mov	_TH1,#0x30
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:54: CKCON &= ~0x0B;                  // T1M = 1; SCA1:0 = xx
	anl	_CKCON,#0xF4
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:55: CKCON |=  0x08;
	orl	_CKCON,#0x08
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:68: TL1 = TH1;      // Init Timer1
	mov	_TL1,_TH1
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:69: TMOD &= ~0xf0;  // TMOD: timer 1 in 8-bit autoreload
	anl	_TMOD,#0x0F
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:70: TMOD |=  0x20;
	orl	_TMOD,#0x20
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:71: TR1 = 1; // START Timer1
	setb	_TR1
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:72: TI = 1;  // Indicate TX0 ready
	setb	_TI
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:75: P2MDOUT|=0b_0000_0011;
	orl	_P2MDOUT,#0x03
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:76: P0MDOUT |= 0x10; // Enable UTX as push-pull output
	orl	_P0MDOUT,#0x10
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:77: XBR0     = 0x01; // Enable UART on P0.4(TX) and P0.5(RX)
	mov	_XBR0,#0x01
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:78: XBR1     = 0x40; // Enable crossbar and weak pull-ups
	mov	_XBR1,#0x40
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:80: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer3us'
;------------------------------------------------------------
;us                        Allocated to registers r2 
;i                         Allocated to registers r3 
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:87: void Timer3us(unsigned char us)
;	-----------------------------------------
;	 function Timer3us
;	-----------------------------------------
_Timer3us:
	mov	r2,dpl
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:92: CKCON|=0b_0100_0000;
	orl	_CKCON,#0x40
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:94: TMR3RL = (-(SYSCLK)/1000000L); // Set Timer3 to overflow in 1us.
	mov	_TMR3RL,#0xD0
	mov	(_TMR3RL >> 8),#0xFF
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:95: TMR3 = TMR3RL;                 // Initialize Timer3 for first overflow
	mov	_TMR3,_TMR3RL
	mov	(_TMR3 >> 8),(_TMR3RL >> 8)
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:97: TMR3CN = 0x04;                 // Sart Timer3 and clear overflow flag
	mov	_TMR3CN,#0x04
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:98: for (i = 0; i < us; i++)       // Count <us> overflows
	mov	r3,#0x00
L003004?:
	clr	c
	mov	a,r3
	subb	a,r2
	jnc	L003007?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:100: while (!(TMR3CN & 0x80));  // Wait for overflow
L003001?:
	mov	a,_TMR3CN
	jnb	acc.7,L003001?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:101: TMR3CN &= ~(0x80);         // Clear overflow indicator
	anl	_TMR3CN,#0x7F
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:98: for (i = 0; i < us; i++)       // Count <us> overflows
	inc	r3
	sjmp	L003004?
L003007?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:103: TMR3CN = 0 ;                   // Stop Timer3 and clear overflow flag
	mov	_TMR3CN,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'waitms'
;------------------------------------------------------------
;ms                        Allocated to registers r2 r3 
;j                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:110: void waitms (unsigned int ms)
;	-----------------------------------------
;	 function waitms
;	-----------------------------------------
_waitms:
	mov	r2,dpl
	mov	r3,dph
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:113: for(j=ms; j!=0; j--)
L004001?:
	cjne	r2,#0x00,L004010?
	cjne	r3,#0x00,L004010?
	ret
L004010?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:115: Timer3us(249);
	mov	dpl,#0xF9
	push	ar2
	push	ar3
	lcall	_Timer3us
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:116: Timer3us(249);
	mov	dpl,#0xF9
	lcall	_Timer3us
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:117: Timer3us(249);
	mov	dpl,#0xF9
	lcall	_Timer3us
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:118: Timer3us(250);
	mov	dpl,#0xFA
	lcall	_Timer3us
	pop	ar3
	pop	ar2
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:113: for(j=ms; j!=0; j--)
	dec	r2
	cjne	r2,#0xff,L004011?
	dec	r3
L004011?:
	sjmp	L004001?
;------------------------------------------------------------
;Allocation info for local variables in function 'TIMER0_Init'
;------------------------------------------------------------
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:124: void TIMER0_Init(void)
;	-----------------------------------------
;	 function TIMER0_Init
;	-----------------------------------------
_TIMER0_Init:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:126: TMOD&=0b_1111_0000; // Set the bits of Timer/Counter 0 to zero
	anl	_TMOD,#0xF0
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:127: TMOD|=0b_0000_0001; // Timer/Counter 0 used as a 16-bit timer
	orl	_TMOD,#0x01
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:128: TR0=0; // Stop Timer/Counter 0
	clr	_TR0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TIMER2_Init'
;------------------------------------------------------------
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:134: void TIMER2_Init(void)
;	-----------------------------------------
;	 function TIMER2_Init
;	-----------------------------------------
_TIMER2_Init:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:136: TMR2CN=0x00;   // Stop Timer2; Clear TF2;
	mov	_TMR2CN,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:137: CKCON|=0b_0001_0000;
	orl	_CKCON,#0x10
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:138: TMR2RL=(-(SYSCLK/(2*48))/(100L)); // Initialize reload value
	mov	_TMR2RL,#0x78
	mov	(_TMR2RL >> 8),#0xEC
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:139: TMR2=0xffff;   // Set to reload immediately
	mov	_TMR2,#0xFF
	mov	(_TMR2 >> 8),#0xFF
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:140: ET2=1;         // Enable Timer2 interrupts
	setb	_ET2
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:141: TR2=1;         // Start Timer2
	setb	_TR2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitADC'
;------------------------------------------------------------
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:147: void InitADC (void)
;	-----------------------------------------
;	 function InitADC
;	-----------------------------------------
_InitADC:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:150: ADC0CF = 0xF8; // SAR clock = 31, Right-justified result
	mov	_ADC0CF,#0xF8
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:151: ADC0CN = 0b_1000_0000; // AD0EN=1, AD0TM=0
	mov	_ADC0CN,#0x80
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:152: REF0CN = 0b_0000_1000; //Select VDD as the voltage reference for the converter
	mov	_REF0CN,#0x08
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitPinADC'
;------------------------------------------------------------
;pinno                     Allocated with name '_InitPinADC_PARM_2'
;portno                    Allocated to registers r2 
;mask                      Allocated to registers r3 
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:159: void InitPinADC (unsigned char portno, unsigned char pinno)
;	-----------------------------------------
;	 function InitPinADC
;	-----------------------------------------
_InitPinADC:
	mov	r2,dpl
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:163: mask=1<<pinno;
	mov	b,_InitPinADC_PARM_2
	inc	b
	mov	a,#0x01
	sjmp	L008012?
L008010?:
	add	a,acc
L008012?:
	djnz	b,L008010?
	mov	r3,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:165: switch (portno)
	mov	a,r2
	add	a,#0xff - 0x03
	jc	L008007?
	mov	a,r2
	add	a,r2
	add	a,r2
	mov	dptr,#L008014?
	jmp	@a+dptr
L008014?:
	ljmp	L008001?
	ljmp	L008002?
	ljmp	L008003?
	ljmp	L008004?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:167: case 0:
L008001?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:168: P0MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	anl	_P0MDIN,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:169: P0SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P0SKIP,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:170: break;
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:171: case 1:
	ret
L008002?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:172: P1MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	anl	_P1MDIN,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:173: P1SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P1SKIP,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:174: break;
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:175: case 2:
	ret
L008003?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:176: P2MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	anl	_P2MDIN,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:177: P2SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P2SKIP,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:178: break;
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:179: case 3:
	ret
L008004?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:180: P3MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	mov	r2,a
	anl	_P3MDIN,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:181: P3SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P3SKIP,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:185: }
L008007?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_at_Pin'
;------------------------------------------------------------
;pin                       Allocated to registers 
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:192: unsigned int ADC_at_Pin(unsigned char pin)
;	-----------------------------------------
;	 function ADC_at_Pin
;	-----------------------------------------
_ADC_at_Pin:
	mov	_AMX0P,dpl
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:195: AMX0N = LQFP32_MUX_GND;  // GND is negative input (Single-ended Mode)
	mov	_AMX0N,#0x1F
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:197: AD0BUSY=1;
	setb	_AD0BUSY
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:198: while (AD0BUSY); // Wait for dummy conversion to finish
L009001?:
	jb	_AD0BUSY,L009001?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:200: AD0BUSY = 1;
	setb	_AD0BUSY
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:201: while (AD0BUSY); // Wait for conversion to complete
L009004?:
	jb	_AD0BUSY,L009004?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:202: return (ADC0L+(ADC0H*0x100));
	mov	r2,_ADC0L
	mov	r3,#0x00
	mov	r5,_ADC0H
	mov	r4,#0x00
	mov	a,r4
	add	a,r2
	mov	dpl,a
	mov	a,r5
	addc	a,r3
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Volts_at_Pin'
;------------------------------------------------------------
;pin                       Allocated to registers r2 
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:209: float Volts_at_Pin(unsigned char pin)
;	-----------------------------------------
;	 function Volts_at_Pin
;	-----------------------------------------
_Volts_at_Pin:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:211: return ((ADC_at_Pin(pin)*VDD_onboard)/1024.0);
	lcall	_ADC_at_Pin
	lcall	___uint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x20C5
	mov	b,#0x58
	mov	a,#0x40
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x44
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer2_ISR'
;------------------------------------------------------------
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:218: void Timer2_ISR (void) interrupt 5
;	-----------------------------------------
;	 function Timer2_ISR
;	-----------------------------------------
_Timer2_ISR:
	push	acc
	push	psw
	mov	psw,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:220: TF2H = 0; // Clear Timer2 interrupt flag
	clr	_TF2H
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:222: pwm_count++;
	inc	_pwm_count
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:223: if(pwm_count>100) pwm_count=0;
	mov	a,_pwm_count
	add	a,#0xff - 0x64
	jnc	L011002?
	mov	_pwm_count,#0x00
L011002?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:225: OUT0=pwm_count>pwm_out0?0:1;
	clr	c
	mov	a,_pwm_out0
	subb	a,_pwm_count
	mov  _Timer2_ISR_sloc0_1_0,c
	cpl	c
	mov	_P2_2,c
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:226: OUT1=pwm_count>pwm_out1?0:1;
	clr	c
	mov	a,_pwm_out1
	subb	a,_pwm_count
	mov  _Timer2_ISR_sloc0_1_0,c
	cpl	c
	mov	_P2_5,c
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:228: OUT2=pwm_count>pwm_out2?0:1;
	clr	c
	mov	a,_pwm_out2
	subb	a,_pwm_count
	mov  _Timer2_ISR_sloc0_1_0,c
	cpl	c
	mov	_P2_4,c
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:229: OUT3=pwm_count>pwm_out3?0:1;
	clr	c
	mov	a,_pwm_out3
	subb	a,_pwm_count
	mov  _Timer2_ISR_sloc0_1_0,c
	cpl	c
	mov	_P2_3,c
	pop	psw
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'ReadFrequency'
;------------------------------------------------------------
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:237: void ReadFrequency (void)
;	-----------------------------------------
;	 function ReadFrequency
;	-----------------------------------------
_ReadFrequency:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:241: TL0=0;
	mov	_TL0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:242: TH0=0;
	mov	_TH0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:243: TF0=0;
	clr	_TF0
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:244: overflow_count=0;
	mov	_overflow_count,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:246: while(FRQIN!=0); // Wait for the signal to be zero
L012001?:
	jb	_P1_6,L012001?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:247: while(FRQIN!=1); // Wait for the signal to be one
L012004?:
	jnb	_P1_6,L012004?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:248: TR0=1; // Start the timer
	setb	_TR0
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:249: while(FRQIN!=0) // Wait for the signal to be zero
L012009?:
	jnb	_P1_6,L012014?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:251: if(TF0==1) // Did the 16-bit timer overflow?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:253: TF0=0;
	jbc	_TF0,L012031?
	sjmp	L012009?
L012031?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:254: overflow_count++;
	inc	_overflow_count
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:257: while(FRQIN!=1) // Wait for the signal to be one
	sjmp	L012009?
L012014?:
	jb	_P1_6,L012016?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:259: if(TF0==1) // Did the 16-bit timer overflow?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:261: TF0=0;
	jbc	_TF0,L012033?
	sjmp	L012014?
L012033?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:262: overflow_count++;
	inc	_overflow_count
	sjmp	L012014?
L012016?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:266: TR0=0; // Stop timer 0, the 24-bit number [overflow_count-TH0-TL0] has the period. Then convert it to frequency
	clr	_TR0
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:268: frequency=1.0/((overflow_count*65536.0+TH0*256.0+TL0)*(12.0/SYSCLK)); // Compute frequency
	mov	dpl,_overflow_count
	lcall	___uchar2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x47
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,_TH0
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___uchar2fs
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x43
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	r6,_TL0
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___sint2fs
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x37BD
	mov	b,#0x86
	mov	a,#0x34
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3F
	lcall	___fsdiv
	mov	_frequency,dpl
	mov	(_frequency + 1),dph
	mov	(_frequency + 2),b
	mov	(_frequency + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UserInterface'
;------------------------------------------------------------
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:275: void UserInterface (void)
;	-----------------------------------------
;	 function UserInterface
;	-----------------------------------------
_UserInterface:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:277: printf("frequency=%fHz\n", frequency);
	push	_frequency
	push	(_frequency + 1)
	push	(_frequency + 2)
	push	(_frequency + 3)
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MotorControl'
;------------------------------------------------------------
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:283: void MotorControl (void)
;	-----------------------------------------
;	 function MotorControl
;	-----------------------------------------
_MotorControl:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:285: pwm_out0 = power;
	mov	_pwm_out0,_power
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:286: pwm_out1 = 0;
	mov	_pwm_out1,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:287: pwm_out2 = power;
	mov	_pwm_out2,_power
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:288: pwm_out3 = 0;    
	mov	_pwm_out3,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:294: void main (void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:297: TIMER0_Init(); // Initialize timer 0 to read the frequency of the fm signal
	lcall	_TIMER0_Init
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:298: TIMER2_Init(); // Initialize timer 2 for periodic interrupts used for motor control
	lcall	_TIMER2_Init
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:299: EA=1; // Enable interrupts
	setb	_EA
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:300: dirout = 0; // define initial direction to be CCW
	mov	_dirout,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:301: InitPinADC(1, 7); // Configure P1.7 as analog input
	mov	_InitPinADC_PARM_2,#0x07
	mov	dpl,#0x01
	lcall	_InitPinADC
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:302: InitPinADC(2, 0); // Configure P2.0 as analog input
	mov	_InitPinADC_PARM_2,#0x00
	mov	dpl,#0x02
	lcall	_InitPinADC
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:303: InitPinADC(2, 7); // Configure P2.7 as analog input
	mov	_InitPinADC_PARM_2,#0x07
	mov	dpl,#0x02
	lcall	_InitPinADC
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:305: printf("\x1b[2J"); // Clear screen using ANSI escape sequence.
	mov	a,#__str_1
	push	acc
	mov	a,#(__str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:309: while(1)
L015002?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:312: ReadFrequency();
	lcall	_ReadFrequency
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:317: MotorControl();
	lcall	_MotorControl
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:320: UserInterface();
	lcall	_UserInterface
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:324: waitms(10);
	mov	dptr,#0x000A
	lcall	_waitms
	sjmp	L015002?
	rseg R_CSEG

	rseg R_XINIT

	rseg R_CONST
__str_0:
	db 'frequency=%fHz'
	db 0x0A
	db 0x00
__str_1:
	db 0x1B
	db '[2J'
	db 0x00

	CSEG

end