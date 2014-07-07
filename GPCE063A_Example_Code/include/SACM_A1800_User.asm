//==========================================================================
// File Name   : SACM_A1800_USER.asm
// Description : Users implement functions
// Written by  : Ray Cheng
// Last modified date:
//              2005/12/26
// Note: 
//==========================================================================
//**************************************************************************
// Header File Included Area
//**************************************************************************
.include GPCE063.inc
.include A1800.inc

//**************************************************************************
// Contant Defintion Area
//**************************************************************************
.define C_A1800_Timer_Setting_X1		C_Timer_Setting_16K
.define C_A1800_Timer_Setting_X2		C_Timer_Setting_32K
.define C_A1800_Timer_Setting_X4		C_Timer_Setting_64K

//**************************************************************************
// Variable Publication Area
//**************************************************************************


//**************************************************************************
// Function Call Publication Area
//**************************************************************************
.public  _USER_A1800_SetStartAddr
.public F_USER_A1800_SetStartAddr
.public  _USER_A1800_SetStartAddr_Con
.public F_USER_A1800_SetStartAddr_Con

.public F_USER_A1800_GetData
.public  _USER_A1800_Volume
.public F_USER_A1800_Volume

.public F_SACM_A1800_SendDAC1
.public F_SACM_A1800_SendDAC2
.public F_SACM_A1800_StartPlay
.public F_SACM_A1800_EndPlay
.public F_SACM_A1800_Init_
.public F_SACM_A1800_DAC_Timer_X1
.public F_SACM_A1800_DAC_Timer_X2
.public F_SACM_A1800_GetStartAddr_Con

//**************************************************************************
// External Function Declaration
//**************************************************************************
.external F_SPI_ReadAWord
.external F_SPI_ReadNWords

//**************************************************************************
// External Table Declaration
//**************************************************************************
.external T_SACM_A1800_SpeechTable

//**************************************************************************
// RAM Definition Area
//**************************************************************************
.RAM
.var R_ExtMem_Low
.var R_ExtMem_High
.var R_ExtMem_Low_Con
.var R_ExtMem_High_Con

//*****************************************************************************
// Table Definition Area
//*****************************************************************************
.TEXT
// Volume Table
T_SACM_A1800_Volume_Level:
.dw 0x0000, 0x0250, 0x0500, 0x1000
.dw	0x1500, 0x2000, 0x2500, 0x3000
.dw 0x3500, 0x4000, 0x5000, 0x6500
.dw	0x7d00, 0x9c00, 0xc400, 0xf500

//**************************************************************************
// CODE Definition Area
//**************************************************************************
.CODE
//****************************************************************
// Function    : F_SACM_A1800_Init_
// Description : Hardware initilazation for A1800, called by library
// Destory     : R1
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
F_SACM_A1800_Init_:	.proc
	FIR_MOV OFF;
	
	R1 = C_TimerA_FPLL;				// TimerA CKA=Fosc/2 CKB=1 Tout:off
	[P_Timer_Ctrl] = R1;
	R1= C_A1800_Timer_Setting_X1;	// TimerA setting
	[P_TimerA_Data] = R1;
	[P_TimerA_CNTR] = R1;


	R1 = C_DAC_Enable | C_DAC_TMR_Sel_TimerA;
	[P_DAC_Ctrl] = R1;		// b2 of P_DAC_Ctrl must be set to 1 in GPCE500A. GPCE060A doesn't use this bit


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
// Function    : F_USER_A1800_Volume
// Description : Set speech volume
// Destory     : R1
// Parameter   : R1: volume index
// Return      : None
// Note        : None
//****************************************************************
 _USER_A1800_Volume: .proc
	R1 = SP + 3;
	R1 = [R1];								// volume index
F_USER_A1800_Volume:
	R1 += T_SACM_A1800_Volume_Level;		// loop up volume table
	R1 = [R1];
	call F_SACM_A1800_Volume;
	retf
	.endp

//****************************************************************
// Function    : F_SACM_A1800_DAC_Timer_X1
// Description : Change timer setting for change DA filter, called by library
// Destory     : R1
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
 _SACM_A1800_DAC_Timer_X1:	.proc
F_SACM_A1800_DAC_Timer_X1:
	R1 = C_A1800_Timer_Setting_X1;
	[P_TimerA_Data] = R1;
	retf;
	.endp

//****************************************************************
// Function    : F_SACM_A1800_DAC_Timer_X2
// Description : Set timer for A1800 playback, called by library
// Destory     : R1
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
 _SACM_A1800_DAC_Timer_X2:	.proc
F_SACM_A1800_DAC_Timer_X2:
	push R1 to [SP];
	R1 = C_A1800_Timer_Setting_X2;
	[P_TimerA_Data] = R1;
	pop R1 from [SP];
	retf;
	.endp

//****************************************************************
// Function    : F_SACM_A1800_SendDAC1
// Description : Send data to DAC1, called by library
// Destory     : None
// Parameter   : R4: 16-bit signed PCM data
// Return      : None
// Note        : None
//****************************************************************
F_SACM_A1800_SendDAC1:	.proc
	[P_DAC_Data] = R4;
	retf;
	.endp

//****************************************************************
// Function    : F_SACM_A1800_SendDAC2
// Description : Send data to DAC2, called by library
// Destory     : None
// Parameter   : R4: 16-bit signed PCM data
// Return      : None
// Note        : None
//****************************************************************
F_SACM_A1800_SendDAC2:	.proc

	retf; 
	.endp

//****************************************************************
// Function    : F_SACM_A1800_StartPlay
// Description : This function called by library when Play function is callled
// Destory     : None
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
F_SACM_A1800_StartPlay:	.proc
	nop;
	retf;
	.endp

//****************************************************************
// Function    : F_SACM_A1800_EndPlay
// Description : This function called by library when speech play end
// Destory     : None
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
F_SACM_A1800_EndPlay:	.proc
	nop;
	retf;
	.endp

//****************************************************************
// Function    : F_USER_A1800_SetStartAddr
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
_USER_A1800_SetStartAddr:	.proc
	R1 = SP + 3;
	R1 = [R1];

F_USER_A1800_SetStartAddr:
	push R1, R2 to [SP];
	R1 += T_SACM_A1800_SpeechTable;
	R1 = [R1];
	R2 = [R1++];
	[R_ExtMem_Low] = R2;
	R1 = [R1];
	R1 = R1 lsl 4;
	R1 = R1 lsl 4;
	R1 = R1 lsl 2;
	[R_ExtMem_High] = R1;
			
	pop R1, R2 from [SP];
	retf;
	.endp
.comment @
_USER_A1800_SetStartAddr:
	R2 = SP + 3;
	R1 = [R2++];
	R2 = [R2];

F_USER_A1800_SetStartAddr:
	[R_ExtMem_Low] = R1;
	[R_ExtMem_High] = R2;
	retf;
@
//****************************************************************
// Function    : F_USER_A1800_SetStartAddr_Con
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
_USER_A1800_SetStartAddr_Con:	.proc
	R1 = SP + 3;
	R1 = [R1];
F_USER_A1800_SetStartAddr_Con:
	push R1, R2 to [SP];
	R1 += T_SACM_A1800_SpeechTable;
	R1 = [R1];
	R2 = [R1++];
	[R_ExtMem_Low_Con] = R2;
	R1 = [R1];
	R1 = R1 lsl 4;
	R1 = R1 lsl 4;
	R1 = R1 lsl 2;
	[R_ExtMem_High_Con] = R1;

	pop R1, R2 from [SP];
	retf;
	.endp

//****************************************************************
// Function    : F_SACM_A1800_GetStartAddr_Con
// Description : 
// Destory     : None
// Parameter   : 
// Return      : None
// Note        : None
//****************************************************************
F_SACM_A1800_GetStartAddr_Con:	.proc
	R1 = [R_ExtMem_Low_Con];
	R2 = [R_ExtMem_High_Con];
	[R_ExtMem_Low] = R1;
	[R_ExtMem_High] = R2;
	retf;
	.endp

//****************************************************************
// Function    : F_USER_A1800_GetData
// Description : Get speech data from internal or external memory
//               and fill these data to buffer of library.
// Destory     : None
// Parameter   : R1: decode buffer address of library
//               R2: data length
// Return      : None
// Note        : None
//****************************************************************
F_USER_A1800_GetData:	.proc
	push R1, R5 to [SP];
	R3 = [R_ExtMem_Low];
	R4 = [R_ExtMem_High];

?L_Get_Loop:
	cmp R2, 0;
	jz ?L_End;
	SR &= (~0xFC00);
	SR |= R4;
	R5 = D:[R3++];
	[R1++] = R5;
	R2 -= 1;
	cmp R3, 0;
	jnz ?L_Get_Loop;
	R4 += 0x0400;
	[R_ExtMem_High] = R4;
	jmp ?L_Get_Loop;

?L_End:
	[R_ExtMem_Low] = R3; 
	 
	pop R1, R5 from [SP];
	retf;
	.endp

.comment @
F_USER_A1800_GetData:	.proc
	R3 = [R_ExtMem_Low];
	R4 = [R_ExtMem_High];
	call F_SPI_ReadNWords;
	R3 += R2 lsl 1;
	R4 += 0, carry;
	[R_ExtMem_Low] = R3;
	[R_ExtMem_High] = R4;
	retf;
	.endp
@

.comment @
F_USER_A1800_GetData:	.proc
	R3 = [R_ExtMem_Low];
	R4 = [R_ExtMem_High];
	call F_SIO_ReadNWords;
	[R_ExtMem_Low] = R3;
	[R_ExtMem_High] = R4;
	retf;
	.endp
@
