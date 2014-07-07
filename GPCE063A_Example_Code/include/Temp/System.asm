//==========================================================================
// File Name   : SYSTEM.asm
// Description : Hardware initialization and key scan
// Written by  : Ray Cheng
// Last modified date:
//              2005/12/26
// Note:
//==========================================================================
//**************************************************************************
// Header File Included Area
//**************************************************************************
.include GPCE061.inc

//**************************************************************************
// Contant Defintion Area
//**************************************************************************
.define C_DebounceCnt		0x0008
.define C_SACM_RAMP_DELAY   80

//**************************************************************************
// Variable Publication Area
//**************************************************************************
.public R_ADC_Channel

//**************************************************************************
// Function Call Publication Area
//**************************************************************************

.public  _System_Initial
.public F_System_Initial
.public  _System_ServiceLoop
.public F_System_ServiceLoop
.public  _SP_GetCh
.public F_SP_GetCh
.public  _WatchdogClear
.public F_WatchdogClear
.public  _SP_SwitchChannel
.public F_SP_SwitchChannel

.public  _SP_RampUpDAC1
.public F_SP_RampUpDAC1
.public  _SP_RampDnDAC1
.public F_SP_RampDnDAC1
.public  _SP_RampUpDAC2
.public F_SP_RampUpDAC2
.public  _SP_RampDnDAC2
.public F_SP_RampDnDAC2

//**************************************************************************
// RAM Definition Area
//**************************************************************************
.RAM
.var R_DebounceReg
.var R_DebounceCnt
.var R_KeyBuf
.var R_KeyStrobe

.IRAM
.var R_ADC_Channel = 0;

//**************************************************************************
// CODE Definition Area
//**************************************************************************
.CODE
//****************************************************************
// Function    : F_System_Initial
// Description : System initial setting
// Destory     : R1
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
 _System_Initial: .proc
F_System_Initial:
	int off;
	fir_mov off;

	R1 = C_PLL_49M | C_32K_NormalMode | C_FPLL_Div1;
	[P_SystemClock] = R1;

	R1 = 0x0000;
	[P_INT_Ctrl] = R1;
	R1 = 0xFFFF;
	[P_INT_Clear] = R1;

	R1 = 0xFFFF;
	[P_TimeBase_Clear] = R1;

	call F_Key_Scan_Initial;
	call F_System_Initial_User_IO;
	retf;
	.endp;

//****************************************************************
// Function    : F_Key_Scan_Initial
// Description : Key scan variable initialzation
// Destory     : R1
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
F_Key_Scan_Initial:	.proc
	R1 = 0x0000;
	[R_DebounceReg] = R1;
	[R_KeyBuf] = R1;
	[R_KeyStrobe] = R1;
	R1 = C_DebounceCnt;
	[R_DebounceCnt] = R1;
	retf;
	.endp

//****************************************************************
// Function    : F_System_Initial_User_IO
// Description : I/O initialization
// Destory     : R1
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
F_System_Initial_User_IO: .proc
	R1 = 0x0000;			// IOA[15:0] input pull low mode
	[P_IOA_Dir] = R1;
	[P_IOA_Attrib] = R1;
	[P_IOA_Data] = R1;

	R1 = 0xFFFF;			// IOB[15:0] output buffer low
	[P_IOB_Dir] = R1;
	[P_IOB_Attrib] = R1;
	R1 = 0x0000;
	[P_IOB_Data] = R1;
	retf;
	.endp

//****************************************************************
// Function    : F_System_ServiceLoop
// Description : Key scan and watchdog clear
// Destory     : R1, R2
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
 _System_ServiceLoop: .proc
F_System_ServiceLoop:
	call F_Key_DebounceCnt_Down;		// debounce counter countdown
	call F_Key_Scan_ServiceLoop;		// key scan
	call F_WatchdogClear;				// clear watchdog register
	retf;
	.endp;

//****************************************************************
// Function    : F_Key_Scan_ServiceLoop
// Description : Get Key code from key pad(8 x 1 key pad)
// Destory     : R1, R2
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
F_Key_Scan_ServiceLoop:	.proc
	R1 = [P_IOA_Data];				// get key data from IOA   
//	R1 = [P_IOB_Data];				// get key data from IOB

//	R1 &= 0x00FF;
	R1 &= 0xFFFF;
	R2 = [R_DebounceReg];
	[R_DebounceReg] = R1;
	cmp R2, [R_DebounceReg];
	je ?L_KS_StableTwoSample;

	R1 = C_DebounceCnt;				// debounce counter reset
	[R_DebounceCnt] = R1;
	retf;

?L_KS_StableTwoSample:
	R1 = [R_DebounceCnt];
	jz ?L_KS_StableOverDebounce;
	retf;

?L_KS_StableOverDebounce:
	[R_DebounceCnt] = R1;
	R2 = [R_DebounceReg];
	R1 = [R_KeyBuf];
	[R_KeyBuf] = R2;
//	R1 ^= 0x00FF;
	R1 ^= 0xFFFF;
	R1 &= [R_KeyBuf];
//	R1 &= 0x00FF;
	R1 &= 0xFFFF;
	R1 |= [R_KeyStrobe];
	[R_KeyStrobe] = R1;
	retf;
	.endp

//****************************************************************
// Function    : F_Key_DebounceCnt_Down
// Description : Debounce counter countdown
// Destory     : R1
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
F_Key_DebounceCnt_Down:
	R1 = [R_DebounceCnt];
	jz	L_DebounceCntZero;
	R1 -= 0x0001;
	[R_DebounceCnt] = R1;
L_DebounceCntZero:
	retf;

//****************************************************************
// Function    : F_SP_GetCh
// Description : Get Keycode
// Destory     : R1, R2
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
 _SP_GetCh:	.proc
F_SP_GetCh:
	R1 = [R_KeyStrobe];				// Get Key code
	R2 = 0x0000;					// Clear KeyStrobe for next key
	[R_KeyStrobe] = R2;
	retf;
	.endp

//****************************************************************
// Function    : F_WatchdogClear
// Description : Clear watchdog register
// Destory     : R1
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
 _WatchdogClear:	.proc
F_WatchdogClear:
	R1 = C_Watchdog_Clear;
	[P_Watchdog_Clear] = R1
	retf;
	.endp


//****************************************************************
// Function    : F_SP_SwitchChannel
// Description : Switch A/D channel
// Destory     : R1, R2
// Parameter   : R1 = A/D channel
// Return      : None
// Note        : None
//****************************************************************
_SP_SwitchChannel: .proc
	R1 = SP + 3;
	R1 = [R1];
F_SP_SwitchChannel:
	push R2 to [SP]

	[R_ADC_Channel] = R1;
	// Check if microphone selected
	cmp R1,0;
	jnz ?L_LineIn;

// Wait for ADC ready
?L_Wait_AD_ready_0:
	R2 = [P_ADC_Status];
	R2 = R2 & 0x8000;
	jz  ?L_Wait_AD_ready_0
	R2 = 0x0115;			// 061A: Mic, Enable ADC              
	[P_ADC_Ctrl] = R2; 
	[P_ADC_MUX_Ctrl] = R1; // Switch channel to Mic
	R2 = [P_ADC]
	jmp ?L_Done;

	// Wait for ADC ready
?L_LineIn:	
?L_Wait_AD_ready_1:
	R2 = [P_ADC_Status];
	R2 = R2 & 0x8000;
	jz  ?L_Wait_AD_ready_1

	R2 = 0x0103;			// 061A: LINE IN, Enable ADC              
	[P_ADC_Ctrl] = R2; 

	[P_ADC_MUX_Ctrl] = R1; // Switch channel to Line_in
	R2 = [P_ADC_LINEIN_Data]; 

?L_Done:

	pop R2 from [SP];
	retf;
	.endp

//****************************************************************
// Function    : F_SP_RampDnDAC1
// Description : Ramp down after using DAC to avoid "bow" sound from speaker 
// Destory     : R1
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
 _SP_RampDnDAC1: .proc
F_SP_RampDnDAC1:
	push R1 to [SP];
	R1 = [P_DAC1];
	R1 &= 0xFFC0;
	jz ?L_Branch_0;

?L_Loop_0:
	call F_SACM_Delay;
	R1 -= 0x0040;
	[P_DAC1] = R1;
	jnz ?L_Loop_0;

?L_Branch_0:
	pop R1 from [SP];
	retf;
	.endp

//****************************************************************
// Function    : F_SP_RampDnDAC2
// Description : Ramp down after using DAC to avoid "bow" sound from speaker 
// Destory     : R1
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
 _SP_RampDnDAC2: .proc
F_SP_RampDnDAC2:
	push R1 to [SP];
	R1 = [P_DAC2];
	R1 &= 0xFFC0;
	jz ?L_Branch_0;

?L_Loop_0:
	call F_SACM_Delay;
	R1 -= 0x0040;
	[P_DAC2] = R1;
	jnz ?L_Loop_0;

?L_Branch_0:
	pop R1 from [SP];
	retf;
	.endp

//****************************************************************
// Function    : F_SP_RampUpDAC1
// Description : Ramp Up before using DAC to avoid "bow" sound from speaker 
// Destory     : R1
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
 _SP_RampUpDAC1: .proc
F_SP_RampUpDAC1:
	push R1 to [SP];
	R1 = [P_DAC1];
	R1 &= 0xFFC0;
	cmp R1, 0x8000;
	jb ?L_Loop_0;
	je ?L_Branch_0;

?L_Loop_1:
	call F_SACM_Delay;
	R1 -= 0x0040;
	[P_DAC1] = R1;
	cmp R1, 0x8000;
	jne ?L_Loop_1;
	jmp ?L_Branch_0;

?L_Loop_0:
	call F_SACM_Delay;
	R1 += 0x0040;
	[P_DAC1] = R1;
	cmp R1, 0x8000;
	jne ?L_Loop_0;

?L_Branch_0:
	pop R1 from [SP];
	retf;
	.endp

//****************************************************************
// Function    : F_SP_RampUpDAC2
// Description : Ramp Up before using DAC to avoid "bow" sound from speaker 
// Destory     : R1
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
 _SP_RampUpDAC2: .proc
F_SP_RampUpDAC2:
	push R1 to [SP];
  	R1 = [P_DAC2];
    R1 &= 0xFFC0;
    cmp R1, 0x8000;
    jb ?L_Loop_0;
    je ?L_Branch_0;

?L_Loop_1:
    call F_SACM_Delay;
    R1 -= 0x0040;
    [P_DAC2] = R1;
    cmp R1, 0x8000;
    jne ?L_Loop_1;
    jmp ?L_Branch_0;

?L_Loop_0:
	call F_SACM_Delay;
    R1 += 0x0040;
    [P_DAC2] = R1;
    cmp R1, 0x8000;
    jne ?L_Loop_0;

?L_Branch_0:
   	pop R1 from [SP];
    retf;
	.endp

//****************************************************************
// Function    : F_SACM_Delay
// Description : Provide delay for Ramp up/down 
//               The delay time is adjustable by adjusting C_SACM_RAMP_DELAY
// Destory     : R1
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
F_SACM_Delay: .proc
	R2 = C_SACM_RAMP_DELAY; // Ramp Up/Dn delay per step
?L_Loop_0:
	R2 -= 0x0001;
	jnz ?L_Loop_0;
	retf;
	.endp
