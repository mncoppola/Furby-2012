//==========================================================================
// File Name   : ISR.asm
// Description : Interrupt Service Routine
// Written by  : Ray Cheng
// Last modified date:
//              2005/12/26
// Note: 
// 1. Interrupts must be declared in TEXT area.
// 2. For FIQ, IRQ1 ~ IRQ7, user needs to clear P_INT_Clear before 
//    exiting interrupt routine
// 3. 
// 	_FIQ:	FIQ								// Fast interrupt entry
//  _IRQ0:	TimerA							// interrupt entry
//  _IRQ1:	TimerB							// interrupt entry
//  _IRQ2:	TimerC							// interrupt entry
//  _IRQ3:	UART, SPI, SIO					// interrupt entry
//  _IRQ4:	SPU								// interrupt entry
//  _IRQ5:	KEY, EXT1, EXT2					// interrupt entry
//  _IRQ6:	512Hz, 2KHz, 4KHz				// interrupt entry     
//  _IRQ7:	2Hz, 16Hz, 64Hz					// interrupt entry
//  _Break: Software interrupt              // interrupt entry
//==========================================================================
//**************************************************************************
// Header File Included Area
//**************************************************************************
.include GPCE063.inc
.include A1800.inc

//**************************************************************************
// Contant Defintion Area
//**************************************************************************
.define Foreground		0
.define Background		1
.define ServiceType		Foreground
//.define ServiceType		Background

//**************************************************************************
// Variable Publication Area
//**************************************************************************

//**************************************************************************
// Function Call Publication Area
//**************************************************************************
.public _BREAK
.public _FIQ
.public _IRQ0
.public _IRQ1
.public _IRQ2
.public _IRQ3
.public _IRQ4
.public _IRQ5
.public _IRQ6
.public _IRQ7

//**************************************************************************
// External Function Declaration
//**************************************************************************

//**************************************************************************
// RAM Definition Area
//**************************************************************************

//**************************************************************************
// CODE Definition Area
//**************************************************************************
.text
_FIQ:
	push R1, R5 to [SP];

	R1 = C_FIQ_TMA;
	test R1,[P_INT_Ctrl];
	jne	L_FIQ_TimerA;			// Timer A FIQ entrence 
	R1 = C_FIQ_TMB;
	test R1,[P_INT_Ctrl];
	jne L_FIQ_TimerB;			// Timer B FIQ entrence	

L_FIQ_PWM:	// PWM FIQ entrence
	//------------------------------------------------------------------
	// hook PWM FIQ subroutine here and define it to be external
	//------------------------------------------------------------------
	R1 = C_FIQ_PWM;
	[P_INT_Clear] = R1;
	pop R1,R5 from [SP];
	reti;

L_FIQ_TimerA:
	//------------------------------------------------------------------
	// hook Timer A FIQ subroutine here and define it to be external
	// and returns as a flag to tell required process data or not
	call F_ISR_Service_SACM_A1800;

// For Background Play
.if ServiceType == Background
	test R1, 0x0001;
	jnz ?L_BackgroundService;
	R2 = C_FIQ_TMA;
	[P_INT_Clear] = R2;		// clear interrupt flag
	pop R1, R5 from [SP];
	reti;					// jump to L_ForBackgroundUsage

?L_BackgroundService:
	R2 = offset L_ForBackgroundUsage
	push R2	to [SP];		// push PC
	push SR	to [SP];		// push CS
	R2 = C_FIQ_TMA;
	[P_INT_Clear] = R2;		// clear interrupt flag
	reti;					// jump to L_ForBackgroundUsage

L_ForBackgroundUsage:
	////////////////////////////////////////////////////////////
	call F_SACM_A1800_ServiceLoop;	// SACM Service Loop
	////////////////////////////////////////////////////////////
	pop R1, R5 from [SP];
	reti;
.endif

.if ServiceType == Foreground
L_ForForegroundUsage:
	R2 = C_FIQ_TMA;
	[P_INT_Clear] = R2;		// clear interrupt flag
	pop R1, R5 from [SP];
	reti;
.endif

L_FIQ_TimerB:
    //------------------------------------------------------------------
    // hook Timer B FIQ subroutine here and define it to be external
    //------------------------------------------------------------------
	R1 = C_FIQ_TMB;
	[P_INT_Clear] = R1;
    pop R1, R5 from [sp];
    reti;


//****************************************************************
_BREAK:        
    push R1, R5 to [SP];

	pop R1, R5 from [SP];
	reti; 
        
_IRQ0:        
    push R1, R5 to [SP];

	pop R1, R5 from [SP];
	reti; 
        
_IRQ1:        
    push R1, R5 to [SP];

	pop R1, R5 from [SP];
	reti;  
        
_IRQ2:        
    push R1, R5 to [SP];

	pop R1, R5 from [SP];
	reti;         
        
_IRQ3:        
    push R1, R5 to [SP];

	pop R1, R5 from [SP];
	reti;         
        
_IRQ4:        
    push R1, R5 to [SP];

	pop R1, R5 from [SP];
	reti;  
        
_IRQ5:        
    push R1, R5 to [SP];

	pop R1, R5 from [SP];
	reti;         
        
_IRQ6:        
    push R1, R5 to [SP];

	pop R1, R5 from [SP];
	reti;         
        
_IRQ7:        
    push R1, R5 to [SP];

	pop R1, R5 from [SP];
	reti;
