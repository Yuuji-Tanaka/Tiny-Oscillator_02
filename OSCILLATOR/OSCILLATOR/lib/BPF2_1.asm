;;*****************************************************************************
;;*****************************************************************************
;;  FILENAME: BPF2_1.asm
;;   Version: 6.00, Updated on 2015/3/4 at 22:23:20
;;  Generated by PSoC Designer 5.4.3191
;;
;;  DESCRIPTION: Asm source for 2 Pole Switched Capacitor Band Pass Filter
;;
;;  NOTE: User Module APIs conform to the fastcall16 convention for marshalling
;;        arguments and observe the associated "Registers are volatile" policy.
;;        This means it is the caller's responsibility to preserve any values
;;        in the X and A registers that are still needed after the API functions
;;        returns. For Large Memory Model devices it is also the caller's 
;;        responsibility to perserve any value in the CUR_PP, IDX_PP, MVR_PP and 
;;        MVW_PP registers. Even though some of these registers may not be modified
;;        now, there is no guarantee that will remain the case in future releases.
;;-----------------------------------------------------------------------------
;;  Copyright (c) Cypress Semiconductor 2015. All Rights Reserved.
;;*****************************************************************************
;;*****************************************************************************

include "m8c.inc"
include "memory.inc"
include "BPF2_1.inc"


;-----------------------------------------------
;  Global Symbols
;-----------------------------------------------
export  BPF2_1_Start
export _BPF2_1_Start
export  BPF2_1_SetPower
export _BPF2_1_SetPower

export  BPF2_1_SetC1
export _BPF2_1_SetC1
export  BPF2_1_SetC2
export _BPF2_1_SetC2
export  BPF2_1_SetC3
export _BPF2_1_SetC3
export  BPF2_1_SetC4
export _BPF2_1_SetC4
export  BPF2_1_SetCA
export _BPF2_1_SetCA
export  BPF2_1_SetCB
export _BPF2_1_SetCB
export  BPF2_1_SetPolarity
export _BPF2_1_SetPolarity

export  BPF2_1_Stop
export _BPF2_1_Stop


;-----------------------------------------------
; Variable Allocation
;-----------------------------------------------
AREA bss (RAM,REL)



;-----------------------------------------------
;  EQUATES
;-----------------------------------------------
bPOWERMASK:          equ   03h         ; Power field mask for CR3
BPF_CNUMMASK:        equ   1fh         ; Mask for A, B & C Caps
BPF_CFBMASK:         equ   80h         ; Mask for Feedback Caps
BPF_POLARITYMASK:    equ   20h         ; Mask of Asign field for CR0

BPF2_1_IfCond:          equ BPF2_1_AMD_MSK & 0x01

IF (BPF2_1_AMD_VAL)
 IF (BPF2_1_IfCond)
  BPF2_1_AMD:           equ BPF2_1_AMD_VAL
 ELSE
  BPF2_1_AMD:           equ BPF2_1_AMD_VAL << 4
 ENDIF
ENDIF

AREA UserModules (ROM,REL)
;-----------------------------------------------------------------------------
;  FUNCTION NAME: BPF2_1_Start
;
;  DESCRIPTION: Applies power setting to the module's PSoC blocks
;
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:    A register contains the power setting (constant)
;  RETURNS:      Nothing
;  SIDE EFFECTS: 
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;

 BPF2_1_Start:
_BPF2_1_Start:
 BPF2_1_SetPower:
_BPF2_1_SetPower:
    RAM_PROLOGUE RAM_USE_CLASS_2
    and A, bPOWERMASK                        ; mask A to protect unchanged bits
    mov X, SP                                ; define temp store location
    push A                                   ; put power value in temp store

IF (BPF2_1_AMD_VAL)
   M8C_SetBank1
   mov   A, reg[BPF2_1_AMD_REG]                  ; read modulator register
   and   A, ~BPF2_1_AMD_MSK                      ; clear modulator bittfield in A
   or    A, BPF2_1_AMD                           ; combine modulator value with balance of register
   mov   reg[BPF2_1_AMD_REG], A                  ; move complete value back to register
   M8C_SetBank0
ENDIF

    mov A, reg[BPF2_1_FLIN_CR3]    ; read power value
    and A, ~bPOWERMASK                       ; clear power bits in A
    or  A, [X]                               ; combine power value with balance of reg.
    mov reg[BPF2_1_FLIN_CR3], A    ; move complete value back to register

    mov A, reg[BPF2_1_FLFB_CR3]    ; read power value
    and A, ~bPOWERMASK                       ; clear power bits in A
    or  A, [X]                               ; combine power value with balance of reg.
    mov reg[BPF2_1_FLFB_CR3], A    ; move complete value back to register
    pop A
    RAM_EPILOGUE RAM_USE_CLASS_2
    ret

;-----------------------------------------------------------------------------
;  FUNCTION NAME: BPF2_1_SetCn, n=1..4
;
;  DESCRIPTION:   Alters the filter transfer function by modifying the value
;                 of the capacitors (defined in BPF2_1.inc)
;
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:    The A register contains a non-negative integer less than 32
;  RETURNS:
;  SIDE EFFECTS: 
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 BPF2_1_SetC1:
_BPF2_1_SetC1:
    RAM_PROLOGUE RAM_USE_CLASS_2
    and A, BPF_CNUMMASK                      ; mask A to protect unchanged bits
    mov X, SP                                ; define temp store location
    push A                                   ; put C1 value in temp store
    mov A, reg[BPF2_1_FILT_C1_REG] ; read current C1
    and A, ~BPF_CNUMMASK                     ; clear C1 bits in A
    or  A, [X]                               ; combine C1 value with balance of reg.
    mov reg[BPF2_1_FILT_C1_REG], A ; move complete value back to register
    pop  A
    RAM_EPILOGUE RAM_USE_CLASS_2
    ret

 BPF2_1_SetC2:
_BPF2_1_SetC2:
    RAM_PROLOGUE RAM_USE_CLASS_2
    and A, BPF_CNUMMASK                      ; mask A to protect unchanged bits
    mov X, SP                                ; define temp store location
    push A                                   ; put C2 value in temp store
    mov A, reg[BPF2_1_FILT_C2_REG] ; read current C2
    and A, ~BPF_CNUMMASK                     ; clear C2 bits in A
    or  A, [X]                               ; combine C2 value with balance of reg.
    mov reg[BPF2_1_FILT_C2_REG], A ; move complete value back to register
    pop A
    RAM_EPILOGUE RAM_USE_CLASS_2
    ret

 BPF2_1_SetC3:
_BPF2_1_SetC3:
    RAM_PROLOGUE RAM_USE_CLASS_2
    and A, BPF_CNUMMASK                      ; mask A to protect unchanged bits
    mov X, SP                                ; define temp store location
    push A                                   ; put C3 value in temp store
    mov A, reg[BPF2_1_FILT_C3_REG] ; read current C3
    and A, ~BPF_CNUMMASK                     ; clear C3 bits in A
    or  A, [X]                               ; combine C3 value with balance of reg.
    mov reg[BPF2_1_FILT_C3_REG], A ; move complete value back to register
    pop A
    RAM_EPILOGUE RAM_USE_CLASS_2
    ret

 BPF2_1_SetC4:
_BPF2_1_SetC4:
    RAM_PROLOGUE RAM_USE_CLASS_2
    and A, BPF_CNUMMASK                      ; mask A to protect unchanged bits
    mov X, SP                                ; define temp store location
    push A                                   ; put C4 value in temp store
    mov A, reg[BPF2_1_FILT_C4_REG] ; read current C4
    and A, ~BPF_CNUMMASK                     ; clear C4 bits in A
    or  A, [X]                               ; combine C4 value with balance of reg.
    mov reg[BPF2_1_FILT_C4_REG], A ; move complete value back to register
    pop A
    RAM_EPILOGUE RAM_USE_CLASS_2
    ret


;-----------------------------------------------------------------------------
;  FUNCTION NAME: BPF2_1_SetCA
;            and  BPF2_1_SetCB
;
;  DESCRIPTION:   Alters the filter transfer function by modifying the value
;                 of the op-amp feedback capacitors (see BPF2_1.inc)
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:    The A register contains one of the BPF2_1_FEEDBACK
;                  constants defined in BPF2_1.inc
;  RETURNS:      Nothing.
;  SIDE EFFECTS: 
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 BPF2_1_SetCA:
_BPF2_1_SetCA:
    RAM_PROLOGUE RAM_USE_CLASS_1
    cmp   A, BPF2_1_FEEDBACK_32    ; Change Feedback to 32 units?
    jz    .SetCAto32                         ;    Yes, go make it so
                                             ;     No, clear it to 16 units...
    and   reg[BPF2_1_FILT_CA_REG], ~BPF_CFBMASK
    RAM_EPILOGUE RAM_USE_CLASS_1
    ret
.SetCAto32:
    or    reg[BPF2_1_FILT_CA_REG],  BPF_CFBMASK
    RAM_EPILOGUE RAM_USE_CLASS_1
    ret


 BPF2_1_SetCB:
_BPF2_1_SetCB:
    RAM_PROLOGUE RAM_USE_CLASS_1
    cmp   A, BPF2_1_FEEDBACK_32    ; Change Feedback to 32 units?
    jz    .SetCAto32                         ;    Yes, go make it so
                                             ;     No, clear it to 16 units...
    and   reg[BPF2_1_FILT_CB_REG], ~BPF_CFBMASK
    RAM_EPILOGUE RAM_USE_CLASS_1
    ret
.SetCAto32:
    or    reg[BPF2_1_FILT_CB_REG],  BPF_CFBMASK
    RAM_EPILOGUE RAM_USE_CLASS_1
    ret

;-----------------------------------------------------------------------------
;  FUNCTION NAME: BPF2_1_SetPolarity
;
;  DESCRIPTION:   Alters the output polarity of the data by altering the
;                 input polarity at FLIN
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:    The A register contains one of the BPF2_1_POLARITY
;                  constants defined in BPF2_1.inc
;  RETURNS:      Nothing.
;  SIDE EFFECTS: 
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 BPF2_1_SetPolarity:
_BPF2_1_SetPolarity:
    RAM_PROLOGUE RAM_USE_CLASS_1
    cmp   A, BPF2_1_POLARITY_NON_INVERTING ; Should the output be non-inverting?
    jz    .SetPoltoNonInv                         ;    Yes, go make it so
                                                  ;    No, then set it to Inverting...
    or    reg[BPF2_1_FLIN_CR0], BPF_POLARITYMASK
    RAM_EPILOGUE RAM_USE_CLASS_1
    ret
.SetPoltoNonInv:
    and   reg[BPF2_1_FLIN_CR0], ~BPF_POLARITYMASK
    RAM_EPILOGUE RAM_USE_CLASS_1
    ret


;-----------------------------------------------------------------------------
;  FUNCTION NAME: BPF2_1_Stop
;
;  DESCRIPTION: Cuts power to the user module.
;
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:     None
;  RETURNS:       Nothing
;  SIDE EFFECTS: 
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 BPF2_1_Stop:
_BPF2_1_Stop:
    RAM_PROLOGUE RAM_USE_CLASS_1

    and reg[BPF2_1_FLIN_CR3], ~bPOWERMASK
    and reg[BPF2_1_FLFB_CR3], ~bPOWERMASK
    RAM_EPILOGUE RAM_USE_CLASS_1
    ret


; End of File BPF2_1.asm