;--------------------------------------------------------
; File Created by C51
; Version 1.0.0 #1069 (Apr 23 2015) (MSVC)
; This file was generated Mon Apr 03 00:57:24 2017
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
	public _DebuggingFctn
	public _MotorControl
	public _DetermineMode
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
	public _millisecond
	public _StopSigCount
	public _ForwardSigCount
	public _WriteCount
	public _FreqBuffer
	public _mode
	public _frequency
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
_frequency:
	ds 4
_mode:
	ds 2
_FreqBuffer:
	ds 16
_WriteCount:
	ds 1
_ForwardSigCount:
	ds 1
_StopSigCount:
	ds 1
_millisecond:
	ds 2
_MotorControl_IndVolts_1_79:
	ds 3
_MotorControl_sloc0_1_0:
	ds 3
_MotorControl_sloc1_1_0:
	ds 4
_MotorControl_sloc2_1_0:
	ds 4
_MotorControl_sloc3_1_0:
	ds 4
_DebuggingFctn_IndVolts_1_96:
	ds 3
_main_IndVolts_1_99:
	ds 12
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
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:46: volatile unsigned char pwm_count=0;
	mov	_pwm_count,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:47: volatile unsigned char power=30;
	mov	_power,#0x1E
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:48: volatile unsigned char pwm_BLU0=0;
	mov	_pwm_BLU0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:49: volatile unsigned char pwm_BLU1=0;
	mov	_pwm_BLU1,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:50: volatile unsigned char pwm_RED0=0;
	mov	_pwm_RED0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:51: volatile unsigned char pwm_RED1=0;
	mov	_pwm_RED1,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:52: volatile unsigned char dirout=0;
	mov	_dirout,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:53: volatile unsigned char overflow_count=0;
	mov	_overflow_count,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:54: volatile float frequency=0;
	mov	_frequency,#0x00
	mov	(_frequency + 1),#0x00
	mov	(_frequency + 2),#0x00
	mov	(_frequency + 3),#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:55: unsigned int mode=STOP;
	clr	a
	mov	_mode,a
	mov	(_mode + 1),a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:56: volatile float FreqBuffer[4]={0,0,0,0};
	mov	_FreqBuffer,#0x00
	mov	(_FreqBuffer + 1),#0x00
	mov	(_FreqBuffer + 2),#0x00
	mov	(_FreqBuffer + 3),#0x00
	mov	(_FreqBuffer + 0x0004),#0x00
	mov	((_FreqBuffer + 0x0004) + 1),#0x00
	mov	((_FreqBuffer + 0x0004) + 2),#0x00
	mov	((_FreqBuffer + 0x0004) + 3),#0x00
	mov	(_FreqBuffer + 0x0008),#0x00
	mov	((_FreqBuffer + 0x0008) + 1),#0x00
	mov	((_FreqBuffer + 0x0008) + 2),#0x00
	mov	((_FreqBuffer + 0x0008) + 3),#0x00
	mov	(_FreqBuffer + 0x000c),#0x00
	mov	((_FreqBuffer + 0x000c) + 1),#0x00
	mov	((_FreqBuffer + 0x000c) + 2),#0x00
	mov	((_FreqBuffer + 0x000c) + 3),#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:57: unsigned char WriteCount = 0;
	mov	_WriteCount,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:58: unsigned char ForwardSigCount=0;
	mov	_ForwardSigCount,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:59: unsigned char StopSigCount=0;
	mov	_StopSigCount,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:60: unsigned int millisecond=0;
	clr	a
	mov	_millisecond,a
	mov	(_millisecond + 1),a
	; The linker places a 'ret' at the end of segment R_DINIT.
;--------------------------------------------------------
; code
;--------------------------------------------------------
	rseg R_CSEG
;------------------------------------------------------------
;Allocation info for local variables in function '_c51_external_startup'
;------------------------------------------------------------
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:66: char _c51_external_startup (void)
;	-----------------------------------------
;	 function _c51_external_startup
;	-----------------------------------------
__c51_external_startup:
	using	0
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:68: PCA0MD&=(~0x40) ;    // DISABLE WDT: clear Watchdog Enable bit
	anl	_PCA0MD,#0xBF
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:69: VDM0CN=0x80; // enable VDD monitor
	mov	_VDM0CN,#0x80
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:70: RSTSRC=0x02|0x04; // Enable reset on missing clock detector and VDD
	mov	_RSTSRC,#0x06
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:78: CLKSEL|=0b_0000_0011; // SYSCLK derived from the Internal High-Frequency Oscillator / 1.
	orl	_CLKSEL,#0x03
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:82: OSCICN |= 0x03; // Configure internal oscillator for its maximum frequency
	orl	_OSCICN,#0x03
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:85: SCON0 = 0x10;
	mov	_SCON0,#0x10
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:87: TH1 = 0x10000-((SYSCLK/BAUDRATE)/2L);
	mov	_TH1,#0x30
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:88: CKCON &= ~0x0B;                  // T1M = 1; SCA1:0 = xx
	anl	_CKCON,#0xF4
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:89: CKCON |=  0x08;
	orl	_CKCON,#0x08
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:102: TL1 = TH1;      // Init Timer1
	mov	_TL1,_TH1
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:103: TMOD &= ~0xf0;  // TMOD: timer 1 in 8-bit autoreload
	anl	_TMOD,#0x0F
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:104: TMOD |=  0x20;
	orl	_TMOD,#0x20
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:105: TR1 = 1; // START Timer1
	setb	_TR1
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:106: TI = 1;  // Indicate TX0 ready
	setb	_TI
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:109: P2MDOUT|=0b_0000_0011;
	orl	_P2MDOUT,#0x03
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:110: P0MDOUT |= 0x01;  // set P0.0 and P0.4 as push-pull outputs
	orl	_P0MDOUT,#0x01
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:111: XBR0     = 0x01; // Enable UART on P0.4(TX) and P0.5(RX)
	mov	_XBR0,#0x01
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:112: XBR1     = 0x40; // Enable crossbar and weak pull-ups
	mov	_XBR1,#0x40
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:114: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer3us'
;------------------------------------------------------------
;us                        Allocated to registers r2 
;i                         Allocated to registers r3 
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:121: void Timer3us(unsigned char us)
;	-----------------------------------------
;	 function Timer3us
;	-----------------------------------------
_Timer3us:
	mov	r2,dpl
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:126: CKCON|=0b_0100_0000;
	orl	_CKCON,#0x40
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:128: TMR3RL = (-(SYSCLK)/1000000L); // Set Timer3 to overflow in 1us.
	mov	_TMR3RL,#0xD0
	mov	(_TMR3RL >> 8),#0xFF
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:129: TMR3 = TMR3RL;                 // Initialize Timer3 for first overflow
	mov	_TMR3,_TMR3RL
	mov	(_TMR3 >> 8),(_TMR3RL >> 8)
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:131: TMR3CN = 0x04;                 // Sart Timer3 and clear overflow flag
	mov	_TMR3CN,#0x04
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:132: for (i = 0; i < us; i++)       // Count <us> overflows
	mov	r3,#0x00
L003004?:
	clr	c
	mov	a,r3
	subb	a,r2
	jnc	L003007?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:134: while (!(TMR3CN & 0x80));  // Wait for overflow
L003001?:
	mov	a,_TMR3CN
	jnb	acc.7,L003001?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:135: TMR3CN &= ~(0x80);         // Clear overflow indicator
	anl	_TMR3CN,#0x7F
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:132: for (i = 0; i < us; i++)       // Count <us> overflows
	inc	r3
	sjmp	L003004?
L003007?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:137: TMR3CN = 0 ;                   // Stop Timer3 and clear overflow flag
	mov	_TMR3CN,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'waitms'
;------------------------------------------------------------
;ms                        Allocated to registers r2 r3 
;j                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:144: void waitms (unsigned int ms)
;	-----------------------------------------
;	 function waitms
;	-----------------------------------------
_waitms:
	mov	r2,dpl
	mov	r3,dph
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:147: for(j=ms; j!=0; j--)
L004001?:
	cjne	r2,#0x00,L004010?
	cjne	r3,#0x00,L004010?
	ret
L004010?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:149: Timer3us(249);
	mov	dpl,#0xF9
	push	ar2
	push	ar3
	lcall	_Timer3us
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:150: Timer3us(249);
	mov	dpl,#0xF9
	lcall	_Timer3us
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:151: Timer3us(249);
	mov	dpl,#0xF9
	lcall	_Timer3us
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:152: Timer3us(250);
	mov	dpl,#0xFA
	lcall	_Timer3us
	pop	ar3
	pop	ar2
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:147: for(j=ms; j!=0; j--)
	dec	r2
	cjne	r2,#0xff,L004011?
	dec	r3
L004011?:
	sjmp	L004001?
;------------------------------------------------------------
;Allocation info for local variables in function 'TIMER0_Init'
;------------------------------------------------------------
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:158: void TIMER0_Init(void)
;	-----------------------------------------
;	 function TIMER0_Init
;	-----------------------------------------
_TIMER0_Init:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:160: TMOD&=0b_1111_0000; // Set the bits of Timer/Counter 0 to zero
	anl	_TMOD,#0xF0
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:161: TMOD|=0b_0000_0001; // Timer/Counter 0 used as a 16-bit timer
	orl	_TMOD,#0x01
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:162: TR0=0; // Stop Timer/Counter 0
	clr	_TR0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TIMER2_Init'
;------------------------------------------------------------
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:168: void TIMER2_Init(void)
;	-----------------------------------------
;	 function TIMER2_Init
;	-----------------------------------------
_TIMER2_Init:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:170: TMR2CN=0x00;   // Stop Timer2; Clear TF2;
	mov	_TMR2CN,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:171: CKCON|=0b_0001_0000;
	orl	_CKCON,#0x10
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:172: TMR2RL=(-(SYSCLK/(2*48))/(100L)); // Initialize reload value
	mov	_TMR2RL,#0x78
	mov	(_TMR2RL >> 8),#0xEC
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:173: TMR2=0xffff;   // Set to reload immediately
	mov	_TMR2,#0xFF
	mov	(_TMR2 >> 8),#0xFF
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:174: ET2=1;         // Enable Timer2 interrupts
	setb	_ET2
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:175: TR2=1;         // Start Timer2
	setb	_TR2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitADC'
;------------------------------------------------------------
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:181: void InitADC (void)
;	-----------------------------------------
;	 function InitADC
;	-----------------------------------------
_InitADC:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:184: ADC0CF = 0xF8; // SAR clock = 31, Right-justified result
	mov	_ADC0CF,#0xF8
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:185: ADC0CN = 0b_1000_0000; // AD0EN=1, AD0TM=0
	mov	_ADC0CN,#0x80
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:186: REF0CN = 0b_0000_1000; //Select VDD as the voltage reference for the converter
	mov	_REF0CN,#0x08
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitPinADC'
;------------------------------------------------------------
;pinno                     Allocated with name '_InitPinADC_PARM_2'
;portno                    Allocated to registers r2 
;mask                      Allocated to registers r3 
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:193: void InitPinADC (unsigned char portno, unsigned char pinno)
;	-----------------------------------------
;	 function InitPinADC
;	-----------------------------------------
_InitPinADC:
	mov	r2,dpl
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:197: mask=1<<pinno;
	mov	b,_InitPinADC_PARM_2
	inc	b
	mov	a,#0x01
	sjmp	L008012?
L008010?:
	add	a,acc
L008012?:
	djnz	b,L008010?
	mov	r3,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:199: switch (portno)
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
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:201: case 0:
L008001?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:202: P0MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	anl	_P0MDIN,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:203: P0SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P0SKIP,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:204: break;
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:205: case 1:
	ret
L008002?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:206: P1MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	anl	_P1MDIN,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:207: P1SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P1SKIP,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:208: break;
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:209: case 2:
	ret
L008003?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:210: P2MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	anl	_P2MDIN,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:211: P2SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P2SKIP,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:212: break;
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:213: case 3:
	ret
L008004?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:214: P3MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	mov	r2,a
	anl	_P3MDIN,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:215: P3SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P3SKIP,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:219: }
L008007?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_at_Pin'
;------------------------------------------------------------
;pin                       Allocated to registers 
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:226: unsigned int ADC_at_Pin(unsigned char pin)
;	-----------------------------------------
;	 function ADC_at_Pin
;	-----------------------------------------
_ADC_at_Pin:
	mov	_AMX0P,dpl
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:229: AMX0N = LQFP32_MUX_GND;  // GND is negative input (Single-ended Mode)
	mov	_AMX0N,#0x1F
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:231: AD0BUSY=1;
	setb	_AD0BUSY
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:232: while (AD0BUSY); // Wait for dummy conversion to finish
L009001?:
	jb	_AD0BUSY,L009001?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:234: AD0BUSY = 1;
	setb	_AD0BUSY
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:235: while (AD0BUSY); // Wait for conversion to complete
L009004?:
	jb	_AD0BUSY,L009004?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:236: return (ADC0L+(ADC0H*0x100));
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
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:243: float Volts_at_Pin(unsigned char pin)
;	-----------------------------------------
;	 function Volts_at_Pin
;	-----------------------------------------
_Volts_at_Pin:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:245: return ((ADC_at_Pin(pin)*VDD_onboard)/1024.0);
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
	mov	dptr,#0xDD2F
	mov	b,#0x54
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
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:252: void Timer2_ISR (void) interrupt 5
;	-----------------------------------------
;	 function Timer2_ISR
;	-----------------------------------------
_Timer2_ISR:
	push	acc
	push	psw
	mov	psw,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:254: TF2H = 0; // Clear Timer2 interrupt flag
	clr	_TF2H
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:256: pwm_count++;
	inc	_pwm_count
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:257: if(pwm_count>100) pwm_count=0;
	mov	a,_pwm_count
	add	a,#0xff - 0x64
	jnc	L011002?
	mov	_pwm_count,#0x00
L011002?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:259: BLU0=pwm_count>pwm_BLU0?0:1;
	clr	c
	mov	a,_pwm_BLU0
	subb	a,_pwm_count
	mov  _Timer2_ISR_sloc0_1_0,c
	cpl	c
	mov	_P2_5,c
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:260: BLU1=pwm_count>pwm_BLU1?0:1;
	clr	c
	mov	a,_pwm_BLU1
	subb	a,_pwm_count
	mov  _Timer2_ISR_sloc0_1_0,c
	cpl	c
	mov	_P2_2,c
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:262: RED0=pwm_count>pwm_RED0?0:1;
	clr	c
	mov	a,_pwm_RED0
	subb	a,_pwm_count
	mov  _Timer2_ISR_sloc0_1_0,c
	cpl	c
	mov	_P2_3,c
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:263: RED1=pwm_count>pwm_RED1?0:1;
	clr	c
	mov	a,_pwm_RED1
	subb	a,_pwm_count
	mov  _Timer2_ISR_sloc0_1_0,c
	cpl	c
	mov	_P2_4,c
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
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:270: void ReadFrequency (void)
;	-----------------------------------------
;	 function ReadFrequency
;	-----------------------------------------
_ReadFrequency:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:274: TL0=0;
	mov	_TL0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:275: TH0=0;
	mov	_TH0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:276: TF0=0;
	clr	_TF0
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:277: overflow_count=0;
	mov	_overflow_count,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:279: while(FRQIN!=0); // Wait for the signal to be zero
L012001?:
	jb	_P1_6,L012001?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:280: while(FRQIN!=1); // Wait for the signal to be one
L012004?:
	jnb	_P1_6,L012004?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:281: TR0=1; // Start the timer
	setb	_TR0
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:282: while(FRQIN!=0) // Wait for the signal to be zero
L012009?:
	jnb	_P1_6,L012014?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:284: if(TF0==1) // Did the 16-bit timer overflow?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:286: TF0=0;
	jbc	_TF0,L012031?
	sjmp	L012009?
L012031?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:287: overflow_count++;
	inc	_overflow_count
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:290: while(FRQIN!=1) // Wait for the signal to be one
	sjmp	L012009?
L012014?:
	jb	_P1_6,L012016?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:292: if(TF0==1) // Did the 16-bit timer overflow?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:294: TF0=0;
	jbc	_TF0,L012033?
	sjmp	L012014?
L012033?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:295: overflow_count++;
	inc	_overflow_count
	sjmp	L012014?
L012016?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:299: TR0=0; // Stop timer 0, the 24-bit number [overflow_count-TH0-TL0] has the period. Then convert it to frequency
	clr	_TR0
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:301: frequency=1.0/((overflow_count*65536.0+TH0*256.0+TL0)*(12.0/SYSCLK)); // Compute frequency
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
;Allocation info for local variables in function 'DetermineMode'
;------------------------------------------------------------
;ReadCount                 Allocated to registers r2 
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:307: void DetermineMode (void) {
;	-----------------------------------------
;	 function DetermineMode
;	-----------------------------------------
_DetermineMode:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:309: ReadFrequency();
	lcall	_ReadFrequency
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:313: if (millisecond%800==0){
	mov	__moduint_PARM_2,#0x20
	mov	(__moduint_PARM_2 + 1),#0x03
	mov	dpl,_millisecond
	mov	dph,(_millisecond + 1)
	lcall	__moduint
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	L013032?
	ret
L013032?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:315: FreqBuffer[WriteCount]=frequency;
	mov	a,_WriteCount
	add	a,_WriteCount
	add	a,acc
	mov	r2,a
	add	a,#_FreqBuffer
	mov	r0,a
	mov	@r0,_frequency
	inc	r0
	mov	@r0,(_frequency + 1)
	inc	r0
	mov	@r0,(_frequency + 2)
	inc	r0
	mov	@r0,(_frequency + 3)
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:316: WriteCount++;
	inc	_WriteCount
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:317: if (WriteCount==4)
	mov	a,#0x04
	cjne	a,_WriteCount,L013028?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:318: WriteCount=0;
	mov	_WriteCount,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:322: for (ReadCount=0; ReadCount<4; ReadCount++){
L013028?:
	mov	r2,#0x00
L013015?:
	cjne	r2,#0x04,L013035?
L013035?:
	jc	L013036?
	ljmp	L013018?
L013036?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:323: if (FreqBuffer[ReadCount]>0.99*FRQFORWARD && FreqBuffer[ReadCount]<1.01*FRQFORWARD){
	mov	a,r2
	add	a,r2
	add	a,acc
	mov	r3,a
	add	a,#_FreqBuffer
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	push	ar2
	push	ar3
	clr	a
	push	acc
	mov	a,#0x53
	push	acc
	mov	a,#0x82
	push	acc
	mov	a,#0x46
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsgt
	mov	r4,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	pop	ar2
	mov	a,r4
	jz	L013004?
	mov	a,r3
	add	a,#_FreqBuffer
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	dec	r0
	dec	r0
	dec	r0
	push	ar2
	clr	a
	push	acc
	mov	a,#0xF5
	push	acc
	mov	a,#0x84
	push	acc
	mov	a,#0x46
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	___fslt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	mov	a,r3
	jz	L013004?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:324: ForwardSigCount++;
	inc	_ForwardSigCount
L013004?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:326: if (FreqBuffer[ReadCount]>0.99*FRQSTOP && FreqBuffer[ReadCount]<1.01*FRQSTOP){
	mov	a,r2
	add	a,r2
	add	a,acc
	mov	r3,a
	add	a,#_FreqBuffer
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	push	ar2
	push	ar3
	mov	a,#0x85
	push	acc
	mov	a,#0x9A
	push	acc
	mov	a,#0x68
	push	acc
	mov	a,#0x46
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsgt
	mov	r4,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	pop	ar2
	mov	a,r4
	jz	L013017?
	mov	a,r3
	add	a,#_FreqBuffer
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	dec	r0
	dec	r0
	dec	r0
	push	ar2
	mov	a,#0x7B
	push	acc
	mov	a,#0x4D
	push	acc
	mov	a,#0x6D
	push	acc
	mov	a,#0x46
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	___fslt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	mov	a,r3
	jz	L013017?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:327: StopSigCount++;	
	inc	_StopSigCount
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:328: printf("Stop sig detected\n");	
	push	ar2
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
L013017?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:322: for (ReadCount=0; ReadCount<4; ReadCount++){
	inc	r2
	ljmp	L013015?
L013018?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:333: if (ForwardSigCount >= 2){
	mov	a,#0x100 - 0x02
	add	a,_ForwardSigCount
	jnc	L013010?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:334: mode = FORWARD;
	mov	_mode,#0x03
	clr	a
	mov	(_mode + 1),a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:341: power=30;
	mov	_power,#0x1E
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:342: ForwardSigCount = 0;
	mov	_ForwardSigCount,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:343: return;
	ret
L013010?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:347: if (StopSigCount == 4){
	mov	a,#0x04
	cjne	a,_StopSigCount,L013019?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:348: mode = STOP;
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:349: StopSigCount = 0;
	clr	a
	mov	_mode,a
	mov	(_mode + 1),a
	mov	_StopSigCount,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:350: return;
L013019?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MotorControl'
;------------------------------------------------------------
;IndVolts                  Allocated with name '_MotorControl_IndVolts_1_79'
;sloc0                     Allocated with name '_MotorControl_sloc0_1_0'
;sloc1                     Allocated with name '_MotorControl_sloc1_1_0'
;sloc2                     Allocated with name '_MotorControl_sloc2_1_0'
;sloc3                     Allocated with name '_MotorControl_sloc3_1_0'
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:362: void MotorControl (volatile float IndVolts[])
;	-----------------------------------------
;	 function MotorControl
;	-----------------------------------------
_MotorControl:
	mov	_MotorControl_IndVolts_1_79,dpl
	mov	(_MotorControl_IndVolts_1_79 + 1),dph
	mov	(_MotorControl_IndVolts_1_79 + 2),b
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:365: switch (mode){
	clr	a
	cjne	a,_mode,L014047?
	clr	a
	cjne	a,(_mode + 1),L014047?
	ljmp	L014031?
L014047?:
	mov	a,#0x03
	cjne	a,_mode,L014048?
	clr	a
	cjne	a,(_mode + 1),L014048?
	sjmp	L014001?
L014048?:
	mov	a,#0x04
	cjne	a,_mode,L014049?
	clr	a
	cjne	a,(_mode + 1),L014049?
	ljmp	L014016?
L014049?:
	ret
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:367: case FORWARD:
L014001?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:368: if(IndVolts[0] > Vblue_thresh + 0.1 || IndVolts[0]/IndVolts[1] > 1){
	mov	_MotorControl_sloc0_1_0,_MotorControl_IndVolts_1_79
	mov	(_MotorControl_sloc0_1_0 + 1),(_MotorControl_IndVolts_1_79 + 1)
	mov	(_MotorControl_sloc0_1_0 + 2),(_MotorControl_IndVolts_1_79 + 2)
	mov	dpl,_MotorControl_sloc0_1_0
	mov	dph,(_MotorControl_sloc0_1_0 + 1)
	mov	b,(_MotorControl_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r0,a
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	___fsgt
	mov	r1,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	mov	a,r1
	jz	L014050?
	ljmp	L014012?
L014050?:
	mov	a,#0x04
	add	a,_MotorControl_sloc0_1_0
	mov	r1,a
	clr	a
	addc	a,(_MotorControl_sloc0_1_0 + 1)
	mov	r2,a
	mov	r3,(_MotorControl_sloc0_1_0 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	_MotorControl_sloc2_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_MotorControl_sloc2_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_MotorControl_sloc2_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_MotorControl_sloc2_1_0 + 3),a
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	_MotorControl_sloc2_1_0
	push	(_MotorControl_sloc2_1_0 + 1)
	push	(_MotorControl_sloc2_1_0 + 2)
	push	(_MotorControl_sloc2_1_0 + 3)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	___fsdiv
	mov	_MotorControl_sloc1_1_0,dpl
	mov	(_MotorControl_sloc1_1_0 + 1),dph
	mov	(_MotorControl_sloc1_1_0 + 2),b
	mov	(_MotorControl_sloc1_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,_MotorControl_sloc1_1_0
	mov	dph,(_MotorControl_sloc1_1_0 + 1)
	mov	b,(_MotorControl_sloc1_1_0 + 2)
	mov	a,(_MotorControl_sloc1_1_0 + 3)
	lcall	___fsgt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	mov	a,r2
	jnz	L014051?
	ljmp	L014013?
L014051?:
L014012?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:369: if (IndVolts[0]/IndVolts[1]>1.3){
	mov	a,#0x04
	add	a,_MotorControl_sloc0_1_0
	mov	r2,a
	clr	a
	addc	a,(_MotorControl_sloc0_1_0 + 1)
	mov	r3,a
	mov	r4,(_MotorControl_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	push	ar2
	push	ar3
	push	ar4
	push	ar1
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0x66
	push	acc
	push	acc
	mov	a,#0xA6
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsgt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jz	L014003?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:370: pwm_RED1=0;
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:371: pwm_RED0=0;
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:372: pwm_BLU1=2*power;
	clr	a
	mov	_pwm_RED1,a
	mov	_pwm_RED0,a
	mov	a,_power
	add	a,acc
	mov	_pwm_BLU1,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:373: pwm_BLU0=0;
	mov	_pwm_BLU0,#0x00
	ret
L014003?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:377: pwm_BLU1= 0;
	mov	_pwm_BLU1,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:378: pwm_BLU0 = 0;
	mov	_pwm_BLU0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:379: pwm_RED1 = power;
	mov	_pwm_RED1,_power
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:380: pwm_RED0 = 0; 
	mov	_pwm_RED0,#0x00
	ret
L014013?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:384: else if(IndVolts[1] > Vred_thresh + 0.1 || IndVolts[0]/IndVolts[1] < 1){
	mov	a,#0xCD
	push	acc
	mov	a,#0xCC
	push	acc
	mov	a,#0x8C
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,_MotorControl_sloc2_1_0
	mov	dph,(_MotorControl_sloc2_1_0 + 1)
	mov	b,(_MotorControl_sloc2_1_0 + 2)
	mov	a,(_MotorControl_sloc2_1_0 + 3)
	lcall	___fsgt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jnz	L014008?
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,_MotorControl_sloc1_1_0
	mov	dph,(_MotorControl_sloc1_1_0 + 1)
	mov	b,(_MotorControl_sloc1_1_0 + 2)
	mov	a,(_MotorControl_sloc1_1_0 + 3)
	lcall	___fslt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jz	L014009?
L014008?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:385: if (IndVolts[0]/IndVolts[1]<0.5){
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,_MotorControl_sloc1_1_0
	mov	dph,(_MotorControl_sloc1_1_0 + 1)
	mov	b,(_MotorControl_sloc1_1_0 + 2)
	mov	a,(_MotorControl_sloc1_1_0 + 3)
	lcall	___fslt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jz	L014006?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:386: pwm_RED1=2*power;
	mov	a,_power
	add	a,acc
	mov	_pwm_RED1,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:387: pwm_RED0=0;
	mov	_pwm_RED0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:388: pwm_BLU1=0;
	mov	_pwm_BLU1,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:389: pwm_BLU0=0;
	mov	_pwm_BLU0,#0x00
	ret
L014006?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:393: pwm_BLU1=power;
	mov	_pwm_BLU1,_power
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:394: pwm_BLU0=0;
	mov	_pwm_BLU0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:395: pwm_RED1=0;
	mov	_pwm_RED1,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:396: pwm_RED0=0;
	mov	_pwm_RED0,#0x00
	ret
L014009?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:400: pwm_BLU1 = power;
	mov	_pwm_BLU1,_power
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:401: pwm_BLU0 = 0;
	mov	_pwm_BLU0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:402: pwm_RED1 = power;
	mov	_pwm_RED1,_power
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:403: pwm_RED0 = 0;
	mov	_pwm_RED0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:405: break;
	ret
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:408: case BACKWARD:
L014016?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:409: if(IndVolts[0] > Vblue_thresh + 0.1 || IndVolts[0]/IndVolts[1] > 1){
	mov	_MotorControl_sloc2_1_0,_MotorControl_IndVolts_1_79
	mov	(_MotorControl_sloc2_1_0 + 1),(_MotorControl_IndVolts_1_79 + 1)
	mov	(_MotorControl_sloc2_1_0 + 2),(_MotorControl_IndVolts_1_79 + 2)
	mov	dpl,_MotorControl_sloc2_1_0
	mov	dph,(_MotorControl_sloc2_1_0 + 1)
	mov	b,(_MotorControl_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r0,a
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	___fsgt
	mov	r1,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	mov	a,r1
	jz	L014056?
	ljmp	L014027?
L014056?:
	mov	a,#0x04
	add	a,_MotorControl_sloc2_1_0
	mov	r1,a
	clr	a
	addc	a,(_MotorControl_sloc2_1_0 + 1)
	mov	r2,a
	mov	r3,(_MotorControl_sloc2_1_0 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	_MotorControl_sloc3_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_MotorControl_sloc3_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_MotorControl_sloc3_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_MotorControl_sloc3_1_0 + 3),a
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	_MotorControl_sloc3_1_0
	push	(_MotorControl_sloc3_1_0 + 1)
	push	(_MotorControl_sloc3_1_0 + 2)
	push	(_MotorControl_sloc3_1_0 + 3)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	___fsdiv
	mov	_MotorControl_sloc1_1_0,dpl
	mov	(_MotorControl_sloc1_1_0 + 1),dph
	mov	(_MotorControl_sloc1_1_0 + 2),b
	mov	(_MotorControl_sloc1_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,_MotorControl_sloc1_1_0
	mov	dph,(_MotorControl_sloc1_1_0 + 1)
	mov	b,(_MotorControl_sloc1_1_0 + 2)
	mov	a,(_MotorControl_sloc1_1_0 + 3)
	lcall	___fsgt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	mov	a,r2
	jnz	L014057?
	ljmp	L014028?
L014057?:
L014027?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:410: if (IndVolts[0]/IndVolts[1]>1.1){
	mov	a,#0x04
	add	a,_MotorControl_sloc2_1_0
	mov	r2,a
	clr	a
	addc	a,(_MotorControl_sloc2_1_0 + 1)
	mov	r3,a
	mov	r4,(_MotorControl_sloc2_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	push	ar2
	push	ar3
	push	ar4
	push	ar1
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0xCD
	push	acc
	mov	a,#0xCC
	push	acc
	mov	a,#0x8C
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsgt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jz	L014018?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:411: pwm_RED0=2*power;
	mov	a,_power
	add	a,acc
	mov	_pwm_RED0,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:412: pwm_RED1=0;
	mov	_pwm_RED1,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:413: pwm_BLU0=0;
	mov	_pwm_BLU0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:414: pwm_BLU1=0;
	mov	_pwm_BLU1,#0x00
	ret
L014018?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:418: pwm_BLU0= power;
	mov	_pwm_BLU0,_power
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:419: pwm_BLU1 = 0;
	mov	_pwm_BLU1,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:420: pwm_RED0 = 0;
	mov	_pwm_RED0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:421: pwm_RED1 = 0; 
	mov	_pwm_RED1,#0x00
	ret
L014028?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:425: else if(IndVolts[1] > Vred_thresh + 0.1 || IndVolts[0]/IndVolts[1] < 1){
	mov	a,#0xCD
	push	acc
	mov	a,#0xCC
	push	acc
	mov	a,#0x8C
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,_MotorControl_sloc3_1_0
	mov	dph,(_MotorControl_sloc3_1_0 + 1)
	mov	b,(_MotorControl_sloc3_1_0 + 2)
	mov	a,(_MotorControl_sloc3_1_0 + 3)
	lcall	___fsgt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jnz	L014023?
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,_MotorControl_sloc1_1_0
	mov	dph,(_MotorControl_sloc1_1_0 + 1)
	mov	b,(_MotorControl_sloc1_1_0 + 2)
	mov	a,(_MotorControl_sloc1_1_0 + 3)
	lcall	___fslt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jz	L014024?
L014023?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:426: if (IndVolts[0]/IndVolts[1]<0.8){
	mov	a,#0xCD
	push	acc
	mov	a,#0xCC
	push	acc
	mov	a,#0x4C
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,_MotorControl_sloc1_1_0
	mov	dph,(_MotorControl_sloc1_1_0 + 1)
	mov	b,(_MotorControl_sloc1_1_0 + 2)
	mov	a,(_MotorControl_sloc1_1_0 + 3)
	lcall	___fslt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jz	L014021?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:427: pwm_RED0=0;
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:428: pwm_RED1=0;
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:429: pwm_BLU0=2*power;
	clr	a
	mov	_pwm_RED0,a
	mov	_pwm_RED1,a
	mov	a,_power
	add	a,acc
	mov	_pwm_BLU0,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:430: pwm_BLU1=0;
	mov	_pwm_BLU1,#0x00
	ret
L014021?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:434: pwm_BLU0=0;
	mov	_pwm_BLU0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:435: pwm_BLU1=0;
	mov	_pwm_BLU1,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:436: pwm_RED0=power;
	mov	_pwm_RED0,_power
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:437: pwm_RED1=0;
	mov	_pwm_RED1,#0x00
	ret
L014024?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:441: pwm_BLU0 = power;
	mov	_pwm_BLU0,_power
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:442: pwm_BLU1 = 0;
	mov	_pwm_BLU1,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:443: pwm_RED0 = power;
	mov	_pwm_RED0,_power
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:444: pwm_RED1 = 0;
	mov	_pwm_RED1,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:446: break;
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:450: case STOP:
	ret
L014031?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:451: pwm_BLU1 = 0;
	mov	_pwm_BLU1,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:452: pwm_BLU0 = 0;
	mov	_pwm_BLU0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:453: pwm_RED1 = 0;
	mov	_pwm_RED1,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:454: pwm_RED0 = 0;
	mov	_pwm_RED0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:461: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DebuggingFctn'
;------------------------------------------------------------
;IndVolts                  Allocated with name '_DebuggingFctn_IndVolts_1_96'
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:472: void DebuggingFctn (volatile float IndVolts[])
;	-----------------------------------------
;	 function DebuggingFctn
;	-----------------------------------------
_DebuggingFctn:
	mov	_DebuggingFctn_IndVolts_1_96,dpl
	mov	(_DebuggingFctn_IndVolts_1_96 + 1),dph
	mov	(_DebuggingFctn_IndVolts_1_96 + 2),b
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:474: printf("Freq = %5.3f HZ, Mode = %d, Ratio = %5.3f\r", frequency, mode, IndVolts[0], IndVolts[0]/IndVolts[1]);
	mov	r2,_DebuggingFctn_IndVolts_1_96
	mov	r3,(_DebuggingFctn_IndVolts_1_96 + 1)
	mov	r4,(_DebuggingFctn_IndVolts_1_96 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r0,a
	mov	a,#0x04
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	ar2
	push	ar3
	push	ar4
	push	ar1
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	push	ar2
	push	ar3
	push	ar4
	push	ar1
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	_mode
	push	(_mode + 1)
	push	_frequency
	push	(_frequency + 1)
	push	(_frequency + 2)
	push	(_frequency + 3)
	mov	a,#__str_1
	push	acc
	mov	a,#(__str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xef
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;IndVolts                  Allocated with name '_main_IndVolts_1_99'
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:484: void main (void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:491: TIMER0_Init(); // Initialize timer 0 to read the frequency of the fm signal
	lcall	_TIMER0_Init
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:492: TIMER2_Init(); // Initialize timer 2 for periodic interrupts used for motor control
	lcall	_TIMER2_Init
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:493: EA=1; // Enable interrupts
	setb	_EA
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:495: InitPinADC(1, 7); // Configure P1.7 as analog input
	mov	_InitPinADC_PARM_2,#0x07
	mov	dpl,#0x01
	lcall	_InitPinADC
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:496: InitPinADC(2, 0); // Configure P2.0 as analog input
	mov	_InitPinADC_PARM_2,#0x00
	mov	dpl,#0x02
	lcall	_InitPinADC
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:497: InitPinADC(2, 7); // Configure P2.7 as analog input
	mov	_InitPinADC_PARM_2,#0x07
	mov	dpl,#0x02
	lcall	_InitPinADC
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:498: InitADC();
	lcall	_InitADC
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:499: printf("\x1b[2J"); // Clear screen using ANSI escape sequence.
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:507: while(1)
L016002?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:510: DetermineMode();
	lcall	_DetermineMode
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:513: IndVolts[0] = Volts_at_Pin(LQFP32_MUX_P2_7);
	mov	dpl,#0x0F
	lcall	_Volts_at_Pin
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	_main_IndVolts_1_99,r2
	mov	(_main_IndVolts_1_99 + 1),r3
	mov	(_main_IndVolts_1_99 + 2),r4
	mov	(_main_IndVolts_1_99 + 3),r5
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:514: IndVolts[1] = Volts_at_Pin(LQFP32_MUX_P1_7);
	mov	dpl,#0x07
	lcall	_Volts_at_Pin
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	(_main_IndVolts_1_99 + 0x0004),r2
	mov	((_main_IndVolts_1_99 + 0x0004) + 1),r3
	mov	((_main_IndVolts_1_99 + 0x0004) + 2),r4
	mov	((_main_IndVolts_1_99 + 0x0004) + 3),r5
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:515: IndVolts[2] = Volts_at_Pin(LQFP32_MUX_P2_0);
	mov	dpl,#0x08
	lcall	_Volts_at_Pin
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	(_main_IndVolts_1_99 + 0x0008),r2
	mov	((_main_IndVolts_1_99 + 0x0008) + 1),r3
	mov	((_main_IndVolts_1_99 + 0x0008) + 2),r4
	mov	((_main_IndVolts_1_99 + 0x0008) + 3),r5
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:519: MotorControl(IndVolts);
	mov	dptr,#_main_IndVolts_1_99
	mov	b,#0x40
	lcall	_MotorControl
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:522: DebuggingFctn(IndVolts);
	mov	dptr,#_main_IndVolts_1_99
	mov	b,#0x40
	lcall	_DebuggingFctn
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:525: waitms(20);
	mov	dptr,#0x0014
	lcall	_waitms
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:526: millisecond = millisecond + 20;
	mov	a,#0x14
	add	a,_millisecond
	mov	_millisecond,a
	clr	a
	addc	a,(_millisecond + 1)
	mov	(_millisecond + 1),a
	sjmp	L016002?
	rseg R_CSEG

	rseg R_XINIT

	rseg R_CONST
__str_0:
	db 'Stop sig detected'
	db 0x0A
	db 0x00
__str_1:
	db 'Freq = %5.3f HZ, Mode = %d, Ratio = %5.3f'
	db 0x0D
	db 0x00
__str_2:
	db 0x1B
	db '[2J'
	db 0x00

	CSEG

end
