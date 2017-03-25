#define F_CPU 16000000UL
#define PWRUP P
#define PWRDN P

#include <avr/io.h>
#include <util/delay.h>

//code retrieved from doughboy on arduino forum
int dut;

int main(void)
{
	DDRD &= 0x7F; // PD7 as Input (based on 0-7)
	DDRB &= 0xFB; // PB2 as Input (based on 0-7)
	PORTD = 0x80;
	PORTB = 0x4;
	
	DDRB |= _BV(PB1);  //Set PB1 as output port
	TCCR1A=0;
	TCCR1B=0;
	TCCR1A |= _BV(WGM11);
	// set Fast PWM mode
	// START the timer with no prescaler
	TCCR1B |= _BV(WGM13)|_BV(CS10);
	
	//initializes duty cycle
	dut = 250;
	// set PWM for duty cycle
	OCR1A = dut;
	
	//set period
	ICR1=500;
	
	TCCR1A |= _BV(COM1A1);



	while (1)
    {    	
    	if(~PIND&(0x80)){
    		_delay_ms(300);
    		dut -= 50;
    		if(dut<0)
    		dut=0;
    		}
    	
    	if (~PINB&(0x4)){
    		_delay_ms(300);
    		dut += 50;
    		if(dut>500)
    		dut=500;
    		}
    	
    	
    	OCR1A = dut;
    }
}