;  Generated by PSoC Designer 5.4.3191
;
; =============================================================================
; FILENAME: PSoCConfigTBL.asm
;  
; Copyright (c) Cypress Semiconductor 2013. All Rights Reserved.
;  
; NOTES:
; Do not modify this file. It is generated by PSoC Designer each time the
; generate application function is run. The values of the parameters in this
; file can be modified by changing the values of the global parameters in the
; device editor.
;  
; =============================================================================
 
include "m8c.inc"
;  Personalization tables 
export LoadConfigTBL_osilator_8_2_Bank1
export LoadConfigTBL_osilator_8_2_Bank0
export LoadConfigTBL_osilator_8_2_Ordered
AREA lit(rom, rel)
LoadConfigTBL_osilator_8_2_Bank0:
;  Instance name BPF2_1, User Module BPF2
;       Instance name BPF2_1, Block Name FLFB(ASD11)
	db		84h, 84h		;BPF2_1_FLFB_CR0(ASD11CR0)
	db		85h, 40h		;BPF2_1_FLFB_CR1(ASD11CR1)
	db		86h, 08h		;BPF2_1_FLFB_CR2(ASD11CR2)
	db		87h, 20h		;BPF2_1_FLFB_CR3(ASD11CR3)
;       Instance name BPF2_1, Block Name FLIN(ASC10)
	db		80h, a1h		;BPF2_1_FLIN_CR0(ASC10CR0)
	db		81h, 84h		;BPF2_1_FLIN_CR1(ASC10CR1)
	db		82h, 00h		;BPF2_1_FLIN_CR2(ASC10CR2)
	db		83h, 24h		;BPF2_1_FLIN_CR3(ASC10CR3)
;  Instance name BPF2_2, User Module BPF2
;       Instance name BPF2_2, Block Name FLFB(ASD20)
	db		90h, 84h		;BPF2_2_FLFB_CR0(ASD20CR0)
	db		91h, 40h		;BPF2_2_FLFB_CR1(ASD20CR1)
	db		92h, 08h		;BPF2_2_FLFB_CR2(ASD20CR2)
	db		93h, 20h		;BPF2_2_FLFB_CR3(ASD20CR3)
;       Instance name BPF2_2, Block Name FLIN(ASC21)
	db		94h, a1h		;BPF2_2_FLIN_CR0(ASC21CR0)
	db		95h, 84h		;BPF2_2_FLIN_CR1(ASC21CR1)
	db		96h, 80h		;BPF2_2_FLIN_CR2(ASC21CR2)
	db		97h, 24h		;BPF2_2_FLIN_CR3(ASC21CR3)
;  Instance name PGA_1, User Module PGA
;       Instance name PGA_1, Block Name GAIN(ACB01)
	db		75h, b5h		;PGA_1_GAIN_CR0(ACB01CR0)
	db		76h, 21h		;PGA_1_GAIN_CR1(ACB01CR1)
	db		77h, 20h		;PGA_1_GAIN_CR2(ACB01CR2)
	db		74h, 00h		;PGA_1_GAIN_CR3(ACB01CR3)
;  Instance name PGA_2, User Module PGA
;       Instance name PGA_2, Block Name GAIN(ACB02)
	db		79h, 95h		;PGA_2_GAIN_CR0(ACB02CR0)
	db		7ah, 21h		;PGA_2_GAIN_CR1(ACB02CR1)
	db		7bh, 20h		;PGA_2_GAIN_CR2(ACB02CR2)
	db		78h, 00h		;PGA_2_GAIN_CR3(ACB02CR3)
;  Instance name PGA_3, User Module PGA
;       Instance name PGA_3, Block Name GAIN(ACB03)
	db		7dh, fdh		;PGA_3_GAIN_CR0(ACB03CR0)
	db		7eh, a3h		;PGA_3_GAIN_CR1(ACB03CR1)
	db		7fh, 20h		;PGA_3_GAIN_CR2(ACB03CR2)
	db		7ch, 00h		;PGA_3_GAIN_CR3(ACB03CR3)
;  Instance name PWM16_1, User Module PWM16
;       Instance name PWM16_1, Block Name PWM16_LSB(DBB00)
	db		23h, 00h		;PWM16_1_CONTROL_LSB_REG(DBB00CR0)
	db		21h, 0fh		;PWM16_1_PERIOD_LSB_REG(DBB00DR1)
	db		22h, 87h		;PWM16_1_COMPARE_LSB_REG(DBB00DR2)
;       Instance name PWM16_1, Block Name PWM16_MSB(DBB01)
	db		27h, 00h		;PWM16_1_CONTROL_MSB_REG(DBB01CR0)
	db		25h, 27h		;PWM16_1_PERIOD_MSB_REG(DBB01DR1)
	db		26h, 13h		;PWM16_1_COMPARE_MSB_REG(DBB01DR2)
;  Instance name PWM8_1, User Module PWM8
;       Instance name PWM8_1, Block Name PWM8(DCB02)
	db		2bh, 00h		;PWM8_1_CONTROL_REG(DCB02CR0)
	db		29h, c7h		;PWM8_1_PERIOD_REG(DCB02DR1)
	db		2ah, 63h		;PWM8_1_COMPARE_REG(DCB02DR2)
;  Instance name PWM8_2, User Module PWM8
;       Instance name PWM8_2, Block Name PWM8(DCB03)
	db		2fh, 00h		;PWM8_2_CONTROL_REG(DCB03CR0)
	db		2dh, 27h		;PWM8_2_PERIOD_REG(DCB03DR1)
	db		2eh, 00h		;PWM8_2_COMPARE_REG(DCB03DR2)
;  Instance name SCBLOCK_1, User Module SCBLOCK
;       Instance name SCBLOCK_1, Block Name SCBLK(ASC12)
	db		88h, 83h		;SCBLOCK_1_cr0(ASC12CR0)
	db		89h, 00h		;SCBLOCK_1_cr1(ASC12CR1)
	db		8ah, a0h		;SCBLOCK_1_cr2(ASC12CR2)
	db		8bh, 23h		;SCBLOCK_1_cr3(ASC12CR3)
;  Global Register values Bank 0
	db		60h, 59h		; AnalogColumnInputSelect register (AMX_IN)
	db		66h, 00h		; AnalogComparatorControl1 register (CMP_CR1)
	db		63h, 45h		; AnalogReferenceControl register (ARF_CR)
	db		65h, 00h		; AnalogSyncControl register (ASY_CR)
	db		e6h, 00h		; DecimatorControl_0 register (DEC_CR0)
	db		e7h, 00h		; DecimatorControl_1 register (DEC_CR1)
	db		d6h, 00h		; I2CConfig register (I2CCFG)
	db		b0h, 00h		; Row_0_InputMux register (RDI0RI)
	db		b1h, 00h		; Row_0_InputSync register (RDI0SYN)
	db		b2h, 00h		; Row_0_LogicInputAMux register (RDI0IS)
	db		b3h, 33h		; Row_0_LogicSelect_0 register (RDI0LT0)
	db		b4h, 33h		; Row_0_LogicSelect_1 register (RDI0LT1)
	db		b5h, 00h		; Row_0_OutputDrive_0 register (RDI0SRO0)
	db		b6h, 10h		; Row_0_OutputDrive_1 register (RDI0SRO1)
	db		b8h, 55h		; Row_1_InputMux register (RDI1RI)
	db		b9h, 00h		; Row_1_InputSync register (RDI1SYN)
	db		bah, 10h		; Row_1_LogicInputAMux register (RDI1IS)
	db		bbh, 33h		; Row_1_LogicSelect_0 register (RDI1LT0)
	db		bch, 33h		; Row_1_LogicSelect_1 register (RDI1LT1)
	db		bdh, 00h		; Row_1_OutputDrive_0 register (RDI1SRO0)
	db		beh, 00h		; Row_1_OutputDrive_1 register (RDI1SRO1)
	db		ffh
LoadConfigTBL_osilator_8_2_Bank1:
;  Instance name BPF2_1, User Module BPF2
;       Instance name BPF2_1, Block Name FLFB(ASD11)
;       Instance name BPF2_1, Block Name FLIN(ASC10)
;  Instance name BPF2_2, User Module BPF2
;       Instance name BPF2_2, Block Name FLFB(ASD20)
;       Instance name BPF2_2, Block Name FLIN(ASC21)
;  Instance name PGA_1, User Module PGA
;       Instance name PGA_1, Block Name GAIN(ACB01)
;  Instance name PGA_2, User Module PGA
;       Instance name PGA_2, Block Name GAIN(ACB02)
;  Instance name PGA_3, User Module PGA
;       Instance name PGA_3, Block Name GAIN(ACB03)
;  Instance name PWM16_1, User Module PWM16
;       Instance name PWM16_1, Block Name PWM16_LSB(DBB00)
	db		20h, 01h		;PWM16_1_FUNC_LSB_REG(DBB00FN)
	db		21h, 15h		;PWM16_1_INPUT_LSB_REG(DBB00IN)
	db		22h, 40h		;PWM16_1_OUTPUT_LSB_REG(DBB00OU)
;       Instance name PWM16_1, Block Name PWM16_MSB(DBB01)
	db		24h, 21h		;PWM16_1_FUNC_MSB_REG(DBB01FN)
	db		25h, 35h		;PWM16_1_INPUT_MSB_REG(DBB01IN)
	db		26h, 40h		;PWM16_1_OUTPUT_MSB_REG(DBB01OU)
;  Instance name PWM8_1, User Module PWM8
;       Instance name PWM8_1, Block Name PWM8(DCB02)
	db		28h, 21h		;PWM8_1_FUNC_REG(DCB02FN)
	db		29h, 13h		;PWM8_1_INPUT_REG(DCB02IN)
	db		2ah, 47h		;PWM8_1_OUTPUT_REG(DCB02OU)
;  Instance name PWM8_2, User Module PWM8
;       Instance name PWM8_2, Block Name PWM8(DCB03)
	db		2ch, 21h		;PWM8_2_FUNC_REG(DCB03FN)
	db		2dh, 11h		;PWM8_2_INPUT_REG(DCB03IN)
	db		2eh, 40h		;PWM8_2_OUTPUT_REG(DCB03OU)
;  Instance name SCBLOCK_1, User Module SCBLOCK
;       Instance name SCBLOCK_1, Block Name SCBLK(ASC12)
;  Global Register values Bank 1
	db		61h, 01h		; AnalogClockSelect1 register (CLK_CR1)
	db		69h, 00h		; AnalogClockSelect2 register (CLK_CR2)
	db		60h, aah		; AnalogColumnClockSelect register (CLK_CR0)
	db		62h, b5h		; AnalogIOControl_0 register (ABF_CR0)
	db		67h, 33h		; AnalogLUTControl0 register (ALT_CR0)
	db		68h, 33h		; AnalogLUTControl1 register (ALT_CR1)
	db		63h, 00h		; AnalogModulatorControl_0 register (AMD_CR0)
	db		66h, 00h		; AnalogModulatorControl_1 register (AMD_CR1)
	db		d1h, 00h		; GlobalDigitalInterconnect_Drive_Even_Input register (GDI_E_IN)
	db		d3h, 00h		; GlobalDigitalInterconnect_Drive_Even_Output register (GDI_E_OU)
	db		d0h, 00h		; GlobalDigitalInterconnect_Drive_Odd_Input register (GDI_O_IN)
	db		d2h, 00h		; GlobalDigitalInterconnect_Drive_Odd_Output register (GDI_O_OU)
	db		e1h, 27h		; OscillatorControl_1 register (OSC_CR1)
	db		e2h, 00h		; OscillatorControl_2 register (OSC_CR2)
	db		dfh, f9h		; OscillatorControl_3 register (OSC_CR3)
	db		deh, 02h		; OscillatorControl_4 register (OSC_CR4)
	db		ddh, 00h		; OscillatorGlobalBusEnableControl register (OSC_GO_EN)
	db		ffh
AREA psoc_config(rom, rel)
LoadConfigTBL_osilator_8_2_Ordered:
;  Ordered Global Register values
	M8C_SetBank0
	mov	reg[00h], 00h		; Port_0_Data register (PRT0DR)
	M8C_SetBank1
	mov	reg[00h], 08h		; Port_0_DriveMode_0 register (PRT0DM0)
	mov	reg[01h], 34h		; Port_0_DriveMode_1 register (PRT0DM1)
	M8C_SetBank0
	mov	reg[03h], 34h		; Port_0_DriveMode_2 register (PRT0DM2)
	mov	reg[02h], 08h		; Port_0_GlobalSelect register (PRT0GS)
	M8C_SetBank1
	mov	reg[02h], 00h		; Port_0_IntCtrl_0 register (PRT0IC0)
	mov	reg[03h], 00h		; Port_0_IntCtrl_1 register (PRT0IC1)
	M8C_SetBank0
	mov	reg[01h], 00h		; Port_0_IntEn register (PRT0IE)
	mov	reg[04h], 03h		; Port_1_Data register (PRT1DR)
	M8C_SetBank1
	mov	reg[04h], 03h		; Port_1_DriveMode_0 register (PRT1DM0)
	mov	reg[05h], 03h		; Port_1_DriveMode_1 register (PRT1DM1)
	M8C_SetBank0
	mov	reg[07h], 00h		; Port_1_DriveMode_2 register (PRT1DM2)
	mov	reg[06h], 00h		; Port_1_GlobalSelect register (PRT1GS)
	M8C_SetBank1
	mov	reg[06h], 00h		; Port_1_IntCtrl_0 register (PRT1IC0)
	mov	reg[07h], 00h		; Port_1_IntCtrl_1 register (PRT1IC1)
	M8C_SetBank0
	mov	reg[05h], 00h		; Port_1_IntEn register (PRT1IE)
	mov	reg[08h], 00h		; Port_2_Data register (PRT2DR)
	M8C_SetBank1
	mov	reg[08h], 00h		; Port_2_DriveMode_0 register (PRT2DM0)
	mov	reg[09h], 00h		; Port_2_DriveMode_1 register (PRT2DM1)
	M8C_SetBank0
	mov	reg[0bh], 00h		; Port_2_DriveMode_2 register (PRT2DM2)
	mov	reg[0ah], 00h		; Port_2_GlobalSelect register (PRT2GS)
	M8C_SetBank1
	mov	reg[0ah], 00h		; Port_2_IntCtrl_0 register (PRT2IC0)
	mov	reg[0bh], 00h		; Port_2_IntCtrl_1 register (PRT2IC1)
	M8C_SetBank0
	mov	reg[09h], 00h		; Port_2_IntEn register (PRT2IE)
	mov	reg[0ch], 00h		; Port_3_Data register (PRT3DR)
	M8C_SetBank1
	mov	reg[0ch], 00h		; Port_3_DriveMode_0 register (PRT3DM0)
	mov	reg[0dh], 00h		; Port_3_DriveMode_1 register (PRT3DM1)
	M8C_SetBank0
	mov	reg[0fh], 00h		; Port_3_DriveMode_2 register (PRT3DM2)
	mov	reg[0eh], 00h		; Port_3_GlobalSelect register (PRT3GS)
	M8C_SetBank1
	mov	reg[0eh], 00h		; Port_3_IntCtrl_0 register (PRT3IC0)
	mov	reg[0fh], 00h		; Port_3_IntCtrl_1 register (PRT3IC1)
	M8C_SetBank0
	mov	reg[0dh], 00h		; Port_3_IntEn register (PRT3IE)
	mov	reg[10h], 00h		; Port_4_Data register (PRT4DR)
	M8C_SetBank1
	mov	reg[10h], 00h		; Port_4_DriveMode_0 register (PRT4DM0)
	mov	reg[11h], 00h		; Port_4_DriveMode_1 register (PRT4DM1)
	M8C_SetBank0
	mov	reg[13h], 00h		; Port_4_DriveMode_2 register (PRT4DM2)
	mov	reg[12h], 00h		; Port_4_GlobalSelect register (PRT4GS)
	M8C_SetBank1
	mov	reg[12h], 00h		; Port_4_IntCtrl_0 register (PRT4IC0)
	mov	reg[13h], 00h		; Port_4_IntCtrl_1 register (PRT4IC1)
	M8C_SetBank0
	mov	reg[11h], 00h		; Port_4_IntEn register (PRT4IE)
	mov	reg[14h], 00h		; Port_5_Data register (PRT5DR)
	M8C_SetBank1
	mov	reg[14h], 00h		; Port_5_DriveMode_0 register (PRT5DM0)
	mov	reg[15h], 00h		; Port_5_DriveMode_1 register (PRT5DM1)
	M8C_SetBank0
	mov	reg[17h], 00h		; Port_5_DriveMode_2 register (PRT5DM2)
	mov	reg[16h], 00h		; Port_5_GlobalSelect register (PRT5GS)
	M8C_SetBank1
	mov	reg[16h], 00h		; Port_5_IntCtrl_0 register (PRT5IC0)
	mov	reg[17h], 00h		; Port_5_IntCtrl_1 register (PRT5IC1)
	M8C_SetBank0
	mov	reg[15h], 00h		; Port_5_IntEn register (PRT5IE)
	M8C_SetBank0
	ret


; PSoC Configuration file trailer PsocConfig.asm