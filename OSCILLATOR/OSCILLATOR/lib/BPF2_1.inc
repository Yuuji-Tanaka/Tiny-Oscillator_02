;;*****************************************************************************
;;*****************************************************************************
;;  FILENAME: BPF2_1.inc
;;   Version: 6.00, Updated on 2015/3/4 at 22:23:20
;;  Generated by PSoC Designer 5.4.3191
;;
;;  DESCRIPTION: Assembler declarations for the BPF2 user module interface
;;-----------------------------------------------------------------------------
;;  Copyright (c) Cypress Semiconductor 2015. All Rights Reserved.
;;*****************************************************************************
;;*****************************************************************************

include "m8c.inc"

;--------------------------------------------------
; Register constants and masks
;--------------------------------------------------
BPF2_1_OFF:                                      equ 0
BPF2_1_LOWPOWER:                                 equ 1
BPF2_1_MEDPOWER:                                 equ 2
BPF2_1_HIGHPOWER:                                equ 3

BPF2_1_FEEDBACK_16:                              equ 0
BPF2_1_FEEDBACK_32:                              equ 1

BPF2_1_POLARITY_INVERTING:                       equ 0
BPF2_1_POLARITY_NON_INVERTING:                   equ 1

BPF2_1_AMD_MSK:         equ 0x7
BPF2_1_AMD_VAL:         equ 0x0

;--------------------------------------------------
; Registers used by BPF2_1
;--------------------------------------------------

BPF2_1_FLIN_CR0:    equ 80h                      ; SCA Block Control Register 0
BPF2_1_FLIN_CR1:    equ 81h                      ; SCA Block Control Register 1
BPF2_1_FLIN_CR2:    equ 82h                      ; SCA Block Control Register 2
BPF2_1_FLIN_CR3:    equ 83h                      ; SCA Block Control Register 3
BPF2_1_FLFB_CR0:    equ 84h                      ; SCA Block Control Register 0
BPF2_1_FLFB_CR1:    equ 85h                      ; SCA Block Control Register 1
BPF2_1_FLFB_CR2:    equ 86h                      ; SCA Block Control Register 2
BPF2_1_FLFB_CR3:    equ 87h                      ; SCA Block Control Register 3

; UM Cap naming convention per Gregorian and Temes, p293

BPF2_1_FILT_C1_REG: equ 80h
BPF2_1_FILT_C2_REG: equ 81h
BPF2_1_FILT_C3_REG: equ 84h
BPF2_1_FILT_C4_REG: equ 86h
BPF2_1_FILT_CA_REG: equ 80h
BPF2_1_FILT_CB_REG: equ 84h

BPF2_1_AMD_REG:         equ 63h

; end of file BPF2_1.inc
