//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules

#pragma interrupt_handler isr_pwm8_2

#define		NUM_FREQ 14
unsigned int freq_table[] = {1,2,5,10,20,50,100,200,500,1000,2000,5000,10000,20000};
#define		SW_UP	0x1		//?? 0x00 ??
#define		SW_DOWN 0x2		//?? 0x01 ??

void set_freq(unsigned char fnum)
{
	unsigned int pw;
	pw = 40000/freq_table[fnum];
	PWM16_1_Stop();
	PWM16_1_WritePeriod(pw-1);
	PWM16_1_WritePulseWidth(pw/2-1);
	PWM16_1_Start();
}

unsigned char pastdat = 0xff;
unsigned char pdat;
unsigned int intcount = 0;

void isr_pwm8_2(void)
{
	unsigned char cdat, stable;
	cdat = PRT1DR; 					//?? PRT1DR ??
	stable = ~(cdat ^ pastdat);
	pdat = (pdat & ~stable) | (cdat & stable);
	pastdat = cdat;
	intcount++;
}


void main(void)
{
	unsigned char cfreq,psw,csw,onsw;

	// Insert your main routine code here.
	PWM16_1_Start();
	PWM8_1_Start();
	PWM8_2_Start();
	PGA_1_Start(PGA_1_HIGHPOWER);
	PGA_2_Start(PGA_2_HIGHPOWER);
	PGA_3_Start(PGA_3_HIGHPOWER);
	BPF2_1_Start(BPF2_1_HIGHPOWER);
	BPF2_2_Start(BPF2_2_HIGHPOWER);
	SCBLOCK_1_Start(SCBLOCK_1_HIGHPOWER);

	M8C_EnableGInt;
	PWM8_2_EnableInt();
	psw = pdat;

	cfreq = 0;
	set_freq(cfreq);
	
	while(1) {
		csw = pdat;
		onsw = ((psw ^ csw) & ~csw);
		psw = csw;
		if (onsw & (SW_UP | SW_DOWN)) {
			if (onsw & SW_UP) {
				cfreq++;
				if (cfreq >= NUM_FREQ)
					cfreq = 0;
			}
			if (onsw & SW_DOWN) {
				if (cfreq == 0)
					cfreq = NUM_FREQ-1;
				else cfreq--;
			}
			set_freq(cfreq);
		}
	}
	
}
