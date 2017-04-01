#include <C8051F38x.h>
#include <stdlib.h>
#include <stdio.h>

// system constants and pin assignment
#define SYSCLK    48000000L // SYSCLK frequency in Hz
#define BAUDRATE  115200L   // Baud rate of UART in bps

#define VDD_onboard 	3.377
#define Vblue_thresh	1.65
#define Vred_thresh 	1.15
#define Vfront_thresh   2.0

#define BLU0 P2_2
#define BLU1 P2_5
#define RED0 P2_4
#define RED1 P2_3

#define FRQIN P1_6
#define BluINDIN P2_7
#define RedINDIN P1_7
#define FRTINDIN P2_0


#define STOP 0
#define NITL 1
#define NITR 2
#define FORWARD 3
#define BACKWARD 4
#define ROTATE 5

#define FRQLOW 15840.0
#define FRQHIGH 16160.0
#define FRQSTOP 0.0
#define FRQNITL 0.0
#define FRQNITR 0.0
#define FRQFORWARD 0.0
#define FRQBACKWARD 0.0
#define FRQROTATE 0.0





// global variables
volatile unsigned char pwm_count=0;
volatile unsigned char power=50;
volatile unsigned char pwm_BLU0=0;
volatile unsigned char pwm_BLU1=0;
volatile unsigned char pwm_RED0=0;
volatile unsigned char pwm_RED1=0;
volatile unsigned char dirout=0;
volatile unsigned char overflow_count=0;
int i = 0;
float frequency=0;
volatile float BluIndVolt=0;
volatile float RedIndVolt=0;
volatile float FrtIndVolt=0; 
unsigned char mode=FORWARD;




//------------------------------------------------------------------------------------------------
char _c51_external_startup (void)
{
	PCA0MD&=(~0x40) ;    // DISABLE WDT: clear Watchdog Enable bit
	VDM0CN=0x80; // enable VDD monitor
	RSTSRC=0x02|0x04; // Enable reset on missing clock detector and VDD

	// CLKSEL&=0b_1111_1000; // Not needed because CLKSEL==0 after reset
	#if (SYSCLK == 12000000L)
		//CLKSEL|=0b_0000_0000;  // SYSCLK derived from the Internal High-Frequency Oscillator / 4
	#elif (SYSCLK == 24000000L)
		CLKSEL|=0b_0000_0010; // SYSCLK derived from the Internal High-Frequency Oscillator / 2.
	#elif (SYSCLK == 48000000L)
		CLKSEL|=0b_0000_0011; // SYSCLK derived from the Internal High-Frequency Oscillator / 1.
	#else
		#error SYSCLK must be either 12000000L, 24000000L, or 48000000L
	#endif
	OSCICN |= 0x03; // Configure internal oscillator for its maximum frequency

	// Configure UART0
	SCON0 = 0x10;
#if (SYSCLK/BAUDRATE/2L/256L < 1)
	TH1 = 0x10000-((SYSCLK/BAUDRATE)/2L);
	CKCON &= ~0x0B;                  // T1M = 1; SCA1:0 = xx
	CKCON |=  0x08;
#elif (SYSCLK/BAUDRATE/2L/256L < 4)
	TH1 = 0x10000-(SYSCLK/BAUDRATE/2L/4L);
	CKCON &= ~0x0B; // T1M = 0; SCA1:0 = 01
	CKCON |=  0x01;
#elif (SYSCLK/BAUDRATE/2L/256L < 12)
	TH1 = 0x10000-(SYSCLK/BAUDRATE/2L/12L);
	CKCON &= ~0x0B; // T1M = 0; SCA1:0 = 00
#else
	TH1 = 0x10000-(SYSCLK/BAUDRATE/2/48);
	CKCON &= ~0x0B; // T1M = 0; SCA1:0 = 10
	CKCON |=  0x02;
#endif
	TL1 = TH1;      // Init Timer1
	TMOD &= ~0xf0;  // TMOD: timer 1 in 8-bit autoreload
	TMOD |=  0x20;
	TR1 = 1; // START Timer1
	TI = 1;  // Indicate TX0 ready

	// Configure the pins used for square output
	P2MDOUT|=0b_0000_0011;
	P0MDOUT |= 0x10; // Enable UTX as push-pull output
	XBR0     = 0x01; // Enable UART on P0.4(TX) and P0.5(RX)
	XBR1     = 0x40; // Enable crossbar and weak pull-ups
  
	return 0;
}



//----------------------------------------------------------------------------------
// Uses Timer3 to delay <us> micro-seconds.
void Timer3us(unsigned char us)
{
	unsigned char i;               // usec counter

	// The input for Timer 3 is selected as SYSCLK by setting T3ML (bit 6) of CKCON:
	CKCON|=0b_0100_0000;

	TMR3RL = (-(SYSCLK)/1000000L); // Set Timer3 to overflow in 1us.
	TMR3 = TMR3RL;                 // Initialize Timer3 for first overflow

	TMR3CN = 0x04;                 // Sart Timer3 and clear overflow flag
	for (i = 0; i < us; i++)       // Count <us> overflows
	{
		while (!(TMR3CN & 0x80));  // Wait for overflow
		TMR3CN &= ~(0x80);         // Clear overflow indicator
	}
	TMR3CN = 0 ;                   // Stop Timer3 and clear overflow flag
}




//----------------------------------------------------------------------------------
void waitms (unsigned int ms)
{
	unsigned int j;
	for(j=ms; j!=0; j--)
	{
		Timer3us(249);
		Timer3us(249);
		Timer3us(249);
		Timer3us(250);
	}
}


//----------------
void TIMER0_Init(void)
{
	TMOD&=0b_1111_0000; // Set the bits of Timer/Counter 0 to zero
	TMOD|=0b_0000_0001; // Timer/Counter 0 used as a 16-bit timer
	TR0=0; // Stop Timer/Counter 0
}



//--------------------
void TIMER2_Init(void)
{
	TMR2CN=0x00;   // Stop Timer2; Clear TF2;
	CKCON|=0b_0001_0000;
	TMR2RL=(-(SYSCLK/(2*48))/(100L)); // Initialize reload value
	TMR2=0xffff;   // Set to reload immediately
	ET2=1;         // Enable Timer2 interrupts
	TR2=1;         // Start Timer2
}



//----------------
void InitADC (void)
{
	// Init ADC
	ADC0CF = 0xF8; // SAR clock = 31, Right-justified result
	ADC0CN = 0b_1000_0000; // AD0EN=1, AD0TM=0
  REF0CN = 0b_0000_1000; //Select VDD as the voltage reference for the converter
}




//-----------------
void InitPinADC (unsigned char portno, unsigned char pinno)
{
	unsigned char mask;

	mask=1<<pinno;

	switch (portno)
	{
		case 0:
			P0MDIN &= (~mask); // Set pin as analog input
			P0SKIP |= mask; // Skip Crossbar decoding for this pin
		break;
		case 1:
			P1MDIN &= (~mask); // Set pin as analog input
			P1SKIP |= mask; // Skip Crossbar decoding for this pin
		break;
		case 2:
			P2MDIN &= (~mask); // Set pin as analog input
			P2SKIP |= mask; // Skip Crossbar decoding for this pin
		break;
		case 3:
			P3MDIN &= (~mask); // Set pin as analog input
			P3SKIP |= mask; // Skip Crossbar decoding for this pin
		break;
		default:
		break;
	}
}




//---------
unsigned int ADC_at_Pin(unsigned char pin)
{
	AMX0P = pin;             // Select positive input from pin
	AMX0N = LQFP32_MUX_GND;  // GND is negative input (Single-ended Mode)
	// Dummy conversion first to select new pin
	AD0BUSY=1;
	while (AD0BUSY); // Wait for dummy conversion to finish
	// Convert voltage at the pin
	AD0BUSY = 1;
	while (AD0BUSY); // Wait for conversion to complete
	return (ADC0L+(ADC0H*0x100));
}




//---------
float Volts_at_Pin(unsigned char pin)
{
	 return ((ADC_at_Pin(pin)*VDD_onboard)/1024.0);
}




//---------
void Timer2_ISR (void) interrupt 5
{
	TF2H = 0; // Clear Timer2 interrupt flag
	
	pwm_count++;
	if(pwm_count>100) pwm_count=0;

  	BLU0=pwm_count>pwm_BLU0?0:1;
	BLU1=pwm_count>pwm_BLU1?0:1;
	
	RED0=pwm_count>pwm_RED0?0:1;
	RED1=pwm_count>pwm_RED1?0:1;
	
}



//-------------
void ReadFrequency (void)
{  
  
// Reset Timer 0
		TL0=0;
		TH0=0;
		TF0=0;
		overflow_count=0;

		while(FRQIN!=0); // Wait for the signal to be zero
		while(FRQIN!=1); // Wait for the signal to be one
		TR0=1; // Start the timer
		while(FRQIN!=0) // Wait for the signal to be zero
		{
			if(TF0==1) // Did the 16-bit timer overflow?
			{
				TF0=0;
				overflow_count++;
			}
		}
		while(FRQIN!=1) // Wait for the signal to be one
		{
			if(TF0==1) // Did the 16-bit timer overflow?
			{
				TF0=0;
				overflow_count++;
			}
		}
		
  	TR0=0; // Stop timer 0, the 24-bit number [overflow_count-TH0-TL0] has the period. Then convert it to frequency
		
  	frequency=1.0/((overflow_count*65536.0+TH0*256.0+TL0)*(12.0/SYSCLK)); // Compute frequency
}



// --------------
void DetermineMode (void) {
	ReadFrequency();
  
  //if( frequency > FRQHIGH || frequency < FRQLOW){
  	//mode = STOP;
  //}
  
}



//-------------
void ReadInductorStatus (void)
{
	BluIndVolt = Volts_at_Pin(LQFP32_MUX_P2_7);
	RedIndVolt = Volts_at_Pin(LQFP32_MUX_P1_7);
	FrtIndVolt = Volts_at_Pin(LQFP32_MUX_P2_0);
  
}



//-------------
void MotorControl (void)
{
  
  switch (mode){
  case FORWARD:
    if(FrtIndVolt > Vfront_thresh){
      pwm_BLU1= power;
      pwm_BLU0 = 0;
      pwm_RED1 = power;
      pwm_RED0 = 0; 
      waitms(100);
    }
  	else if(BluIndVolt > Vblue_thresh){
      pwm_BLU1= power-25;
      pwm_BLU0 = 0;
      pwm_RED1 = power+25;
      pwm_RED0 = 0;   
  	}
  
  	else if(RedIndVolt > Vred_thresh){
  		pwm_BLU1=power+25;
    	pwm_BLU0=0;
    	pwm_RED1=power-25;
    	pwm_RED0=0;
  	}
  	else{
  		pwm_BLU1 = power;
    	pwm_BLU0 = 0;
    	pwm_RED1 = power;
    	pwm_RED0 = 0;
  	}
    break;
    
  case STOP:
    pwm_BLU1 = 0;
    pwm_BLU0 = 0;
    pwm_RED1 = 0;
    pwm_RED0 = 0;
   
    break;
    
    default:
    ;
  }
}




//-------------
void DebuggingFctn (void)
{
	printf("frequency = %f Hz\n", frequency);
	printf("Left(blue) ind voltage = %f V\n", BluIndVolt);
	printf("Right(red) ind voltage = %f V\n", RedIndVolt);
	printf("Front inductor voltage = %f V\n", FrtIndVolt);
}





//--------------
void main (void)
{
	// initialize (some, not all) variables, pins, etc.
  	TIMER0_Init(); // Initialize timer 0 to read the frequency of the fm signal
  	TIMER2_Init(); // Initialize timer 2 for periodic interrupts used for motor control
  	EA=1; // Enable interrupts
	dirout = 0; // define initial direction to be CCW
  	InitPinADC(1, 7); // Configure P1.7 as analog input
	InitPinADC(2, 0); // Configure P2.0 as analog input
  	InitPinADC(2, 7); // Configure P2.7 as analog input
  	InitADC();
	
	printf("\x1b[2J"); // Clear screen using ANSI escape sequence.
	
  
  	// The forever loop
	while(1)
	{
    // Read command from the frequency-modulated signal, and determine the current mode of operation
    DetermineMode();
    
    // Read the input voltages from the inductors 
    ReadInductorStatus();
    
    // Control the motors using (mode determined) pwm signal
    MotorControl();
    
    // (For debugging only) Show the user current command and status of the vehicle
     //DebuggingFctn();
    
    
    // pause
    	waitms(80);
	}
}
 