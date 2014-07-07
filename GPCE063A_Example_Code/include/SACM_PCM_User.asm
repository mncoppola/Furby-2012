//==========================================================================
// File Name   : SACM_PCM_USER.asm
// Description : Users implement functions
// Written by  : Ray Cheng
// Last modified date:
//              2005/12/26
// Note: 
//==========================================================================
//**************************************************************************
// Header File Included Area
//**************************************************************************
.include GPF8.inc
.include PCM.inc

//**************************************************************************
// Contant Defintion Area
//**************************************************************************
.define C_PCM_Timer_Setting_X1		C_Timer_Setting_8K
.define C_PCM_Timer_Setting_X2		C_Timer_Setting_16K
.define C_PCM_Timer_Setting_X4		C_Timer_Setting_32K

//**************************************************************************
// Variable Publication Area
//**************************************************************************


//**************************************************************************
// Function Call Publication Area
//**************************************************************************
.public  _USER_PCM_SetStartAddr
.public F_USER_PCM_SetStartAddr
.public F_USER_PCM_GetData
.public F_USER_PCM_WriteData
.public  _USER_PCM_Volume
.public F_USER_PCM_Volume

.public F_SACM_PCM_SendDAC1
.public F_SACM_PCM_SendDAC2
.public F_SACM_PCM_GetADC
.public F_SACM_PCM_EndPlay
.public F_SACM_PCM_EndRecord
.public F_SACM_PCM_Init_
.public F_SACM_PCM_DAC_Timer_X1
.public F_SACM_PCM_DAC_Timer_X2
.public F_SACM_PCM_ADC_Timer_X1
.public F_SACM_PCM_ADC_Timer_X2
.public F_SACM_PCM_ADC_Timer_X4

//**************************************************************************
// External Function Declaration
//**************************************************************************
.external F_SIO_SendAWord
//.external F_SIO_ReadAWord
.external F_SIO_SendNWords
.external F_SIO_ReadNWords

//**************************************************************************
// RAM Definition Area
//**************************************************************************
.RAM
.var R_ExtSRAM_Low
.var R_ExtSRAM_High

//*****************************************************************************
// Table Definition Area
//*****************************************************************************
.TEXT
// Volume Table
T_SACM_PCM_Volume_Level:
.dw 0x0000, 0x0250, 0x0500, 0x1000
.dw	0x1500, 0x2000, 0x2500, 0x3000
.dw 0x3500, 0x4000, 0x5000, 0x6500
.dw	0x7d00, 0x9c00, 0xc400, 0xf500

//**************************************************************************
// CODE Definition Area
//**************************************************************************
.CODE
//****************************************************************
// Function    : F_SACM_PCM_Init_
// Description : Hardware initilazation for PCM, called by library
// Destory     : R1
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
F_SACM_PCM_Init_:	.proc
	FIR_MOV OFF;
	
	R1 = C_TimerA_FPLL;
	[P_Timer_Ctrl] = R1;
	R1 = C_TimerA_INT_Interval_1;
	[P_Timer_Interval] = R1;
	R1 = C_PCM_Timer_Setting_X2;
	[P_TimerA_Data] = R1;
	[P_TimerA_CNTR] = R1;

	R1 = 0xFFFF;
	[P_Timer_FIFO_Clear] = R1;

//	R1 = C_PWM_Full_Mode | C_Over_Sample_2 | C_PWM_Width_16_CLK | C_DACL_TMR_SEL_TimerA | C_DAC_Out_Enable | C_DAC_Enable | C_PWM_Mono | C_DACR_TMR_SEL_TimerA | C_FIFO_Stereo;
	R1 = C_DACL_TMR_SEL_TimerA | C_DAC_Out_Enable | C_DAC_Enable | C_DACR_TMR_SEL_TimerA | C_FIFO_Stereo;
	[P_DAC_Ctrl] = R1;

	R1 = C_ADC_Enable | C_MIC_Enable | C_PGA_Enable | C_CMP_Enable | C_AGC_Enable | C_VMIC_ON | C_CMP_Level_1 | C_PGA_Gain_5 | C_Auto_Scan_Ch0_MIC;
	[P_ADDA_Ctrl] = R1;

	R1 = C_ADC_Auto_Scan_OFF;
	[P_ADC_Ctrl] = R1;

	R1 = C_ADC_CLK_FPLL_Div_32 | C_ADC_Manual_AN0 | C_ADC_Auto_Scan_1 | C_ADC_Timer_A;
	[P_ADC_Ctrl] = R1;
	
	R1 = [P_INT_Ctrl];
	R1 |= C_IRQ0_TMA;
	[P_INT_Ctrl] = R1;

	R1 = [P_FIQ_Sel];
	R1 |= C_IRQ0_TMA;
	[P_FIQ_Sel] = R1;
	
	FIQ on;
	retf;
	.endp

//****************************************************************
// Function    : F_USER_PCM_Volume
// Description : Set speech volume
// Destory     : R1
// Parameter   : R1: volume index
// Return      : None
// Note        : None
//****************************************************************
 _USER_PCM_Volume: .proc
	R1 = SP + 3;
	R1 = [R1];								// volume index
F_USER_PCM_Volume:
	R1 += T_SACM_PCM_Volume_Level;		// loop up volume table
	R1 = [R1];
	call F_SACM_PCM_Volume;
	retf
	.endp

//****************************************************************
// Function    : F_SACM_PCM_DAC_Timer_X1
// Description : Change timer setting for change DA filter, called by library
// Destory     : R1
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
 _SACM_PCM_DAC_Timer_X1:	.proc
F_SACM_PCM_DAC_Timer_X1:
	R1 = C_PCM_Timer_Setting_X1;
	[P_TimerA_Data] = R1;
	retf;
	.endp

//****************************************************************
// Function    : F_SACM_PCM_DAC_Timer_X2
// Description : Set timer for PCM playback, called by library
// Destory     : R1
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
 _SACM_PCM_DAC_Timer_X2:	.proc
F_SACM_PCM_DAC_Timer_X2:
	push R1 to [SP];
	R1 = C_PCM_Timer_Setting_X2;
	[P_TimerA_Data] = R1;
	pop R1 from [SP];
	retf;
	.endp

//****************************************************************
// Function    : F_SACM_PCM_ADC_Timer_X1
// Description : Change timer setting for change AD filter, called by library
// Destory     : R1
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
 _SACM_PCM_ADC_Timer_X1:	.proc
F_SACM_PCM_ADC_Timer_X1:
	R1 = C_PCM_Timer_Setting_X1;
	[P_TimerA_Data] = R1;
	retf;
	.endp

//****************************************************************
// Function    : F_SACM_PCM_ADC_Timer_X2
// Description : Change timer setting for change AD filter, called by library
// Destory     : R1
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
 _SACM_PCM_ADC_Timer_X2:	.proc
F_SACM_PCM_ADC_Timer_X2:
	R1 = C_PCM_Timer_Setting_X2;
	[P_TimerA_Data] = R1;
	retf;
	.endp

//****************************************************************
// Function    : F_SACM_PCM_ADC_Timer_X4
// Description : Set timer for PCM recording, called by library
// Destory     : R1
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
 _SACM_PCM_ADC_Timer_X4:	.proc
F_SACM_PCM_ADC_Timer_X4:
	push R1 to [SP];
	R1 = C_PCM_Timer_Setting_X4;
	[P_TimerA_Data] = R1;
	pop R1 from [SP];
	retf;
	.endp

//****************************************************************
// Function    : F_SACM_PCM_GetADC
// Description : Get ADC data for recording
// Destory     : R1
// Parameter   : None
// Return      : R1 = ADC data
// Note        : None
//****************************************************************
F_SACM_PCM_GetADC:	.proc
//	R1 = [P_ADC_Auto];
	R4 = [P_ADC_Auto];
	retf;
	.endp

//****************************************************************
// Function    : F_SACM_PCM_SendDAC1
// Description : Send data to DAC1, called by library
// Destory     : None
// Parameter   : R4: 16-bit signed PCM data
// Return      : None
// Note        : None
//****************************************************************
F_SACM_PCM_SendDAC1:	.proc
	[P_DAC_R_Data] = R4;
	retf;
	.endp

//****************************************************************
// Function    : F_SACM_PCM_SendDAC2
// Description : Send data to DAC2, called by library
// Destory     : None
// Parameter   : R4: 16-bit signed PCM data
// Return      : None
// Note        : None
//****************************************************************
F_SACM_PCM_SendDAC2:	.proc
	[P_DAC_L_Data] = R4;
	retf; 
	.endp

//****************************************************************
// Function    : F_SACM_PCM_EndPlay
// Description : This function called by library when speech play end
// Destory     : None
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
F_SACM_PCM_EndPlay:	.proc
	nop;
	retf;
	.endp

//****************************************************************
// Function    : F_SACM_PCM_EndRecord
// Description : Call back from kernel when bit stream encoding is done 
// Destory     : R1, R2, R3
// Parameter   : R1: Low byte of file length
//               R2: High byte of File length
// Return      : None
// Note        : None
//****************************************************************
F_SACM_PCM_EndRecord: .proc
	push R2 to [SP];
	push R1 to [SP];
	R1 = 0;
	R2 = 0;
	pop R3 from [SP];
	call F_SIO_SendAWord;
//	call F_SPI_SendAWord;
//	R1 += 1;
	R1 += 2;
	pop R3 from [SP];
	call F_SIO_SendAWord;
//	call F_SPI_SendAWord;
	retf;
	.endp

//****************************************************************
// Function    : F_USER_PCM_SetStartAddr
// Description : This API allows users to set the beginning address
//               to fetch data. This address can be either a ROM address
//               or a external storage address. User would have to modify
//               the function body based on the application's need.
// Destory     : None
// Parameter   : R1: Low byte of start address
//               R2: High byte of start address
// Return      : None
// Note        : None
//****************************************************************
_USER_PCM_SetStartAddr:
	R1 = SP + 3;
	R2 = SP + 4;
	R1 = [R1];
	R2 = [R2];

F_USER_PCM_SetStartAddr:
	[R_ExtSRAM_Low] = R1;
	[R_ExtSRAM_High] = R2;
	retf;

//****************************************************************
// Function    : F_USER_PCM_GetData
// Description : Get speech data from internal or external memory
//               and fill these data to buffer of library.
// Destory     : None
// Parameter   : R1: decode buffer address of library
//               R2: data length
// Return      : None
// Note        : None
//****************************************************************
F_USER_PCM_GetData:
	R3 = [R_ExtSRAM_Low];
	R4 = [R_ExtSRAM_High];
	call F_SIO_ReadNWords;
	[R_ExtSRAM_Low] = R3;
	[R_ExtSRAM_High] = R4;
	retf;
.comment @
F_USER_PCM_GetData:
	R3 = R1;
	R4 = R1;
	R4 += R2;
	R1 = [R_ExtSRAM_Low];
	R5 = R1;
	R2 = [R_ExtSRAM_High];
?_GetDataLoop:
	R1 = R5;
	push R2, R4 to [SP];
	call F_SIO_ReadAWord;
//	call F_SPI_ReadAWord;
	pop R2, R4 from [SP];
	R5 += 2;
//	jnz ?_NoChangePage;
	R2 += 0, carry;
//?_NoChangePage:
	[R3++] = R1;
	cmp R3, R4;
	jne ?_GetDataLoop;
	[R_ExtSRAM_Low] = R5;
	[R_ExtSRAM_High] = R2;
	retf;
@
//****************************************************************
// Function    : F_USER_PCM_WriteData
// Description : Get encoded speech data from buffer of library
//               and write to external memory.
// Destory     : None
// Parameter   : R1: encode buffer address of library
//               R2: data length
// Return      : None
// Note        : None
//****************************************************************
F_USER_PCM_WriteData:
	R3 = [R_ExtSRAM_Low];
	R4 = [R_ExtSRAM_High];
	call F_SIO_SendNWords;
	[R_ExtSRAM_Low] = R3;
	[R_ExtSRAM_High] = R4;
	retf;

.comment @
F_USER_PCM_WriteData:
	R4 = R1;
	R5 = R2;
	R5 += R1;
	R1 = [R_ExtSRAM_Low];
	R2 = [R_ExtSRAM_High];
?L_WriteData_Loop:
	R3 = [R4++];
	call F_SIO_SendAWord;
//	call F_SPI_SendAWord;
	R1 += 2;
	R2 += 0, carry;
	cmp R4, R5;
	jne ?L_WriteData_Loop;
	[R_ExtSRAM_Low] = R1;
	[R_ExtSRAM_High] = R2;
	retf;
@

