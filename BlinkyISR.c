#include <at89lp52.h>

#define CLK 22118400L // SYSCLK frequency in Hz
#define FREQ 1000L // To generate 1 ms interrupts
#define TIMER0_RELOAD (0x10000L-(CLK/FREQ)) // For fast mode

volatile unsigned int counter=0;

char _c51_external_startup (void)
{
	PMOD=0; // Configure ports as bidirectional with internal pull-ups.
    
	TR0=0; // Stop timer 0
	TMOD&=0xf0; // Clear the configuration bits for timer 0
	TMOD|=0x01; // Mode 1: 16-bit timer
	TF0=0;
	TH0=TIMER0_RELOAD/0x100;
	TL0=TIMER0_RELOAD%0x100;
	TR0=1; // Start timer 0
	
	ET0=1; // Enable interrupts from timer 0
	EA=1;  // Enable global interrupts
	
	return 0;
}

void Timer0_ISR (void) interrupt 1
{
	// Timer 0 in 16-bit mode doesn't have auto reload
	TH0=TIMER0_RELOAD/0x100;
	TL0=TIMER0_RELOAD%0x100;
	counter++;
	if(counter==500)
	{
		counter=0;
		P3_7=!P3_7;
	}
}

void main (void)
{
	while(1);
}
