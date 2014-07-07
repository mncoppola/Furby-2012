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
.define C_SCAN_8_Bits	    1 //0 for 16Bits		
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



//**************************************************************************
// CODE Definition Area
//**************************************************************************
.CODE


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
	cmp R1, 0;
	jnz ?L_LineIn;
	R1 = C_ADC_Auto_Scan_Busy | C_ADC_Busy;
?L_Wait_AD_Ready_MIC:
	test R1, [P_ADC_Ctrl];
	jnz ?L_Wait_AD_Ready_MIC;

	R1 = C_ADC_Enable | C_AGC_Enable | C_ADC_CLK_FPLL_Div_32 | C_ADC_Bias_Enable | C_ADC_MIC_Enable | C_ADC_Timer_A
	[P_ADC_Ctrl] = R1;

	jmp ?L_SwitchChannelEnd;
	
?L_LineIn:
	R1 = C_ADC_Auto_Scan_Busy | C_ADC_Busy;
?L_Wait_AD_Ready_LinIn:
	test R1, [P_ADC_Ctrl];
	jnz ?L_Wait_AD_Ready_LinIn;
	
	R1 = C_ADC_AN0_Enable
	[P_ADC_LineIn_BitCtrl] = R1
	
	
	R1 =C_ADC_Bias_Enable | C_ADC_CLK_FPLL_Div_32 | C_ADC_Timer_A | C_ADC_Manual_AN0 | C_ADC_Enable | C_ADC_Ch0_in_LineinPB0;
	[P_ADC_Ctrl] = R1;

?L_SwitchChannelEnd:
	retf;
	.endp


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
// Note        : C_SCAN_8_Bits  = 1 , ScanKey 8bits
//               C_SCAN_8_Bits  = 0 , ScanKey 16bits  
//****************************************************************
F_Key_Scan_ServiceLoop:	.proc

	R1 = [P_IOA_Data];				// get key data from IOA  
.IF C_SCAN_8_Bits
	//////////////////// Avoid Latch PortA Data Error 
	R1 &= 0xFF00;  			          //R1 &= 0xFFFF;
	[P_IOA_Data] = R1;
	R1 = [P_IOA_Data];
	//////////////////// 
	R1 &= 0x00FF; 			          
.ELSE	
	R1 &= 0xFFFF; 
.ENDIF

	R2 = [R_DebounceReg];
	[R_DebounceReg] = R1;
	cmp R2, [R_DebounceReg];
	je ?L_KS_StableTwoSample;

	R1 = C_DebounceCnt;				   // debounce counter reset
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

.IF  C_SCAN_8_Bits	
	R1 ^= 0x00FF;    					
	R1 = R1 and [R_KeyBuf];
	R1 &= 0x00FF;
.ELSE
	R1 ^= 0xFFFF;    					
	R1 = R1 and [R_KeyBuf];
	R1 &= 0xFFFF;
.ENDIF							
	
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