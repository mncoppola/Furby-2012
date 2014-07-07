//**************************************************************************
// Header File Included Area
//**************************************************************************
.include GPCE063.inc

//**************************************************************************
// Contant Defintion Area
//**************************************************************************
//.external _UART_Receive_CMD
.define C_DebounceCnt		0x0008
.define C_SACM_RAMP_DELAY   80

//**************************************************************************
// Variable Publication Area
//**************************************************************************



//**************************************************************************
// Function Call Publication Area
//**************************************************************************
.public  _System_Initial
.public F_System_Initial
.public  _System_ServiceLoop
.public F_System_ServiceLoop
.public _WatchdogClear
.public F_WatchdogClear
.public  _SP_GetCh
.public F_SP_GetCh

.public  _SP_RampUpDAC1
.public F_SP_RampUpDAC1
.public  _SP_RampDnDAC1
.public F_SP_RampDnDAC1
.public  _SP_RampUpDAC2
.public F_SP_RampUpDAC2
.public  _SP_RampDnDAC2
.public F_SP_RampDnDAC2

.public _Delay_1us
.public F_Delay_1us
.public _Delay_1ms
.public F_Delay_1ms
.public _Setbit
.public F_Setbit
.public _Set_TimerA_Data
.public F_Set_TimerA_Data
.public _Set_TimerB_Data
.public F_Set_TimerB_Data
.public _Set_TimerC_Data
.public F_Set_TimerC_Data

//**************************************************************************
// RAM Definition Area
//**************************************************************************
.RAM
.var R_DebounceReg
.var R_DebounceCnt
.var R_KeyBuf
.var R_KeyStrobe



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

//	R1 = C_FOSC_24576KHz | C_Sleep_RTC_SLP_Off | C_RTC_Mode_Weak | C_CPU_CLK_FOSC;
//	R1 = C_FOSC_20480KHz | C_Sleep_RTC_SLP_Off | C_RTC_Mode_Weak | C_CPU_CLK_FOSC;
//	R1 = C_FOSC_32768KHz | C_Sleep_RTC_SLP_Off | C_RTC_Mode_Weak | C_CPU_CLK_FOSC;
//	R1 = C_FOSC_40960KHz | C_Sleep_RTC_SLP_Off | C_RTC_Mode_Weak | C_CPU_CLK_FOSC;
	R1 = C_FOSC_49152KHz | C_Sleep_RTC_SLP_Off | C_RTC_Mode_Weak | C_CPU_CLK_FOSC;
	[P_System_Clock] = R1;

	R1 = 0x0000;
	[P_IO_Ctrl] = R1;
	
	R1 = 0x0000;
	[P_INT_Ctrl] = R1;

	R1 = 0xffff;
	[P_INT_Status] = R1;

	R1 = C_TimeBase_Clear;
	[P_TimeBase_Clear] = R1;

	R1 = 0x3;
	[P_Wait_Ctrl] = R1;

	R1 = 0x0000;
//	[P_IOA_Dir] = R1;
//	[P_IOA_Attrib] = R1;
	[P_IOB_Dir] = R1;
	[P_IOB_Attrib] = R1;

	retf;
	.endp;

	

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
// Function    : F_Delay_1us
// Description : Delay some time (unit : 1us)
// Destory     : R1, R2
// Parameter   : R1 : Delay time = R1 * 1us
// Return      : None
// Note        : None
//****************************************************************

_Delay_1us:	.proc
	R1 = SP + 3;
	R1 = [R1];

F_Delay_1us:
	push R1, R2 to [SP];
// for CPU clock = 48MHz, 1us = 48 cycles ~= 50cycles
?L_Delay_Loop:
	R2 = 5;					// 2 cycles
?L_1us_Loop:
	nop;					// 2 cycles for unSP 1.3
	R2 -= 1;				// 2 cycles
	jnz	?L_1us_Loop;		// 4 cycles
	nop;					// 2 cycles for unSP 1.3
	R1 -= 1;				// 2 cycles
	jnz ?L_Delay_Loop;		// 4 cycles
	pop R1, R2 from [SP];
	retf;
	.endp

//****************************************************************
// Function    : F_Delay_1ms
// Description : Delay some time (unit 1ms)
// Destory     : R1, R2
// Parameter   : R1 : Delay time = R1 * 1ms
// Return      : None
// Note        : None
//****************************************************************

_Delay_1ms:	.proc
	R1 = SP + 3;
	R1 = [R1];

F_Delay_1ms:
?L_Delay_Loop:
	R2 = 1200;						// for CPU clock = 48MHz, 1ms = 48000 cycles
?L_1ms_Loop:						// this loop is 10 cycles
	nop;					// 2 cycles for unSP 1.3
	nop;					// 2 cycles for unSP 1.3
	R2-= 1;							// 2 cycles
	jnz ?L_1ms_Loop;				// 4 cycles
	R1 -= 1;
	jnz ?L_Delay_Loop;
	retf;
	.endp

//****************************************************************
// Function    : F_Setbit
// Description : Set bit to '1'
// Destory     : R1, R2
// Parameter   : R1 : Port address, R2 : bit ID
// Return      : None
// Note        : None
//****************************************************************

_Setbit:	.proc
	R2 = SP + 3;
	R1 = [R2++];
	R2 = [R2];

F_Setbit:
	setb [R1], R2;
	retf;
	.endp
	
	
	

_Set_TimerA_Data:	.proc
F_Set_TimerA_Data:
	[P_TimerA_Data] =  R1;
	[P_TimerA_CNTR] =  R1;
	retf;
	.endp	


_Set_TimerB_Data:	.proc
F_Set_TimerB_Data:
	[P_TimerB_Data] =  R1;
	[P_TimerB_CNTR] =  R1;
	retf;
	.endp	
	

_Set_TimerC_Data:	.proc
F_Set_TimerC_Data:
	[P_TimerC_Data] =  R1;
	[P_TimerC_CNTR] =  R1;
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

//	R1 = R1 and 0xff;
	R1 &= 0xFFFF;
//	R1 = R1 and 0xffff;
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
//	R1 = R1 xor 0x00ff;
	R1 ^= 0xFFFF;
//	R1 = R1 xor 0xffff;
	R1 = R1 and [R_KeyBuf];
//	R1 = R1 and 0x00ff;
	R1 &= 0xFFFF;
//	R1 = R1 and 0xffff;
//	R1 = R1 or [R_KeyStrobe];
	R1 |= [R_KeyStrobe];
	[R_KeyStrobe] = R1;
	retf;
	.endp

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
// Function    : F_SP_RampDnDAC1
// Description : Ramp down after using DAC to avoid "bow" sound from speaker 
// Destory     : R1
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
 _SP_RampDnDAC1: .proc
F_SP_RampDnDAC1:
	push R1, R2 to [SP];
	R1 = [P_DAC_Data];
	R1 &= 0xFFC0;
	cmp R1, 0x0000;
	je ?_Branch_0;
	test R1, 0x8000;
	jnz ?_Loop_0;

?_Loop_1:
	call F_SACM_Delay;
	R1 -= 0x0040;
	[P_DAC_Data] = R1;
	cmp R1, 0x0000;
	jne ?_Loop_1;

	jmp ?_Branch_0;

?_Loop_0:
	call F_SACM_Delay;
	R1 += 0x0040;
	[P_DAC_Data] = R1;
	cmp R1, 0x0000;
	jne ?_Loop_0;

?_Branch_0:
	pop R1, R2 from [SP];
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
	push R1, R2 to [SP];

	pop R1, R2 from [SP];
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
	push R1, R2 to [SP];

	R1 = [P_DAC_Data];
	R1 &= 0xFFC0;
	cmp R1, 0x0000;
	je ?_Branch_0;
	test R1, 0x8000;
	jnz ?_Loop_0;

?_Loop_1:
	call F_SACM_Delay;
	R1 -= 0x0040;
	[P_DAC_Data] = R1;
	cmp R1, 0x0000;
	jne ?_Loop_1;

	jmp ?_Branch_0;

?_Loop_0:
	call F_SACM_Delay;
	R1 += 0x0040;
	[P_DAC_Data] = R1;
	cmp R1, 0x0000;
	jne ?_Loop_0;

?_Branch_0:
	pop R1, R2 from [SP];
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
	push R1, R2 to [SP];


	pop R1, R2 from [SP];
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
?_Loop_0:
	R2 -= 0x0001;
	jnz ?_Loop_0;
	retf;
	.endp