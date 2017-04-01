;--------------------------------------------------------
; File Created by C51
; Version 1.0.0 #1069 (Apr 23 2015) (MSVC)
; This file was generated Sat Apr 01 15:42:09 2017
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
	public _ReadStatus
	public _DebuggingFctn
	public _ReadCommand
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
	public _FrtIndVolt
	public _RedIndVolt
	public _BluIndVolt
	public _frequency
	public _i
	public _overflow_count
	public _dirout
	public _pwm_RED1
	public _pwm_RED0
	public _pwm_BLU1
	public _pwm_BLU0
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
_pwm_BLU0:
	ds 1
_pwm_BLU1:
	ds 1
_pwm_RED0:
	ds 1
_pwm_RED1:
	ds 1
_dirout:
	ds 1
_overflow_count:
	ds 1
_i:
	ds 2
_frequency:
	ds 4
_BluIndVolt:
	ds 4
_RedIndVolt:
	ds 4
_FrtIndVolt:
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
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:26: volatile unsigned char pwm_count=0;
	mov	_pwm_count,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:27: volatile unsigned char power=50;
	mov	_power,#0x32
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:28: volatile unsigned char pwm_BLU0=0;
	mov	_pwm_BLU0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:29: volatile unsigned char pwm_BLU1=0;
	mov	_pwm_BLU1,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:30: volatile unsigned char pwm_RED0=0;
	mov	_pwm_RED0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:31: volatile unsigned char pwm_RED1=0;
	mov	_pwm_RED1,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:32: volatile unsigned char dirout=0;
	mov	_dirout,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:33: volatile unsigned char overflow_count=0;
	mov	_overflow_count,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:34: int i = 0;
	clr	a
	mov	_i,a
	mov	(_i + 1),a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:35: float frequency=0;
	mov	_frequency,#0x00
	mov	(_frequency + 1),#0x00
	mov	(_frequency + 2),#0x00
	mov	(_frequency + 3),#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:36: volatile float BluIndVolt=0;
	mov	_BluIndVolt,#0x00
	mov	(_BluIndVolt + 1),#0x00
	mov	(_BluIndVolt + 2),#0x00
	mov	(_BluIndVolt + 3),#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:37: volatile float RedIndVolt=0;
	mov	_RedIndVolt,#0x00
	mov	(_RedIndVolt + 1),#0x00
	mov	(_RedIndVolt + 2),#0x00
	mov	(_RedIndVolt + 3),#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:38: volatile float FrtIndVolt=0; 
	mov	_FrtIndVolt,#0x00
	mov	(_FrtIndVolt + 1),#0x00
	mov	(_FrtIndVolt + 2),#0x00
	mov	(_FrtIndVolt + 3),#0x00
	; The linker places a 'ret' at the end of segment R_DINIT.
;--------------------------------------------------------
; code
;--------------------------------------------------------
	rseg R_CSEG
;------------------------------------------------------------
;Allocation info for local variables in function '_c51_external_startup'
;------------------------------------------------------------
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:43: char _c51_external_startup (void)
;	-----------------------------------------
;	 function _c51_external_startup
;	-----------------------------------------
__c51_external_startup:
	using	0
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:45: PCA0MD&=(~0x40) ;    // DISABLE WDT: clear Watchdog Enable bit
	anl	_PCA0MD,#0xBF
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:46: VDM0CN=0x80; // enable VDD monitor
	mov	_VDM0CN,#0x80
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:47: RSTSRC=0x02|0x04; // Enable reset on missing clock detector and VDD
	mov	_RSTSRC,#0x06
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:55: CLKSEL|=0b_0000_0011; // SYSCLK derived from the Internal High-Frequency Oscillator / 1.
	orl	_CLKSEL,#0x03
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:59: OSCICN |= 0x03; // Configure internal oscillator for its maximum frequency
	orl	_OSCICN,#0x03
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:62: SCON0 = 0x10;
	mov	_SCON0,#0x10
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:64: TH1 = 0x10000-((SYSCLK/BAUDRATE)/2L);
	mov	_TH1,#0x30
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:65: CKCON &= ~0x0B;                  // T1M = 1; SCA1:0 = xx
	anl	_CKCON,#0xF4
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:66: CKCON |=  0x08;
	orl	_CKCON,#0x08
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:79: TL1 = TH1;      // Init Timer1
	mov	_TL1,_TH1
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:80: TMOD &= ~0xf0;  // TMOD: timer 1 in 8-bit autoreload
	anl	_TMOD,#0x0F
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:81: TMOD |=  0x20;
	orl	_TMOD,#0x20
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:82: TR1 = 1; // START Timer1
	setb	_TR1
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:83: TI = 1;  // Indicate TX0 ready
	setb	_TI
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:86: P2MDOUT|=0b_0000_0011;
	orl	_P2MDOUT,#0x03
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:87: P0MDOUT |= 0x10; // Enable UTX as push-pull output
	orl	_P0MDOUT,#0x10
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:88: XBR0     = 0x01; // Enable UART on P0.4(TX) and P0.5(RX)
	mov	_XBR0,#0x01
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:89: XBR1     = 0x40; // Enable crossbar and weak pull-ups
	mov	_XBR1,#0x40
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:91: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer3us'
;------------------------------------------------------------
;us                        Allocated to registers r2 
;i                         Allocated to registers r3 
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:98: void Timer3us(unsigned char us)
;	-----------------------------------------
;	 function Timer3us
;	-----------------------------------------
_Timer3us:
	mov	r2,dpl
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:103: CKCON|=0b_0100_0000;
	orl	_CKCON,#0x40
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:105: TMR3RL = (-(SYSCLK)/1000000L); // Set Timer3 to overflow in 1us.
	mov	_TMR3RL,#0xD0
	mov	(_TMR3RL >> 8),#0xFF
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:106: TMR3 = TMR3RL;                 // Initialize Timer3 for first overflow
	mov	_TMR3,_TMR3RL
	mov	(_TMR3 >> 8),(_TMR3RL >> 8)
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:108: TMR3CN = 0x04;                 // Sart Timer3 and clear overflow flag
	mov	_TMR3CN,#0x04
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:109: for (i = 0; i < us; i++)       // Count <us> overflows
	mov	r3,#0x00
L003004?:
	clr	c
	mov	a,r3
	subb	a,r2
	jnc	L003007?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:111: while (!(TMR3CN & 0x80));  // Wait for overflow
L003001?:
	mov	a,_TMR3CN
	jnb	acc.7,L003001?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:112: TMR3CN &= ~(0x80);         // Clear overflow indicator
	anl	_TMR3CN,#0x7F
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:109: for (i = 0; i < us; i++)       // Count <us> overflows
	inc	r3
	sjmp	L003004?
L003007?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:114: TMR3CN = 0 ;                   // Stop Timer3 and clear overflow flag
	mov	_TMR3CN,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'waitms'
;------------------------------------------------------------
;ms                        Allocated to registers r2 r3 
;j                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:121: void waitms (unsigned int ms)
;	-----------------------------------------
;	 function waitms
;	-----------------------------------------
_waitms:
	mov	r2,dpl
	mov	r3,dph
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:124: for(j=ms; j!=0; j--)
L004001?:
	cjne	r2,#0x00,L004010?
	cjne	r3,#0x00,L004010?
	ret
L004010?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:126: Timer3us(249);
	mov	dpl,#0xF9
	push	ar2
	push	ar3
	lcall	_Timer3us
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:127: Timer3us(249);
	mov	dpl,#0xF9
	lcall	_Timer3us
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:128: Timer3us(249);
	mov	dpl,#0xF9
	lcall	_Timer3us
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:129: Timer3us(250);
	mov	dpl,#0xFA
	lcall	_Timer3us
	pop	ar3
	pop	ar2
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:124: for(j=ms; j!=0; j--)
	dec	r2
	cjne	r2,#0xff,L004011?
	dec	r3
L004011?:
	sjmp	L004001?
;------------------------------------------------------------
;Allocation info for local variables in function 'TIMER0_Init'
;------------------------------------------------------------
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:135: void TIMER0_Init(void)
;	-----------------------------------------
;	 function TIMER0_Init
;	-----------------------------------------
_TIMER0_Init:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:137: TMOD&=0b_1111_0000; // Set the bits of Timer/Counter 0 to zero
	anl	_TMOD,#0xF0
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:138: TMOD|=0b_0000_0001; // Timer/Counter 0 used as a 16-bit timer
	orl	_TMOD,#0x01
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:139: TR0=0; // Stop Timer/Counter 0
	clr	_TR0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TIMER2_Init'
;------------------------------------------------------------
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:145: void TIMER2_Init(void)
;	-----------------------------------------
;	 function TIMER2_Init
;	-----------------------------------------
_TIMER2_Init:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:147: TMR2CN=0x00;   // Stop Timer2; Clear TF2;
	mov	_TMR2CN,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:148: CKCON|=0b_0001_0000;
	orl	_CKCON,#0x10
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:149: TMR2RL=(-(SYSCLK/(2*48))/(100L)); // Initialize reload value
	mov	_TMR2RL,#0x78
	mov	(_TMR2RL >> 8),#0xEC
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:150: TMR2=0xffff;   // Set to reload immediately
	mov	_TMR2,#0xFF
	mov	(_TMR2 >> 8),#0xFF
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:151: ET2=1;         // Enable Timer2 interrupts
	setb	_ET2
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:152: TR2=1;         // Start Timer2
	setb	_TR2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitADC'
;------------------------------------------------------------
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:158: void InitADC (void)
;	-----------------------------------------
;	 function InitADC
;	-----------------------------------------
_InitADC:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:161: ADC0CF = 0xF8; // SAR clock = 31, Right-justified result
	mov	_ADC0CF,#0xF8
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:162: ADC0CN = 0b_1000_0000; // AD0EN=1, AD0TM=0
	mov	_ADC0CN,#0x80
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:163: REF0CN = 0b_0000_1000; //Select VDD as the voltage reference for the converter
	mov	_REF0CN,#0x08
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitPinADC'
;------------------------------------------------------------
;pinno                     Allocated with name '_InitPinADC_PARM_2'
;portno                    Allocated to registers r2 
;mask                      Allocated to registers r3 
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:170: void InitPinADC (unsigned char portno, unsigned char pinno)
;	-----------------------------------------
;	 function InitPinADC
;	-----------------------------------------
_InitPinADC:
	mov	r2,dpl
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:174: mask=1<<pinno;
	mov	b,_InitPinADC_PARM_2
	inc	b
	mov	a,#0x01
	sjmp	L008012?
L008010?:
	add	a,acc
L008012?:
	djnz	b,L008010?
	mov	r3,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:176: switch (portno)
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
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:178: case 0:
L008001?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:179: P0MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	anl	_P0MDIN,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:180: P0SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P0SKIP,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:181: break;
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:182: case 1:
	ret
L008002?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:183: P1MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	anl	_P1MDIN,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:184: P1SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P1SKIP,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:185: break;
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:186: case 2:
	ret
L008003?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:187: P2MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	anl	_P2MDIN,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:188: P2SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P2SKIP,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:189: break;
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:190: case 3:
	ret
L008004?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:191: P3MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	mov	r2,a
	anl	_P3MDIN,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:192: P3SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P3SKIP,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:196: }
L008007?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_at_Pin'
;------------------------------------------------------------
;pin                       Allocated to registers 
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:203: unsigned int ADC_at_Pin(unsigned char pin)
;	-----------------------------------------
;	 function ADC_at_Pin
;	-----------------------------------------
_ADC_at_Pin:
	mov	_AMX0P,dpl
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:206: AMX0N = LQFP32_MUX_GND;  // GND is negative input (Single-ended Mode)
	mov	_AMX0N,#0x1F
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:208: AD0BUSY=1;
	setb	_AD0BUSY
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:209: while (AD0BUSY); // Wait for dummy conversion to finish
L009001?:
	jb	_AD0BUSY,L009001?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:211: AD0BUSY = 1;
	setb	_AD0BUSY
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:212: while (AD0BUSY); // Wait for conversion to complete
L009004?:
	jb	_AD0BUSY,L009004?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:213: return (ADC0L+(ADC0H*0x100));
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
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:220: float Volts_at_Pin(unsigned char pin)
;	-----------------------------------------
;	 function Volts_at_Pin
;	-----------------------------------------
_Volts_at_Pin:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:222: return ((ADC_at_Pin(pin)*VDD_onboard)/1024.0);
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
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:229: void Timer2_ISR (void) interrupt 5
;	-----------------------------------------
;	 function Timer2_ISR
;	-----------------------------------------
_Timer2_ISR:
	push	acc
	push	psw
	mov	psw,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:231: TF2H = 0; // Clear Timer2 interrupt flag
	clr	_TF2H
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:233: pwm_count++;
	inc	_pwm_count
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:234: if(pwm_count>100) pwm_count=0;
	mov	a,_pwm_count
	add	a,#0xff - 0x64
	jnc	L011002?
	mov	_pwm_count,#0x00
L011002?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:236: BLU0=pwm_count>pwm_BLU0?0:1;
	clr	c
	mov	a,_pwm_BLU0
	subb	a,_pwm_count
	mov  _Timer2_ISR_sloc0_1_0,c
	cpl	c
	mov	_P2_2,c
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:237: BLU1=pwm_count>pwm_BLU1?0:1;
	clr	c
	mov	a,_pwm_BLU1
	subb	a,_pwm_count
	mov  _Timer2_ISR_sloc0_1_0,c
	cpl	c
	mov	_P2_5,c
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:239: RED0=pwm_count>pwm_RED0?0:1;
	clr	c
	mov	a,_pwm_RED0
	subb	a,_pwm_count
	mov  _Timer2_ISR_sloc0_1_0,c
	cpl	c
	mov	_P2_4,c
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:240: RED1=pwm_count>pwm_RED1?0:1;
	clr	c
	mov	a,_pwm_RED1
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
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:247: void ReadFrequency (void)
;	-----------------------------------------
;	 function ReadFrequency
;	-----------------------------------------
_ReadFrequency:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:251: TL0=0;
	mov	_TL0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:252: TH0=0;
	mov	_TH0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:253: TF0=0;
	clr	_TF0
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:254: overflow_count=0;
	mov	_overflow_count,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:256: while(FRQIN!=0); // Wait for the signal to be zero
L012001?:
	jb	_P1_6,L012001?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:257: while(FRQIN!=1); // Wait for the signal to be one
L012004?:
	jnb	_P1_6,L012004?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:258: TR0=1; // Start the timer
	setb	_TR0
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:259: while(FRQIN!=0) // Wait for the signal to be zero
L012009?:
	jnb	_P1_6,L012014?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:261: if(TF0==1) // Did the 16-bit timer overflow?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:263: TF0=0;
	jbc	_TF0,L012031?
	sjmp	L012009?
L012031?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:264: overflow_count++;
	inc	_overflow_count
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:267: while(FRQIN!=1) // Wait for the signal to be one
	sjmp	L012009?
L012014?:
	jb	_P1_6,L012016?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:269: if(TF0==1) // Did the 16-bit timer overflow?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:271: TF0=0;
	jbc	_TF0,L012033?
	sjmp	L012014?
L012033?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:272: overflow_count++;
	inc	_overflow_count
	sjmp	L012014?
L012016?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:276: TR0=0; // Stop timer 0, the 24-bit number [overflow_count-TH0-TL0] has the period. Then convert it to frequency
	clr	_TR0
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:278: frequency=1.0/((overflow_count*65536.0+TH0*256.0+TL0)*(12.0/SYSCLK)); // Compute frequency
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
;Allocation info for local variables in function 'ReadCommand'
;------------------------------------------------------------
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:285: void ReadCommand (void)
;	-----------------------------------------
;	 function ReadCommand
;	-----------------------------------------
_ReadCommand:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:287: ReadFrequency();
	ljmp	_ReadFrequency
;------------------------------------------------------------
;Allocation info for local variables in function 'DebuggingFctn'
;------------------------------------------------------------
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:293: void DebuggingFctn (void)
;	-----------------------------------------
;	 function DebuggingFctn
;	-----------------------------------------
_DebuggingFctn:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:295: printf("frequency = %f Hz\n", frequency);
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
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:296: printf("Left(blue) ind voltage = %f V\n", BluIndVolt);
	push	_BluIndVolt
	push	(_BluIndVolt + 1)
	push	(_BluIndVolt + 2)
	push	(_BluIndVolt + 3)
	mov	a,#__str_1
	push	acc
	mov	a,#(__str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:297: printf("Right(red) ind voltage = %f V\n", RedIndVolt);
	push	_RedIndVolt
	push	(_RedIndVolt + 1)
	push	(_RedIndVolt + 2)
	push	(_RedIndVolt + 3)
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:298: printf("Front inductor voltage = %f V\n", FrtIndVolt);
	push	_FrtIndVolt
	push	(_FrtIndVolt + 1)
	push	(_FrtIndVolt + 2)
	push	(_FrtIndVolt + 3)
	mov	a,#__str_3
	push	acc
	mov	a,#(__str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ReadStatus'
;------------------------------------------------------------
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:305: void ReadStatus (void)
;	-----------------------------------------
;	 function ReadStatus
;	-----------------------------------------
_ReadStatus:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:307: BluIndVolt = Volts_at_Pin(LQFP32_MUX_P2_7);
	mov	dpl,#0x0F
	lcall	_Volts_at_Pin
	mov	_BluIndVolt,dpl
	mov	(_BluIndVolt + 1),dph
	mov	(_BluIndVolt + 2),b
	mov	(_BluIndVolt + 3),a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:308: RedIndVolt = Volts_at_Pin(LQFP32_MUX_P1_7);
	mov	dpl,#0x07
	lcall	_Volts_at_Pin
	mov	_RedIndVolt,dpl
	mov	(_RedIndVolt + 1),dph
	mov	(_RedIndVolt + 2),b
	mov	(_RedIndVolt + 3),a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:309: FrtIndVolt = Volts_at_Pin(LQFP32_MUX_P2_0);
	mov	dpl,#0x08
	lcall	_Volts_at_Pin
	mov	_FrtIndVolt,dpl
	mov	(_FrtIndVolt + 1),dph
	mov	(_FrtIndVolt + 2),b
	mov	(_FrtIndVolt + 3),a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MotorControl'
;------------------------------------------------------------
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:316: void MotorControl (void)
;	-----------------------------------------
;	 function MotorControl
;	-----------------------------------------
_MotorControl:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:319: if(BluIndVolt > Vblue_thresh){
	mov	a,#0x33
	push	acc
	push	acc
	mov	a,#0xD3
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,_BluIndVolt
	mov	dph,(_BluIndVolt + 1)
	mov	b,(_BluIndVolt + 2)
	mov	a,(_BluIndVolt + 3)
	lcall	___fsgt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jz	L016005?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:320: pwm_BLU1= power-15;
	mov	a,_power
	add	a,#0xf1
	mov	_pwm_BLU1,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:321: pwm_BLU0 = 0;
	mov	_pwm_BLU0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:322: pwm_RED1 = power+15;
	mov	a,#0x0F
	add	a,_power
	mov	_pwm_RED1,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:323: pwm_RED0 = 0;   
	mov	_pwm_RED0,#0x00
	ret
L016005?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:326: else if(RedIndVolt > Vred_thresh){
	mov	a,#0x33
	push	acc
	push	acc
	mov	a,#0x93
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,_RedIndVolt
	mov	dph,(_RedIndVolt + 1)
	mov	b,(_RedIndVolt + 2)
	mov	a,(_RedIndVolt + 3)
	lcall	___fsgt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jz	L016002?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:327: pwm_BLU1=power+15;
	mov	a,#0x0F
	add	a,_power
	mov	_pwm_BLU1,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:328: pwm_BLU0=0;
	mov	_pwm_BLU0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:329: pwm_RED1=power-15;
	mov	a,_power
	add	a,#0xf1
	mov	_pwm_RED1,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:330: pwm_RED0=0;
	mov	_pwm_RED0,#0x00
	ret
L016002?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:333: pwm_BLU1 = power;
	mov	_pwm_BLU1,_power
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:334: pwm_BLU0 = 0;
	mov	_pwm_BLU0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:335: pwm_RED1 = power;
	mov	_pwm_RED1,_power
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:336: pwm_RED0 = 0;
	mov	_pwm_RED0,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:344: void main (void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:347: TIMER0_Init(); // Initialize timer 0 to read the frequency of the fm signal
	lcall	_TIMER0_Init
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:348: TIMER2_Init(); // Initialize timer 2 for periodic interrupts used for motor control
	lcall	_TIMER2_Init
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:349: EA=1; // Enable interrupts
	setb	_EA
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:350: dirout = 0; // define initial direction to be CCW
	mov	_dirout,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:351: InitPinADC(1, 7); // Configure P1.7 as analog input
	mov	_InitPinADC_PARM_2,#0x07
	mov	dpl,#0x01
	lcall	_InitPinADC
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:352: InitPinADC(2, 0); // Configure P2.0 as analog input
	mov	_InitPinADC_PARM_2,#0x00
	mov	dpl,#0x02
	lcall	_InitPinADC
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:353: InitPinADC(2, 7); // Configure P2.7 as analog input
	mov	_InitPinADC_PARM_2,#0x07
	mov	dpl,#0x02
	lcall	_InitPinADC
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:354: InitADC();
	lcall	_InitADC
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:356: printf("\x1b[2J"); // Clear screen using ANSI escape sequence.
	mov	a,#__str_4
	push	acc
	mov	a,#(__str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:360: while(1)
L017002?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:363: ReadCommand();
	lcall	_ReadCommand
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:366: ReadStatus();
	lcall	_ReadStatus
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:369: MotorControl();
	lcall	_MotorControl
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:376: waitms(100);
	mov	dptr,#0x0064
	lcall	_waitms
	sjmp	L017002?
	rseg R_CSEG

	rseg R_XINIT

	rseg R_CONST
__str_0:
	db 'frequency = %f Hz'
	db 0x0A
	db 0x00
__str_1:
	db 'Left(blue) ind voltage = %f V'
	db 0x0A
	db 0x00
__str_2:
	db 'Right(red) ind voltage = %f V'
	db 0x0A
	db 0x00
__str_3:
	db 'Front inductor voltage = %f V'
	db 0x0A
	db 0x00
__str_4:
	db 0x1B
	db '[2J'
	db 0x00

	CSEG

end
