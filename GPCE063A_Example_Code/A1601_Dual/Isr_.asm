//****************************************************************
// Function: ISR Service routine Area V1.0                    
// By Arthur: Shieh
//
// Plateform: SPCE061A, unSP IDE 1.642, Windows 2000
// Date 12/04/2002
//
// 	Hook user's interrupt here                            
// 	_FIQ:	TMA,TMB,PWM 					// Fast interrupt entry
//  _IRQ0:	PWM								// interrupt entry
//  _IRQ1:	TMA								// interrupt entry
//  _IRQ2:	TMB								// interrupt entry
//  _IRQ3:	EXT1,EXT2,Key			    	// interrupt entry
//  _IRQ4:	1KHz,2KHz 4KHz					// interrupt entry
//  _IRQ5:	2Hz, 4Hz        				// interrupt entry
//  _IRQ6:	TMB1,TMB2						// interrupt entry     
//  _IRQ7:	UART							// interrupt entry
//  _Break: Software interrupt A1601_CH1            // interrupt entry
//
// Note:
// 1. Interrupts must be declared in TEXT area.
// 2. INT Priority, FIQ > IRQ > Break; 
//    For IRQs, IRQ1>IRQ2>..>IRQ7, in case that all IRQ take place 
//    at the same time
// 3. For FIQ,IRQ1~IRQ7, user needs to clear P_INT_Clear before 
//    exiting interrupt routine
// 4. ForR_InterruprStatus SPCE 500A, R_InterruprStatus is used to 
//    keep track of Interrupt setting status. User needs to update 
//    the setting to the variable by every time when setting a new 
//    INT sorces. Please check out SPCE.asm for R_InterruprStatus 
//    declaration.
//****************************************************************
.include GPCE.inc // by arthur
.include A1601.inc
.include A1601_CH2.inc

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

.text

//..............................................................................
//_FIQ: .proc

_FIQ:
	push R1,R5 to [SP];

	R1 = C_FIQ_TMA;
	test R1,[P_INT_Ctrl];
	jne	L_FIQ_TimerA;			// Timer A FIQ entrence 
	R1 = C_FIQ_TMB;
	test R1,[P_INT_Ctrl];
	jne L_FIQ_TimerB;			// Timer B FIQ entrence	

L_FIQ_TimerA:
	//------------------------------------------------------------------		
	// hook Timer A FIQ subroutine here and define it to be external
	call F_ISR_Service_SACM_A1601;
	call F_ISR_Service_SACM_A1601_CH2;
	// -------------------------------------------------------------
	// User interrupt routine must be placed before this line.
	// -------------------------------------------------------------

	R1 = C_FIQ_TMA;
	[P_INT_Clear] = R1;
	pop R1, R5 from [SP];
	reti;
        
L_FIQ_TimerB:
    //------------------------------------------------------------------
    // hook Timer B FIQ subroutine here and define it to be external
    //------------------------------------------------------------------
	R1 = C_FIQ_TMB;
	[P_INT_Clear] = R1;
	pop R1, R5 from [SP];
	reti;

//.................
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

//..............................................................................	