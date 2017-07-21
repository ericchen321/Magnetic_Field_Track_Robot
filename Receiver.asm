;--------------------------------------------------------
; File Created by C51
; Version 1.0.0 #1069 (Apr 23 2015) (MSVC)
<<<<<<< HEAD
; This file was generated Tue Apr 04 08:26:17 2017
=======
; This file was generated Mon Apr 03 11:26:18 2017
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
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
	public _ReadPeriod
	public _Clean_LCD
	public _LCDprint
	public _LCD_4BIT
	public _WriteCommand
	public _WriteData
	public _LCD_byte
	public _LCD_pulse
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
<<<<<<< HEAD
	public _LCDprint_PARM_3
	public _LCDprint_PARM_2
	public _debugstring
	public _period
	public _millisecond
	public _WriteCount
	public _mode
=======
	public _millisecond
	public _StopSigCount
	public _ForwardSigCount
	public _WriteCount
	public _FreqBuffer
	public _mode
	public _frequency
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
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
<<<<<<< HEAD
_mode:
	ds 2
_WriteCount:
	ds 1
_millisecond:
	ds 2
_period:
	ds 4
_debugstring:
	ds 10
_LCDprint_PARM_2:
	ds 1
_MotorControl_IndVolts_1_91:
	ds 3
_main_IndVolts_1_103:
=======
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
_MotorControl_IndVolts_1_80:
	ds 3
_MotorControl_sloc0_1_0:
	ds 3
_MotorControl_sloc1_1_0:
	ds 4
_MotorControl_sloc2_1_0:
	ds 4
_MotorControl_sloc3_1_0:
	ds 4
_DebuggingFctn_IndVolts_1_97:
	ds 3
_main_IndVolts_1_100:
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	ds 12
_main_sloc0_1_0:
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
_LCDprint_PARM_3:
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
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:56: volatile unsigned char pwm_count=0;
	mov	_pwm_count,#0x00
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:57: volatile unsigned char power=30;
	mov	_power,#0x1E
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:58: volatile unsigned char pwm_BLU0=0;
=======
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:47: volatile unsigned char power=30;
	mov	_power,#0x1E
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:48: volatile unsigned char pwm_BLU0=0;
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	mov	_pwm_BLU0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:59: volatile unsigned char pwm_BLU1=0;
	mov	_pwm_BLU1,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:60: volatile unsigned char pwm_RED0=0;
	mov	_pwm_RED0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:61: volatile unsigned char pwm_RED1=0;
	mov	_pwm_RED1,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:62: volatile unsigned char dirout=0;
	mov	_dirout,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:63: unsigned char overflow_count=0;
	mov	_overflow_count,#0x00
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:64: unsigned int mode=FORWARD;
	mov	_mode,#0x03
	clr	a
	mov	(_mode + 1),a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:65: unsigned char WriteCount = 0;
	mov	_WriteCount,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:66: unsigned int millisecond=0;
	clr	a
	mov	_millisecond,a
	mov	(_millisecond + 1),a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:67: volatile float period=0;
	mov	_period,#0x00
	mov	(_period + 1),#0x00
	mov	(_period + 2),#0x00
	mov	(_period + 3),#0x00
=======
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
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	; The linker places a 'ret' at the end of segment R_DINIT.
;--------------------------------------------------------
; code
;--------------------------------------------------------
	rseg R_CSEG
;------------------------------------------------------------
;Allocation info for local variables in function '_c51_external_startup'
;------------------------------------------------------------
;------------------------------------------------------------
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:73: char _c51_external_startup (void)
=======
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:66: char _c51_external_startup (void)
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
;	-----------------------------------------
;	 function _c51_external_startup
;	-----------------------------------------
__c51_external_startup:
	using	0
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:75: PCA0MD&=(~0x40) ;    // DISABLE WDT: clear Watchdog Enable bit
	anl	_PCA0MD,#0xBF
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:76: VDM0CN=0x80; // enable VDD monitor
	mov	_VDM0CN,#0x80
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:77: RSTSRC=0x02|0x04; // Enable reset on missing clock detector and VDD
	mov	_RSTSRC,#0x06
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:85: CLKSEL|=0b_0000_0011; // SYSCLK derived from the Internal High-Frequency Oscillator / 1.
	orl	_CLKSEL,#0x03
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:89: OSCICN |= 0x03; // Configure internal oscillator for its maximum frequency
	orl	_OSCICN,#0x03
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:92: SCON0 = 0x10;
	mov	_SCON0,#0x10
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:94: TH1 = 0x10000-((SYSCLK/BAUDRATE)/2L);
	mov	_TH1,#0x30
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:95: CKCON &= ~0x0B;                  // T1M = 1; SCA1:0 = xx
	anl	_CKCON,#0xF4
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:96: CKCON |=  0x08;
	orl	_CKCON,#0x08
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:109: TL1 = TH1;      // Init Timer1
	mov	_TL1,_TH1
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:110: TMOD &= ~0xf0;  // TMOD: timer 1 in 8-bit autoreload
	anl	_TMOD,#0x0F
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:111: TMOD |=  0x20;
	orl	_TMOD,#0x20
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:112: TR1 = 1; // START Timer1
	setb	_TR1
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:113: TI = 1;  // Indicate TX0 ready
	setb	_TI
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:116: P2MDOUT|=0b_0000_0011;
	orl	_P2MDOUT,#0x03
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:117: P0MDOUT |= 0x01;  // set P0.0 and P0.4 as push-pull outputs
	orl	_P0MDOUT,#0x01
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:118: XBR0     = 0x01; // Enable UART on P0.4(TX) and P0.5(RX)
	mov	_XBR0,#0x01
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:119: XBR1     = 0x40; // Enable crossbar and weak pull-ups
	mov	_XBR1,#0x40
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:121: return 0;
=======
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
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer3us'
;------------------------------------------------------------
;us                        Allocated to registers r2 
;i                         Allocated to registers r3 
;------------------------------------------------------------
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:128: void Timer3us(unsigned char us)
=======
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:121: void Timer3us(unsigned char us)
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
;	-----------------------------------------
;	 function Timer3us
;	-----------------------------------------
_Timer3us:
	mov	r2,dpl
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:133: CKCON|=0b_0100_0000;
	orl	_CKCON,#0x40
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:135: TMR3RL = (-(SYSCLK)/1000000L); // Set Timer3 to overflow in 1us.
	mov	_TMR3RL,#0xD0
	mov	(_TMR3RL >> 8),#0xFF
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:136: TMR3 = TMR3RL;                 // Initialize Timer3 for first overflow
	mov	_TMR3,_TMR3RL
	mov	(_TMR3 >> 8),(_TMR3RL >> 8)
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:138: TMR3CN = 0x04;                 // Sart Timer3 and clear overflow flag
	mov	_TMR3CN,#0x04
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:139: for (i = 0; i < us; i++)       // Count <us> overflows
=======
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
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	mov	r3,#0x00
L003004?:
	clr	c
	mov	a,r3
	subb	a,r2
	jnc	L003007?
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:141: while (!(TMR3CN & 0x80));  // Wait for overflow
L003001?:
	mov	a,_TMR3CN
	jnb	acc.7,L003001?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:142: TMR3CN &= ~(0x80);         // Clear overflow indicator
	anl	_TMR3CN,#0x7F
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:139: for (i = 0; i < us; i++)       // Count <us> overflows
	inc	r3
	sjmp	L003004?
L003007?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:144: TMR3CN = 0 ;                   // Stop Timer3 and clear overflow flag
=======
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
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	mov	_TMR3CN,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'waitms'
;------------------------------------------------------------
;ms                        Allocated to registers r2 r3 
;j                         Allocated to registers r2 r3 
;------------------------------------------------------------
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:151: void waitms (unsigned int ms)
=======
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:144: void waitms (unsigned int ms)
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
;	-----------------------------------------
;	 function waitms
;	-----------------------------------------
_waitms:
	mov	r2,dpl
	mov	r3,dph
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:154: for(j=ms; j!=0; j--)
=======
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:147: for(j=ms; j!=0; j--)
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
L004001?:
	cjne	r2,#0x00,L004010?
	cjne	r3,#0x00,L004010?
	ret
L004010?:
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:156: Timer3us(249);
=======
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:149: Timer3us(249);
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	mov	dpl,#0xF9
	push	ar2
	push	ar3
	lcall	_Timer3us
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:157: Timer3us(249);
	mov	dpl,#0xF9
	lcall	_Timer3us
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:158: Timer3us(249);
	mov	dpl,#0xF9
	lcall	_Timer3us
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:159: Timer3us(250);
=======
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:150: Timer3us(249);
	mov	dpl,#0xF9
	lcall	_Timer3us
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:151: Timer3us(249);
	mov	dpl,#0xF9
	lcall	_Timer3us
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:152: Timer3us(250);
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	mov	dpl,#0xFA
	lcall	_Timer3us
	pop	ar3
	pop	ar2
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:154: for(j=ms; j!=0; j--)
=======
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:147: for(j=ms; j!=0; j--)
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	dec	r2
	cjne	r2,#0xff,L004011?
	dec	r3
L004011?:
	sjmp	L004001?
;------------------------------------------------------------
;Allocation info for local variables in function 'TIMER0_Init'
;------------------------------------------------------------
;------------------------------------------------------------
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:165: void TIMER0_Init(void)
=======
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:158: void TIMER0_Init(void)
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
;	-----------------------------------------
;	 function TIMER0_Init
;	-----------------------------------------
_TIMER0_Init:
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:167: TMOD&=0b_1111_0000; // Set the bits of Timer/Counter 0 to zero
	anl	_TMOD,#0xF0
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:168: TMOD|=0b_0000_0001; // Timer/Counter 0 used as a 16-bit timer
	orl	_TMOD,#0x01
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:169: TR0=0; // Stop Timer/Counter 0
=======
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:160: TMOD&=0b_1111_0000; // Set the bits of Timer/Counter 0 to zero
	anl	_TMOD,#0xF0
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:161: TMOD|=0b_0000_0001; // Timer/Counter 0 used as a 16-bit timer
	orl	_TMOD,#0x01
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:162: TR0=0; // Stop Timer/Counter 0
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	clr	_TR0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TIMER2_Init'
;------------------------------------------------------------
;------------------------------------------------------------
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:175: void TIMER2_Init(void)
=======
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:168: void TIMER2_Init(void)
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
;	-----------------------------------------
;	 function TIMER2_Init
;	-----------------------------------------
_TIMER2_Init:
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:177: TMR2CN=0x00;   // Stop Timer2; Clear TF2;
	mov	_TMR2CN,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:178: CKCON|=0b_0001_0000;
	orl	_CKCON,#0x10
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:179: TMR2RL=(-(SYSCLK/(2*48))/(100L)); // Initialize reload value
	mov	_TMR2RL,#0x78
	mov	(_TMR2RL >> 8),#0xEC
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:180: TMR2=0xffff;   // Set to reload immediately
	mov	_TMR2,#0xFF
	mov	(_TMR2 >> 8),#0xFF
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:181: ET2=1;         // Enable Timer2 interrupts
	setb	_ET2
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:182: TR2=1;         // Start Timer2
=======
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
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	setb	_TR2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitADC'
;------------------------------------------------------------
;------------------------------------------------------------
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:188: void InitADC (void)
=======
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:181: void InitADC (void)
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
;	-----------------------------------------
;	 function InitADC
;	-----------------------------------------
_InitADC:
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:191: ADC0CF = 0xF8; // SAR clock = 31, Right-justified result
	mov	_ADC0CF,#0xF8
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:192: ADC0CN = 0b_1000_0000; // AD0EN=1, AD0TM=0
	mov	_ADC0CN,#0x80
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:193: REF0CN = 0b_0000_1000; //Select VDD as the voltage reference for the converter
=======
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:184: ADC0CF = 0xF8; // SAR clock = 31, Right-justified result
	mov	_ADC0CF,#0xF8
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:185: ADC0CN = 0b_1000_0000; // AD0EN=1, AD0TM=0
	mov	_ADC0CN,#0x80
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:186: REF0CN = 0b_0000_1000; //Select VDD as the voltage reference for the converter
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	mov	_REF0CN,#0x08
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitPinADC'
;------------------------------------------------------------
;pinno                     Allocated with name '_InitPinADC_PARM_2'
;portno                    Allocated to registers r2 
;mask                      Allocated to registers r3 
;------------------------------------------------------------
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:200: void InitPinADC (unsigned char portno, unsigned char pinno)
=======
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:193: void InitPinADC (unsigned char portno, unsigned char pinno)
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
;	-----------------------------------------
;	 function InitPinADC
;	-----------------------------------------
_InitPinADC:
	mov	r2,dpl
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:204: mask=1<<pinno;
=======
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:197: mask=1<<pinno;
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	mov	b,_InitPinADC_PARM_2
	inc	b
	mov	a,#0x01
	sjmp	L008012?
L008010?:
	add	a,acc
L008012?:
	djnz	b,L008010?
	mov	r3,a
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:206: switch (portno)
=======
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:199: switch (portno)
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
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
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:208: case 0:
L008001?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:209: P0MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	anl	_P0MDIN,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:210: P0SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P0SKIP,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:211: break;
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:212: case 1:
	ret
L008002?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:213: P1MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	anl	_P1MDIN,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:214: P1SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P1SKIP,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:215: break;
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:216: case 2:
	ret
L008003?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:217: P2MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	anl	_P2MDIN,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:218: P2SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P2SKIP,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:219: break;
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:220: case 3:
	ret
L008004?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:221: P3MDIN &= (~mask); // Set pin as analog input
=======
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
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	mov	a,r3
	cpl	a
	mov	r2,a
	anl	_P3MDIN,a
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:222: P3SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P3SKIP,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:226: }
=======
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:215: P3SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P3SKIP,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:219: }
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
L008007?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_at_Pin'
;------------------------------------------------------------
;pin                       Allocated to registers 
;------------------------------------------------------------
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:233: unsigned int ADC_at_Pin(unsigned char pin)
=======
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:226: unsigned int ADC_at_Pin(unsigned char pin)
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
;	-----------------------------------------
;	 function ADC_at_Pin
;	-----------------------------------------
_ADC_at_Pin:
	mov	_AMX0P,dpl
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:236: AMX0N = LQFP32_MUX_GND;  // GND is negative input (Single-ended Mode)
	mov	_AMX0N,#0x1F
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:238: AD0BUSY=1;
	setb	_AD0BUSY
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:239: while (AD0BUSY); // Wait for dummy conversion to finish
L009001?:
	jb	_AD0BUSY,L009001?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:241: AD0BUSY = 1;
	setb	_AD0BUSY
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:242: while (AD0BUSY); // Wait for conversion to complete
L009004?:
	jb	_AD0BUSY,L009004?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:243: return (ADC0L+(ADC0H*0x100));
=======
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
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
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
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:250: float Volts_at_Pin(unsigned char pin)
=======
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:243: float Volts_at_Pin(unsigned char pin)
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
;	-----------------------------------------
;	 function Volts_at_Pin
;	-----------------------------------------
_Volts_at_Pin:
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:252: return ((ADC_at_Pin(pin)*VDD_onboard)/1024.0);
=======
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:245: return ((ADC_at_Pin(pin)*VDD_onboard)/1024.0);
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
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
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:259: void Timer2_ISR (void) interrupt 5
=======
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:252: void Timer2_ISR (void) interrupt 5
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
;	-----------------------------------------
;	 function Timer2_ISR
;	-----------------------------------------
_Timer2_ISR:
	push	acc
	push	psw
	mov	psw,#0x00
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:261: TF2H = 0; // Clear Timer2 interrupt flag
	clr	_TF2H
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:263: pwm_count++;
	inc	_pwm_count
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:264: if(pwm_count>100) pwm_count=0;
=======
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:254: TF2H = 0; // Clear Timer2 interrupt flag
	clr	_TF2H
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:256: pwm_count++;
	inc	_pwm_count
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:257: if(pwm_count>100) pwm_count=0;
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	mov	a,_pwm_count
	add	a,#0xff - 0x64
	jnc	L011002?
	mov	_pwm_count,#0x00
L011002?:
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:266: BLU0=pwm_count>pwm_BLU0?0:1;
=======
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:259: BLU0=pwm_count>pwm_BLU0?0:1;
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	clr	c
	mov	a,_pwm_BLU0
	subb	a,_pwm_count
	mov  _Timer2_ISR_sloc0_1_0,c
	cpl	c
	mov	_P2_5,c
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:267: BLU1=pwm_count>pwm_BLU1?0:1;
=======
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:260: BLU1=pwm_count>pwm_BLU1?0:1;
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	clr	c
	mov	a,_pwm_BLU1
	subb	a,_pwm_count
	mov  _Timer2_ISR_sloc0_1_0,c
	cpl	c
	mov	_P2_2,c
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:269: RED0=pwm_count>pwm_RED0?0:1;
=======
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:262: RED0=pwm_count>pwm_RED0?0:1;
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	clr	c
	mov	a,_pwm_RED0
	subb	a,_pwm_count
	mov  _Timer2_ISR_sloc0_1_0,c
	cpl	c
	mov	_P2_3,c
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:270: RED1=pwm_count>pwm_RED1?0:1;
=======
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:263: RED1=pwm_count>pwm_RED1?0:1;
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
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
;Allocation info for local variables in function 'LCD_pulse'
;------------------------------------------------------------
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:276: void LCD_pulse (void)
;	-----------------------------------------
;	 function LCD_pulse
;	-----------------------------------------
_LCD_pulse:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:278: LCD_E=1;
	setb	_P1_5
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:279: Timer3us(40);
	mov	dpl,#0x28
	lcall	_Timer3us
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:280: LCD_E=0;
	clr	_P1_5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_byte'
;------------------------------------------------------------
;x                         Allocated to registers r2 
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:283: void LCD_byte (unsigned char x)
;	-----------------------------------------
;	 function LCD_byte
;	-----------------------------------------
_LCD_byte:
	mov	r2,dpl
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:286: ACC=x; //Send high nible
	mov	_ACC,r2
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:287: LCD_D7=ACC_7;
	mov	c,_ACC_7
	mov	_P1_0,c
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:288: LCD_D6=ACC_6;
	mov	c,_ACC_6
	mov	_P1_1,c
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:289: LCD_D5=ACC_5;
	mov	c,_ACC_5
	mov	_P1_2,c
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:290: LCD_D4=ACC_4;
	mov	c,_ACC_4
	mov	_P1_3,c
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:291: LCD_pulse();
	push	ar2
	lcall	_LCD_pulse
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:292: Timer3us(40);
	mov	dpl,#0x28
	lcall	_Timer3us
	pop	ar2
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:293: ACC=x; //Send low nible
	mov	_ACC,r2
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:294: LCD_D7=ACC_3;
	mov	c,_ACC_3
	mov	_P1_0,c
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:295: LCD_D6=ACC_2;
	mov	c,_ACC_2
	mov	_P1_1,c
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:296: LCD_D5=ACC_1;
	mov	c,_ACC_1
	mov	_P1_2,c
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:297: LCD_D4=ACC_0;
	mov	c,_ACC_0
	mov	_P1_3,c
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:298: LCD_pulse();
	ljmp	_LCD_pulse
;------------------------------------------------------------
;Allocation info for local variables in function 'WriteData'
;------------------------------------------------------------
;x                         Allocated to registers r2 
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:301: void WriteData (unsigned char x)
;	-----------------------------------------
;	 function WriteData
;	-----------------------------------------
_WriteData:
	mov	r2,dpl
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:303: LCD_RS=1;
	setb	_P2_1
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:304: LCD_byte(x);
	mov	dpl,r2
	lcall	_LCD_byte
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:305: waitms(2);
	mov	dptr,#0x0002
	ljmp	_waitms
;------------------------------------------------------------
;Allocation info for local variables in function 'WriteCommand'
;------------------------------------------------------------
;x                         Allocated to registers r2 
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:308: void WriteCommand (unsigned char x)
;	-----------------------------------------
;	 function WriteCommand
;	-----------------------------------------
_WriteCommand:
	mov	r2,dpl
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:310: LCD_RS=0;
	clr	_P2_1
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:311: LCD_byte(x);
	mov	dpl,r2
	lcall	_LCD_byte
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:312: waitms(5);
	mov	dptr,#0x0005
	ljmp	_waitms
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_4BIT'
;------------------------------------------------------------
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:315: void LCD_4BIT (void)
;	-----------------------------------------
;	 function LCD_4BIT
;	-----------------------------------------
_LCD_4BIT:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:317: LCD_E=0; // Resting state of LCD's enable is zero
	clr	_P1_5
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:318: LCD_RW=0; // We are only writing to the LCD in this program
	clr	_P1_7
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:319: waitms(20);
	mov	dptr,#0x0014
	lcall	_waitms
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:321: WriteCommand(0x33);
	mov	dpl,#0x33
	lcall	_WriteCommand
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:322: WriteCommand(0x33);
	mov	dpl,#0x33
	lcall	_WriteCommand
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:323: WriteCommand(0x32); // Change to 4-bit mode
	mov	dpl,#0x32
	lcall	_WriteCommand
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:326: WriteCommand(0x28);
	mov	dpl,#0x28
	lcall	_WriteCommand
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:327: WriteCommand(0x0c);
	mov	dpl,#0x0C
	lcall	_WriteCommand
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:328: WriteCommand(0x01); // Clear screen command (takes some time)
	mov	dpl,#0x01
	lcall	_WriteCommand
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:329: waitms(20); // Wait for clear screen command to finsih.
	mov	dptr,#0x0014
	ljmp	_waitms
;------------------------------------------------------------
;Allocation info for local variables in function 'LCDprint'
;------------------------------------------------------------
;line                      Allocated with name '_LCDprint_PARM_2'
;string                    Allocated to registers r2 r3 r4 
;j                         Allocated to registers r5 r6 
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:332: void LCDprint(char * string, unsigned char line, bit clear)
;	-----------------------------------------
;	 function LCDprint
;	-----------------------------------------
_LCDprint:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:336: WriteCommand(line==2?0xc0:0x80);
	mov	a,#0x02
	cjne	a,_LCDprint_PARM_2,L017013?
	mov	r5,#0xC0
	sjmp	L017014?
L017013?:
	mov	r5,#0x80
L017014?:
	mov	dpl,r5
	push	ar2
	push	ar3
	push	ar4
	lcall	_WriteCommand
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:337: waitms(5);
	mov	dptr,#0x0005
	lcall	_waitms
	pop	ar4
	pop	ar3
	pop	ar2
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:338: for(j=0; string[j]!=0; j++)	WriteData(string[j]);// Write the message
	mov	r5,#0x00
	mov	r6,#0x00
L017003?:
	mov	a,r5
	add	a,r2
	mov	r7,a
	mov	a,r6
	addc	a,r3
	mov	r0,a
	mov	ar1,r4
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	r7,a
	jz	L017006?
	mov	dpl,r7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_WriteData
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	inc	r5
	cjne	r5,#0x00,L017003?
	inc	r6
	sjmp	L017003?
L017006?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:339: if(clear) for(; j<CHARS_PER_LINE; j++) WriteData(' '); // Clear the rest of the line
	jnb	_LCDprint_PARM_3,L017011?
	mov	ar2,r5
	mov	ar3,r6
L017007?:
	clr	c
	mov	a,r2
	subb	a,#0x10
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jnc	L017011?
	mov	dpl,#0x20
	push	ar2
	push	ar3
	lcall	_WriteData
	pop	ar3
	pop	ar2
	inc	r2
	cjne	r2,#0x00,L017007?
	inc	r3
	sjmp	L017007?
L017011?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Clean_LCD'
;------------------------------------------------------------
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:343: void Clean_LCD(void){
;	-----------------------------------------
;	 function Clean_LCD
;	-----------------------------------------
_Clean_LCD:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:344: LCDprint("                ", 1, 1);
	mov	_LCDprint_PARM_2,#0x01
	setb	_LCDprint_PARM_3
	mov	dptr,#__str_0
	mov	b,#0x80
	lcall	_LCDprint
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:345: LCDprint("                ", 2, 1);
	mov	_LCDprint_PARM_2,#0x02
	setb	_LCDprint_PARM_3
	mov	dptr,#__str_0
	mov	b,#0x80
	ljmp	_LCDprint
;------------------------------------------------------------
;Allocation info for local variables in function 'ReadPeriod'
;------------------------------------------------------------
;------------------------------------------------------------
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:351: void ReadPeriod (void)
=======
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:270: void ReadFrequency (void)
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
;	-----------------------------------------
;	 function ReadPeriod
;	-----------------------------------------
<<<<<<< HEAD
_ReadPeriod:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:355: TL0=0;
	mov	_TL0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:356: TH0=0;
	mov	_TH0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:357: TF0=0;
	clr	_TF0
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:358: overflow_count=0;
	mov	_overflow_count,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:362: while(FRQIN!=1); // Wait for the signal to be one
L019001?:
	jnb	_P1_6,L019001?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:363: while(FRQIN!=0); // Wait for the signal to be zero
L019004?:
	jb	_P1_6,L019004?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:364: TR0=1; // Start the timer
	setb	_TR0
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:365: while(FRQIN!=1) // Wait for the signal to be one
L019009?:
	jb	_P1_6,L019014?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:367: if(TF0==1) // Did the 16-bit timer overflow?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:369: TF0=0;
	jbc	_TF0,L019031?
	sjmp	L019009?
L019031?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:370: overflow_count++;
	inc	_overflow_count
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:373: while(FRQIN!=0) // Wait for the signal to be zero
	sjmp	L019009?
L019014?:
	jnb	_P1_6,L019016?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:375: if(TF0==1) // Did the 16-bit timer overflow?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:377: TF0=0;
	jbc	_TF0,L019033?
	sjmp	L019014?
L019033?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:378: overflow_count++;
	inc	_overflow_count
	sjmp	L019014?
L019016?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:382: TR0=0; // Stop timer 0, the 24-bit number [overflow_count-TH0-TL0] has the period. Then convert it to frequency
	clr	_TR0
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:384: period=1000.0*(overflow_count*65536.0+TH0*256.0+TL0)*(12.0/SYSCLK); // Compute period. Unit in ms
=======
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
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
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
	mov	dptr,#0x126F
	mov	b,#0x83
	mov	a,#0x39
	lcall	___fsmul
	mov	_period,dpl
	mov	(_period + 1),dph
	mov	(_period + 2),b
	mov	(_period + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DetermineMode'
;------------------------------------------------------------
;ReadCount                 Allocated to registers r2 
;------------------------------------------------------------
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:392: void DetermineMode (void) {
=======
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:307: void DetermineMode (void) {
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
;	-----------------------------------------
;	 function DetermineMode
;	-----------------------------------------
_DetermineMode:
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:394: if (period>220.0 && period<360.0){
	clr	a
	push	acc
	push	acc
	mov	a,#0x5C
=======
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:309: ReadFrequency();
	lcall	_ReadFrequency
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:313: if (millisecond%600==0){
	mov	__moduint_PARM_2,#0x58
	mov	(__moduint_PARM_2 + 1),#0x02
	mov	dpl,_millisecond
	mov	dph,(_millisecond + 1)
	lcall	__moduint
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	L013038?
	ret
L013038?:
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
	cjne	a,_WriteCount,L013032?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:318: WriteCount=0;
	mov	_WriteCount,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:322: for (ReadCount=0; ReadCount<4; ReadCount++){
L013032?:
	mov	r2,#0x00
L013019?:
	cjne	r2,#0x04,L013041?
L013041?:
	jc	L013042?
	ljmp	L013022?
L013042?:
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
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:326: if (FreqBuffer[ReadCount]>0.98*FRQSTOP && FreqBuffer[ReadCount]<1.02*FRQSTOP){
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
	mov	a,#0x0A
	push	acc
	mov	a,#0x41
	push	acc
	mov	a,#0x66
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
	jz	L013021?
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
	mov	a,#0xF6
	push	acc
	mov	a,#0xA6
	push	acc
	mov	a,#0x6F
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
	jz	L013021?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:327: StopSigCount++;	
	inc	_StopSigCount
L013021?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:322: for (ReadCount=0; ReadCount<4; ReadCount++){
	inc	r2
	ljmp	L013019?
L013022?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:332: if (StopSigCount > 2){
	mov	a,_StopSigCount
	add	a,#0xff - 0x02
	jnc	L013010?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:333: mode = STOP;
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:334: StopSigCount = 0;
	clr	a
	mov	_mode,a
	mov	(_mode + 1),a
	mov	_StopSigCount,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:335: return;
	ret
L013010?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:339: if (ForwardSigCount > 2){
	mov	a,_ForwardSigCount
	add	a,#0xff - 0x02
	jnc	L013023?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:340: mode = FORWARD;
	mov	_mode,#0x03
	clr	a
	mov	(_mode + 1),a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:342: while (frequency< FRQLOW || frequency>FRQHIGH){
L013012?:
	clr	a
	push	acc
	mov	a,#0xE0
	push	acc
	mov	a,#0x76
	push	acc
	mov	a,#0x46
	push	acc
	mov	dpl,_frequency
	mov	dph,(_frequency + 1)
	mov	b,(_frequency + 2)
	mov	a,(_frequency + 3)
	lcall	___fslt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jnz	L013013?
	push	acc
	mov	a,#0x20
	push	acc
	mov	a,#0x7D
	push	acc
	mov	a,#0x46
	push	acc
	mov	dpl,_frequency
	mov	dph,(_frequency + 1)
	mov	b,(_frequency + 2)
	mov	a,(_frequency + 3)
	lcall	___fsgt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jz	L013014?
L013013?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:343: power=0;
	mov	_power,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:344: ReadFrequency();		  
	lcall	_ReadFrequency
	sjmp	L013012?
L013014?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:347: power=30;
	mov	_power,#0x1E
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:348: ForwardSigCount = 0;
	mov	_ForwardSigCount,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:349: return;
L013023?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MotorControl'
;------------------------------------------------------------
;IndVolts                  Allocated with name '_MotorControl_IndVolts_1_80'
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
	mov	_MotorControl_IndVolts_1_80,dpl
	mov	(_MotorControl_IndVolts_1_80 + 1),dph
	mov	(_MotorControl_IndVolts_1_80 + 2),b
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
	mov	_MotorControl_sloc0_1_0,_MotorControl_IndVolts_1_80
	mov	(_MotorControl_sloc0_1_0 + 1),(_MotorControl_IndVolts_1_80 + 1)
	mov	(_MotorControl_sloc0_1_0 + 2),(_MotorControl_IndVolts_1_80 + 2)
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
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	push	acc
	mov	a,#0x43
	push	acc
	mov	dpl,_period
	mov	dph,(_period + 1)
	mov	b,(_period + 2)
	mov	a,(_period + 3)
	lcall	___fsgt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
<<<<<<< HEAD
	mov	a,r2
	jz	L020002?
	clr	a
	push	acc
	push	acc
	mov	a,#0xB4
	push	acc
	mov	a,#0x43
	push	acc
	mov	dpl,_period
	mov	dph,(_period + 1)
	mov	b,(_period + 2)
	mov	a,(_period + 3)
	lcall	___fslt
	mov	r2,dpl
=======
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
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jz	L020002?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:395: mode = STOP;
	clr	a
	mov	_mode,a
	mov	(_mode + 1),a
L020002?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:399: if (period>360.0 && period<450.0){
	clr	a
	push	acc
	push	acc
	mov	a,#0xB4
	push	acc
	mov	a,#0x43
	push	acc
<<<<<<< HEAD
	mov	dpl,_period
	mov	dph,(_period + 1)
	mov	b,(_period + 2)
	mov	a,(_period + 3)
=======
	mov	dpl,_MotorControl_sloc1_1_0
	mov	dph,(_MotorControl_sloc1_1_0 + 1)
	mov	b,(_MotorControl_sloc1_1_0 + 2)
	mov	a,(_MotorControl_sloc1_1_0 + 3)
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	lcall	___fsgt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
<<<<<<< HEAD
	jz	L020005?
	clr	a
	push	acc
	push	acc
	mov	a,#0xE1
=======
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
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	push	acc
	mov	a,#0x43
	push	acc
<<<<<<< HEAD
	mov	dpl,_period
	mov	dph,(_period + 1)
	mov	b,(_period + 2)
	mov	a,(_period + 3)
=======
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
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	lcall	___fslt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
<<<<<<< HEAD
	jz	L020005?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:400: mode = FORWARD;
	mov	_mode,#0x03
	clr	a
	mov	(_mode + 1),a
L020005?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:403: if(period>135.0 && period<220.0){
	clr	a
	push	acc
	push	acc
	mov	a,#0x07
	push	acc
	mov	a,#0x43
	push	acc
	mov	dpl,_period
	mov	dph,(_period + 1)
	mov	b,(_period + 2)
	mov	a,(_period + 3)
	lcall	___fsgt
=======
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
	mov	_MotorControl_sloc2_1_0,_MotorControl_IndVolts_1_80
	mov	(_MotorControl_sloc2_1_0 + 1),(_MotorControl_IndVolts_1_80 + 1)
	mov	(_MotorControl_sloc2_1_0 + 2),(_MotorControl_IndVolts_1_80 + 2)
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
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
<<<<<<< HEAD
	mov	a,r2
	jz	L020008?
	clr	a
=======
	mov	a,#0xCD
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	push	acc
	mov	a,#0xCC
	push	acc
<<<<<<< HEAD
	mov	a,#0x5C
=======
	mov	a,#0x8C
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	push	acc
	mov	a,#0x43
	push	acc
	mov	dpl,_period
	mov	dph,(_period + 1)
	mov	b,(_period + 2)
	mov	a,(_period + 3)
	lcall	___fslt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
<<<<<<< HEAD
	jz	L020008?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:404: mode = ROTATE;
	mov	_mode,#0x05
	clr	a
	mov	(_mode + 1),a
L020008?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:407: if(period>550.0 && period<650.0){
	clr	a
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x09
	push	acc
	mov	a,#0x44
	push	acc
	mov	dpl,_period
	mov	dph,(_period + 1)
	mov	b,(_period + 2)
	mov	a,(_period + 3)
=======
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
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	lcall	___fsgt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
<<<<<<< HEAD
	jz	L020013?
	clr	a
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x22
	push	acc
	mov	a,#0x44
	push	acc
	mov	dpl,_period
	mov	dph,(_period + 1)
	mov	b,(_period + 2)
	mov	a,(_period + 3)
=======
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
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	lcall	___fslt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
<<<<<<< HEAD
	jz	L020013?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:408: mode = BACKWARD;
	mov	_mode,#0x04
	clr	a
	mov	(_mode + 1),a
L020013?:
=======
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
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MotorControl'
;------------------------------------------------------------
<<<<<<< HEAD
;IndVolts                  Allocated with name '_MotorControl_IndVolts_1_91'
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:418: void MotorControl (volatile float IndVolts[])
=======
;IndVolts                  Allocated with name '_DebuggingFctn_IndVolts_1_97'
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:472: void DebuggingFctn (volatile float IndVolts[])
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
;	-----------------------------------------
;	 function MotorControl
;	-----------------------------------------
<<<<<<< HEAD
_MotorControl:
	mov	_MotorControl_IndVolts_1_91,dpl
	mov	(_MotorControl_IndVolts_1_91 + 1),dph
	mov	(_MotorControl_IndVolts_1_91 + 2),b
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:421: switch (mode){
	clr	c
	mov	a,#0x05
	subb	a,_mode
	clr	a
	subb	a,(_mode + 1)
	jnc	L021028?
	ret
L021028?:
	mov	a,_mode
	add	a,_mode
	add	a,_mode
	mov	dptr,#L021029?
	jmp	@a+dptr
L021029?:
	ljmp	L021015?
	ljmp	L021016?
	ljmp	L021017?
	ljmp	L021001?
	ljmp	L021008?
	ljmp	L021018?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:423: case FORWARD:
L021001?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:424: if((IndVolts[0] - Vblue_middle) > Vblue_thresh){
	mov	r2,_MotorControl_IndVolts_1_91
	mov	r3,(_MotorControl_IndVolts_1_91 + 1)
	mov	r4,(_MotorControl_IndVolts_1_91 + 2)
=======
_DebuggingFctn:
	mov	_DebuggingFctn_IndVolts_1_97,dpl
	mov	(_DebuggingFctn_IndVolts_1_97 + 1),dph
	mov	(_DebuggingFctn_IndVolts_1_97 + 2),b
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:474: printf("Freq = %5.3f HZ, Mode = %d, Ratio = %5.3f\r", frequency, mode, IndVolts[0], IndVolts[0]/IndVolts[1]);
	mov	r2,_DebuggingFctn_IndVolts_1_97
	mov	r3,(_DebuggingFctn_IndVolts_1_97 + 1)
	mov	r4,(_DebuggingFctn_IndVolts_1_97 + 2)
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
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
<<<<<<< HEAD
	push	ar2
	push	ar3
	push	ar4
	mov	a,#0x62
	push	acc
	mov	a,#0x10
	push	acc
	mov	a,#0xF8
	push	acc
	mov	a,#0x3E
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	___fssub
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r0,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0xAC
	push	acc
	mov	a,#0x1C
	push	acc
	mov	a,#0xDA
	push	acc
	mov	a,#0x3D
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	___fsgt
	mov	r5,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r5
	jz	L021006?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:425: pwm_BLU1= 0;
	mov	_pwm_BLU1,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:426: pwm_BLU0 = 0;
	mov	_pwm_BLU0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:427: pwm_RED1 = power;
	mov	_pwm_RED1,_power
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:428: pwm_RED0 = 0; 
	mov	_pwm_RED0,#0x00
	ret
L021006?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:431: else if( (IndVolts[1] - Vred_middle) > Vred_thresh ){
=======
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	mov	a,#0x04
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
<<<<<<< HEAD
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
	mov	r5,a
	mov	a,#0x1B
	push	acc
	mov	a,#0x2F
	push	acc
	mov	a,#0xCD
	push	acc
	mov	a,#0x3E
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0xAC
	push	acc
	mov	a,#0x1C
	push	acc
	mov	a,#0x5A
	push	acc
	mov	a,#0x3D
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
	jz	L021003?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:432: pwm_BLU1=power;
	mov	_pwm_BLU1,_power
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:433: pwm_BLU0=0;
	mov	_pwm_BLU0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:434: pwm_RED1=0;
	mov	_pwm_RED1,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:435: pwm_RED0=0;
	mov	_pwm_RED0,#0x00
	ret
L021003?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:438: pwm_BLU1 = power;
	mov	_pwm_BLU1,_power
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:439: pwm_BLU0 = 0;
	mov	_pwm_BLU0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:440: pwm_RED1 = power;
	mov	_pwm_RED1,_power
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:441: pwm_RED0 = 0;
	mov	_pwm_RED0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:443: break;
	ret
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:446: case BACKWARD:
L021008?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:447: if((IndVolts[0] - Vblue_middle) > Vblue_thresh){
	mov	r2,_MotorControl_IndVolts_1_91
	mov	r3,(_MotorControl_IndVolts_1_91 + 1)
	mov	r4,(_MotorControl_IndVolts_1_91 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
=======
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
<<<<<<< HEAD
	mov	r0,a
	push	ar2
	push	ar3
	push	ar4
	mov	a,#0x62
=======
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
	mov	a,#__str_0
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	push	acc
	mov	a,#0x10
	push	acc
	mov	a,#0xF8
	push	acc
	mov	a,#0x3E
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	___fssub
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r0,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0xAC
	push	acc
	mov	a,#0x1C
	push	acc
	mov	a,#0xDA
	push	acc
	mov	a,#0x3D
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	___fsgt
	mov	r5,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r5
	jz	L021013?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:448: pwm_BLU1= 0;
	mov	_pwm_BLU1,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:449: pwm_BLU0 = 0;
	mov	_pwm_BLU0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:450: pwm_RED1 = 0;
	mov	_pwm_RED1,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:451: pwm_RED0 = power; 
	mov	_pwm_RED0,_power
	ret
L021013?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:454: else if( (IndVolts[1] - Vred_middle) > Vred_thresh ){
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
	mov	r5,a
	mov	a,#0x1B
	push	acc
	mov	a,#0x2F
	push	acc
	mov	a,#0xCD
	push	acc
	mov	a,#0x3E
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
<<<<<<< HEAD
	add	a,#0xfc
=======
	add	a,#0xef
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	mov	sp,a
	mov	a,#0xAC
	push	acc
	mov	a,#0x1C
	push	acc
	mov	a,#0x5A
	push	acc
	mov	a,#0x3D
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
	jz	L021010?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:455: pwm_BLU1=0;
	mov	_pwm_BLU1,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:456: pwm_BLU0=power;
	mov	_pwm_BLU0,_power
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:457: pwm_RED1=0;
	mov	_pwm_RED1,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:458: pwm_RED0=0;
	mov	_pwm_RED0,#0x00
	ret
L021010?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:461: pwm_BLU1 = power;
	mov	_pwm_BLU1,_power
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:462: pwm_BLU0 = 0;
	mov	_pwm_BLU0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:463: pwm_RED1 = power;
	mov	_pwm_RED1,_power
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:464: pwm_RED0 = 0;
	mov	_pwm_RED0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:466: break;
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:470: case STOP:
	ret
L021015?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:471: pwm_BLU1 = 0;
	mov	_pwm_BLU1,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:472: pwm_BLU0 = 0;
	mov	_pwm_BLU0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:473: pwm_RED1 = 0;
	mov	_pwm_RED1,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:474: pwm_RED0 = 0;
	mov	_pwm_RED0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:475: break;
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:479: case NITL:
	ret
L021016?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:480: pwm_BLU1 = 0;
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:481: pwm_BLU0 = 0;
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:482: pwm_RED1 = 3*power;
	clr	a
	mov	_pwm_BLU1,a
	mov	_pwm_BLU0,a
	mov	a,_power
	mov	b,#0x03
	mul	ab
	mov	_pwm_RED1,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:483: pwm_RED0 = 0;
	mov	_pwm_RED0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:484: waitms(1000);
	mov	dptr,#0x03E8
	lcall	_waitms
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:485: mode=STOP;
	clr	a
	mov	_mode,a
	mov	(_mode + 1),a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:486: break;
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:490: case NITR:
	ret
L021017?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:491: pwm_BLU1 = 3*power;
	mov	a,_power
	mov	b,#0x03
	mul	ab
	mov	_pwm_BLU1,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:492: pwm_BLU0 = 0;
	mov	_pwm_BLU0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:493: pwm_RED1 = 0;
	mov	_pwm_RED1,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:494: pwm_RED0 = 0;
	mov	_pwm_RED0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:495: waitms(1000);
	mov	dptr,#0x03E8
	lcall	_waitms
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:496: mode = STOP;
	clr	a
	mov	_mode,a
	mov	(_mode + 1),a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:497: break;
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:501: case ROTATE:
	ret
L021018?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:502: pwm_BLU1 = 0;
	mov	_pwm_BLU1,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:503: pwm_BLU0 = 3*power;
	mov	a,_power
	mov	b,#0x03
	mul	ab
	mov	_pwm_BLU0,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:504: pwm_RED1 = 3*power;
	mov	a,_power
	mov	b,#0x03
	mul	ab
	mov	_pwm_RED1,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:505: pwm_RED0 = 0;
	mov	_pwm_RED0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:506: waitms(1200);
	mov	dptr,#0x04B0
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:512: }
	ljmp	_waitms
;------------------------------------------------------------
;Allocation info for local variables in function 'DebuggingFctn'
;------------------------------------------------------------
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:523: void DebuggingFctn (void)
;	-----------------------------------------
;	 function DebuggingFctn
;	-----------------------------------------
_DebuggingFctn:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:525: sprintf(debugstring, "%4.3fms", period);
	push	_period
	push	(_period + 1)
	push	(_period + 2)
	push	(_period + 3)
	mov	a,#__str_1
	push	acc
	mov	a,#(__str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_debugstring
	push	acc
	mov	a,#(_debugstring >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	lcall	_sprintf
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:526: LCDprint(debugstring, 1,1);
	mov	_LCDprint_PARM_2,#0x01
	setb	_LCDprint_PARM_3
	mov	dptr,#_debugstring
	mov	b,#0x40
	lcall	_LCDprint
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:527: sprintf(debugstring, "%d", mode);
	push	_mode
	push	(_mode + 1)
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_debugstring
	push	acc
	mov	a,#(_debugstring >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	lcall	_sprintf
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:528: LCDprint(debugstring, 2,1);
	mov	_LCDprint_PARM_2,#0x02
	setb	_LCDprint_PARM_3
	mov	dptr,#_debugstring
	mov	b,#0x40
	ljmp	_LCDprint
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
<<<<<<< HEAD
;IndVolts                  Allocated with name '_main_IndVolts_1_103'
;sloc0                     Allocated with name '_main_sloc0_1_0'
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:536: void main (void)
=======
;IndVolts                  Allocated with name '_main_IndVolts_1_100'
;------------------------------------------------------------
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:484: void main (void)
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:543: TIMER0_Init(); // Initialize timer 0 to read the frequency of the fm signal
	lcall	_TIMER0_Init
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:544: TIMER2_Init(); // Initialize timer 2 for periodic interrupts used for motor control
	lcall	_TIMER2_Init
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:545: LCD_4BIT(); // Initialize the LCD
	lcall	_LCD_4BIT
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:546: EA=1; // Enable interrupts
	setb	_EA
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:548: InitPinADC(1, 4); // Configure P1.4 as analog input
	mov	_InitPinADC_PARM_2,#0x04
	mov	dpl,#0x01
	lcall	_InitPinADC
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:549: InitPinADC(2, 0); // Configure P2.0 as analog input
	mov	_InitPinADC_PARM_2,#0x00
	mov	dpl,#0x02
	lcall	_InitPinADC
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:550: InitPinADC(2, 7); // Configure P2.7 as analog input
	mov	_InitPinADC_PARM_2,#0x07
	mov	dpl,#0x02
	lcall	_InitPinADC
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:551: InitADC();
	lcall	_InitADC
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:552: printf("\x1b[2J"); // Clear screen using ANSI escape sequence.
	mov	a,#__str_3
=======
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
	mov	a,#__str_1
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	push	acc
	mov	a,#(__str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
<<<<<<< HEAD
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:560: while(1)
L023012?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:564: IndVolts[0] = Volts_at_Pin(LQFP32_MUX_P2_7);
=======
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:507: while(1)
L016002?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:510: DetermineMode();
	lcall	_DetermineMode
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:513: IndVolts[0] = Volts_at_Pin(LQFP32_MUX_P2_7);
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	mov	dpl,#0x0F
	lcall	_Volts_at_Pin
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
<<<<<<< HEAD
	mov	_main_IndVolts_1_103,r2
	mov	(_main_IndVolts_1_103 + 1),r3
	mov	(_main_IndVolts_1_103 + 2),r4
	mov	(_main_IndVolts_1_103 + 3),r5
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:565: IndVolts[1] = Volts_at_Pin(LQFP32_MUX_P1_4);
	mov	dpl,#0x04
=======
	mov	_main_IndVolts_1_100,r2
	mov	(_main_IndVolts_1_100 + 1),r3
	mov	(_main_IndVolts_1_100 + 2),r4
	mov	(_main_IndVolts_1_100 + 3),r5
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:514: IndVolts[1] = Volts_at_Pin(LQFP32_MUX_P1_7);
	mov	dpl,#0x07
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	lcall	_Volts_at_Pin
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
<<<<<<< HEAD
	mov	(_main_IndVolts_1_103 + 0x0004),r2
	mov	((_main_IndVolts_1_103 + 0x0004) + 1),r3
	mov	((_main_IndVolts_1_103 + 0x0004) + 2),r4
	mov	((_main_IndVolts_1_103 + 0x0004) + 3),r5
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:566: IndVolts[2] = Volts_at_Pin(LQFP32_MUX_P2_0);
=======
	mov	(_main_IndVolts_1_100 + 0x0004),r2
	mov	((_main_IndVolts_1_100 + 0x0004) + 1),r3
	mov	((_main_IndVolts_1_100 + 0x0004) + 2),r4
	mov	((_main_IndVolts_1_100 + 0x0004) + 3),r5
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:515: IndVolts[2] = Volts_at_Pin(LQFP32_MUX_P2_0);
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	mov	dpl,#0x08
	lcall	_Volts_at_Pin
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
<<<<<<< HEAD
	mov	(_main_IndVolts_1_103 + 0x0008),r2
	mov	((_main_IndVolts_1_103 + 0x0008) + 1),r3
	mov	((_main_IndVolts_1_103 + 0x0008) + 2),r4
	mov	((_main_IndVolts_1_103 + 0x0008) + 3),r5
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:570: TL0=0;
	mov	_TL0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:571: TH0=0;
	mov	_TH0,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:572: TF0=0;
	clr	_TF0
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:573: overflow_count=0;
	mov	_overflow_count,#0x00
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:576: if (mode != ROTATE){
	mov	a,#0x05
	cjne	a,_mode,L023022?
	clr	a
	cjne	a,(_mode + 1),L023022?
	ljmp	L023009?
L023022?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:577: if (IndVolts[0]<0.10){
	mov	a,#0xCD
	push	acc
	mov	a,#0xCC
	push	acc
	push	acc
	mov	a,#0x3D
	push	acc
	mov	dpl,_main_IndVolts_1_103
	mov	dph,(_main_IndVolts_1_103 + 1)
	mov	b,(_main_IndVolts_1_103 + 2)
	mov	a,(_main_IndVolts_1_103 + 3)
	lcall	___fslt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jnz	L023023?
	ljmp	L023010?
L023023?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:579: TR0=1; // logic zero signal detected! detect time interval btw two falling edges. Start the timer
	setb	_TR0
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:580: while(IndVolts[0]<0.10) // Wait for the signal to be logic one
L023003?:
	mov	a,#0xCD
	push	acc
	mov	a,#0xCC
	push	acc
	push	acc
	mov	a,#0x3D
	push	acc
	mov	dpl,_main_IndVolts_1_103
	mov	dph,(_main_IndVolts_1_103 + 1)
	mov	b,(_main_IndVolts_1_103 + 2)
	mov	a,(_main_IndVolts_1_103 + 3)
	lcall	___fslt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jz	L023005?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:582: IndVolts[0] = Volts_at_Pin(LQFP32_MUX_P2_7);
	mov	dpl,#0x0F
	lcall	_Volts_at_Pin
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	_main_IndVolts_1_103,r2
	mov	(_main_IndVolts_1_103 + 1),r3
	mov	(_main_IndVolts_1_103 + 2),r4
	mov	(_main_IndVolts_1_103 + 3),r5
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:583: if(TF0==1) // Did the 16-bit timer overflow?
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:585: TF0=0;
	jbc	_TF0,L023025?
	sjmp	L023003?
L023025?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:586: overflow_count++;
	inc	_overflow_count
	sjmp	L023003?
L023005?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:591: TR0=0; // Stop timer 0, the 24-bit number [overflow_count-TH0-TL0] has the period. Then convert it to frequency
	clr	_TR0
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:593: period=1000.0*(overflow_count*65536.0+TH0*256.0+TL0)*(12.0/SYSCLK); // Compute period. Unit in ms
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
	mov	_main_sloc0_1_0,dpl
	mov	(_main_sloc0_1_0 + 1),dph
	mov	(_main_sloc0_1_0 + 2),b
	mov	(_main_sloc0_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,_TH0
	lcall	___uchar2fs
	mov	r6,dpl
	mov	r7,dph
	mov	r2,b
	mov	r3,a
	push	ar6
	push	ar7
	push	ar2
	push	ar3
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x43
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
	mov	dpl,_main_sloc0_1_0
	mov	dph,(_main_sloc0_1_0 + 1)
	mov	b,(_main_sloc0_1_0 + 2)
	mov	a,(_main_sloc0_1_0 + 3)
	lcall	___fsadd
	mov	_main_sloc0_1_0,dpl
	mov	(_main_sloc0_1_0 + 1),dph
	mov	(_main_sloc0_1_0 + 2),b
	mov	(_main_sloc0_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	r6,_TL0
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	___sint2fs
	mov	r6,dpl
	mov	r7,dph
	mov	r2,b
	mov	r3,a
	push	ar6
	push	ar7
	push	ar2
	push	ar3
	mov	dpl,_main_sloc0_1_0
	mov	dph,(_main_sloc0_1_0 + 1)
	mov	b,(_main_sloc0_1_0 + 2)
	mov	a,(_main_sloc0_1_0 + 3)
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
	mov	dptr,#0x126F
	mov	b,#0x83
	mov	a,#0x39
	lcall	___fsmul
	mov	_period,dpl
	mov	(_period + 1),dph
	mov	(_period + 2),b
	mov	(_period + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	sjmp	L023010?
L023009?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:597: period = 300.0; // Set period in the STOP band to set Mode = STOP after Mode == ROTATE
	mov	_period,#0x00
	mov	(_period + 1),#0x00
	mov	(_period + 2),#0x96
	mov	(_period + 3),#0x43
L023010?:
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:603: DetermineMode();
	lcall	_DetermineMode
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:607: MotorControl(IndVolts);
	mov	dptr,#_main_IndVolts_1_103
	mov	b,#0x40
	lcall	_MotorControl
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:611: DebuggingFctn(); 
	lcall	_DebuggingFctn
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:616: waitms(1);
	mov	dptr,#0x0001
	lcall	_waitms
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:617: millisecond = millisecond + 1;
	inc	_millisecond
	clr	a
	cjne	a,_millisecond,L023026?
	inc	(_millisecond + 1)
L023026?:
	ljmp	L023012?
=======
	mov	(_main_IndVolts_1_100 + 0x0008),r2
	mov	((_main_IndVolts_1_100 + 0x0008) + 1),r3
	mov	((_main_IndVolts_1_100 + 0x0008) + 2),r4
	mov	((_main_IndVolts_1_100 + 0x0008) + 3),r5
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:519: MotorControl(IndVolts);
	mov	dptr,#_main_IndVolts_1_100
	mov	b,#0x40
	lcall	_MotorControl
;	D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c:522: DebuggingFctn(IndVolts);
	mov	dptr,#_main_IndVolts_1_100
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
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	rseg R_CSEG

	rseg R_XINIT

	rseg R_CONST
__str_0:
<<<<<<< HEAD
	db '                '
=======
	db 'Freq = %5.3f HZ, Mode = %d, Ratio = %5.3f'
	db 0x0D
>>>>>>> 9d7553e7327460a956d86e5540e66c2c048b9338
	db 0x00
__str_1:
	db '%4.3fms'
	db 0x00
__str_2:
	db '%d'
	db 0x00
__str_3:
	db 0x1B
	db '[2J'
	db 0x00

	CSEG

end
