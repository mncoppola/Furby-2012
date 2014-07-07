//==========================================================================
// File Name   : SFlash_SSRAM_CE.asm
// Description : Serial Interface for Serial SRAM(SPRS256/SPRS512) or Serial Flash(SPR512/SPR1024/SPR4096)
// Written by  : Ray Cheng
// Last modified date:
//              2005/12/26
// Note: 
//      1. Serial Flash(SPR512/SPR1024/SPR4096) : 24-bit address mode
//      2. Serial SRAM(SPRS256/SPRS512) : 16-bit address mode
//      3. SCK --> IOB0
//         SDA --> IOB1
//==========================================================================
//**************************************************************************
// Header File Included Area
//**************************************************************************
.include GPCE.inc;

//**************************************************************************
// Contant Defintion Area
//**************************************************************************
.define SSRAM						1
.define SFLASH						2

.define SPR512						1
.define SPR1024						2
.define SPR4096						3

.define MEMORY_TYPE				SSRAM
//.define MEMORY_TYPE				SFLASH

.if MEMORY_TYPE == SFLASH
//.define FLASH_TYPE				SPR512
.define FLASH_TYPE					SPR1024
//.define FLASH_TYPE				SPR4096

.define C_SIO_SECTOR_ERASE_COMMAND	0x80
.define C_SIO_MASS_ERASE_COMMAND	0xC0

.define	C_Delay_60uS				60
.define	C_Delay_70uS				70
.define	C_Delay_80uS				80
.define	C_Delay_90uS				90
.define	C_Delay_100uS				100
.define	C_Delay_120uS				120

.define	C_Delay_10mS				10
.define	C_Delay_11mS				11
.define	C_Delay_12mS				12
.define	C_Delay_13mS				13
.define	C_Delay_14mS				14
.define	C_Delay_15mS				15
.define	C_Delay_16mS				16
.define	C_Delay_17mS				17
.define	C_Delay_18mS				18
.define	C_Delay_20mS				20
.define	C_Delay_26mS				26
.define C_Delay_70mS				70
.define C_Delay_160mS				160
.endif

//Using IOB as SPR512/1024/4096 SCK/SDA line
.define	P_SPR_Data					P_IOB_Data
.define	P_SPR_Buffer				P_IOB_Buffer
.define	P_SPR_Dir					P_IOB_Dir
.define	P_SPR_Attrib				P_IOB_Attrib

.define B_SIO_SCK					0x0001		// IOB[0] -> SCK
.define B_SIO_SDA					0x0002		// IOB[1] -> SDA

.define C_SIO_WRITE_MODE			0x00C0
.define C_SIO_READ_MODE				0x0080

.define C_SIO_CLK_CPUCLK_Div_16		0x0000
.define C_SIO_CLK_CPUCLK_Div_4		0x0008
.define C_SIO_CLK_CPUCLK_Div_8		0x0010
.define C_SIO_CLK_CPUCLK_Div_32		0x0018

.define C_SIO_ADDR_MODE_16_Bit		0x0000
.define C_SIO_ADDR_MODE_8_Bit		0x0002
.define C_SIO_ADDR_MODE_24_Bit		0x0003


.if BODY_TYPE == GPCE500A
	.if MEMORY_TYPE == SFLASH
		.define C_SIOCLOCK		C_SIO_CLK_CPUCLK_Div_8 + C_SIO_ADDR_MODE_24_Bit		// CPUCLOCK/8	for 24M 
	.else
		.define C_SIOCLOCK		C_SIO_CLK_CPUCLK_Div_8 + C_SIO_ADDR_MODE_16_Bit		// CPUCLOCK/8	for 24M 
	.endif
.endif

.if BODY_TYPE == GPCE061A
	.if MEMORY_TYPE == SFLASH
		.define C_SIOCLOCK		C_SIO_CLK_CPUCLK_Div_32 + C_SIO_ADDR_MODE_24_Bit	// CPUCLOCK/32	for 49M
	.else
		.define C_SIOCLOCK		C_SIO_CLK_CPUCLK_Div_32 + C_SIO_ADDR_MODE_16_Bit	// CPUCLOCK/32	for 49M
	.endif
.endif

//**************************************************************************
// Variable Publication Area
//**************************************************************************


//**************************************************************************
// Function Call Publication Area
//**************************************************************************
.public	 _SIO_Initial
.public	F_SIO_Initial
.public  _SIO_SendAByte
.public	F_SIO_SendAByte
.public  _SIO_SendAWord
.public	F_SIO_SendAWord
.public  _SIO_ReadAByte
.public	F_SIO_ReadAByte
.public  _SIO_ReadAWord
.public	F_SIO_ReadAWord
.public  _SIO_ReadNWords
.public F_SIO_ReadNWords
.public  _SIO_SendNWords
.public F_SIO_SendNWords

.if MEMORY_TYPE == SFLASH
.public  _SPR_SIO_MassErase
.public	F_SPR_SIO_MassErase
.public  _SPR_SIO_PageErase
.public	F_SPR_SIO_PageErase
.endif

//**************************************************************************
// External Function Declaration
//**************************************************************************


//**************************************************************************
// RAM Definition Area
//**************************************************************************


//**************************************************************************
// CODE Definition Area
//**************************************************************************
.CODE
//****************************************************************
// Function    : F_SIO_Iintial
// Description : Initialize SIO interface
// Destory     : R1
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
_SIO_Initial:	.proc
F_SIO_Initial:
	R1 = [P_SPR_Dir];
	R1 |= B_SIO_SCK;
	R1 &= ~B_SIO_SDA;
	[P_SPR_Dir] = R1;

	R1 = [P_SPR_Attrib];
	R1 |= B_SIO_SCK + B_SIO_SDA;
	[P_SPR_Attrib] = R1;

	R1 = [P_SPR_Data];
	R1 &= ~(B_SIO_SCK + B_SIO_SDA);
	[P_SPR_Data] = R1;

	retf;
	.endp

//****************************************************************
// Function    : F_SIO_ReadAByte
// Description : Read one byte data from serial memory
// Destory     : R1, R2
// Parameter   : R1 : address low word
//               R2 : address high word
// Return      : R1 : 8-bit SIO data from serial memory, low byte available
// Note        : None
//****************************************************************
_SIO_ReadAByte: .proc
 	R2 = SP + 3;
 	R1 = [R2++];
 	R2 = [R2];
F_SIO_ReadAByte:
	push R2 to [SP];
//	R1--input FLASH low,mid address
//	R2--input FLASH hi address
	[P_SIO_Addr_Low] = R1;		// input FLASH low address
	R1 = R1 lsr 4;
	R1 = R1 lsr 4;
	[P_SIO_Addr_Mid] = R1;		// input FLASH mid address
	[P_SIO_Addr_High] = R2;		// input FLASH hi address
//Set SIO Control Port
	R1 = C_SIO_READ_MODE + C_SIOCLOCK;		//Set SIO as read
	[P_SIO_Ctrl] = R1;			// clk=CPUclk/4, 16 bit address  ;read
//Read SIO data
	[P_SIO_Start] = R1;			// enable read mode
	R2 = [P_SIO_Data];			// Clear FLASH buffer
L_WaitSIOReadReady1:
	R1 = [P_SIO_Start];
	test R1, 0x0080
	jne L_WaitSIOReadReady1
	R1 = [P_SIO_Data];			//Read exact Data
L_WaitSIOReadReady2:			//Wait read stop
	R2 = [P_SIO_Start];
	test R2, 0x0080
	jne L_WaitSIOReadReady2
	[P_SIO_Stop] = R2;			//disable read mode
	pop R2 from [SP];
	retf;
	.endp

//****************************************************************
// Function    : F_SIO_ReadAWord
// Description : Read one word data from serial memory
// Destory     : R1, R2, R3, R4
// Parameter   : R1 : address low word
//               R2 : address high word
// Return      : R1 : 16-bit SIO data from serial memory
// Note        : None
//****************************************************************
_SIO_ReadAWord: .proc
	R2 = SP + 3;
	R1 = [R2++];
	R2 = [R2];
F_SIO_ReadAWord:
	push R2, R4 to [SP];
//	R1--input FLASH low,mid address
//	R2--input FLASH hi address
	R3 = 0x00FF;		
	[P_SIO_Addr_Low] = R1;		// input FLASH low address
	R1 = R1 lsr 4;
	R1 = R1 lsr 4;
	[P_SIO_Addr_Mid] = R1;		// input FLASH mid address
	[P_SIO_Addr_High] = R2;		// input FLASH hi address
//Set SIO Control Port
	R1 = C_SIO_READ_MODE + C_SIOCLOCK;		//Set SIO as read
	[P_SIO_Ctrl] = R1;			// clk=CPUclk/4, 16 bit address  ;read
//Read SIO data
	[P_SIO_Start] = R1;           // enable read mode
	R2 = [P_SIO_Data];            // Clear FLASH buffer
L_WaitSIOReadReadyLB1:
	R1 = [P_SIO_Start];
	test R1, 0x0080
	jne L_WaitSIOReadReadyLB1;
	R1 = R3 & [P_SIO_Data];			// Read exact Low Byte
L_WaitSIOReadReadyLB2:				//Wait read stop
	R2 = [P_SIO_Start];
	test R2, 0x0080
	jne L_WaitSIOReadReadyLB2;
	R4 = R3 & [P_SIO_Data];          // Read exact High Byte
L_WaitSIOReadReadyHB1:               // Wait read stop
	R2 = [P_SIO_Start];
	test R2, 0x0080
	jne L_WaitSIOReadReadyHB1;
	[P_SIO_Stop] = R2;             // disable read mode
	R4 = R4 lsl 4;                 //shift left 8
	R4 = R4 lsl 4;
	R1 |= R4;        				 //return data
	pop R2, R4 from [SP];
	retf;
	.endp

//****************************************************************
// Function    : F_SIO_SendAByte
// Description : Send one byte data to serial memory
// Destory     : R1, R2, R3
// Parameter   : R1 : external memory address low word
//               R2 : external memory address high word
//               R3 : one byte data will be sent to serial memory
// Return      : None
// Note        : None
//****************************************************************
_SIO_SendAByte: .proc
	R3 = SP + 3;
	R1 = [R3++];
	R2 = [R3++];
	R3 = [R3];
F_SIO_SendAByte:
	push R1, R3 to [SP];
//	R1 -- input FLASH low, middle address
//	R2 -- input FLASH high address
//	R3 -- data
	[P_SIO_Addr_Low] = R1;		// input FLASH low address
	R1 = R1 lsr 4;				// right shift 8
	R1 = R1 lsr 4;
	[P_SIO_Addr_Mid] = R1;		// input FLASH mid address
	[P_SIO_Addr_High] = R2;		// input FLASH hi address
//Set SIO Control Port
	R1 = C_SIO_WRITE_MODE + C_SIOCLOCK;
	[P_SIO_Ctrl] = R1;
//Send SIO Data
	[P_SIO_Start] = R1;

	[P_SIO_Data] = R3;			// state to transmit data
L_WaitSIOSendReady:
	R1 = [P_SIO_Start];
	test R1, 0x0080;
	jne	L_WaitSIOSendReady;
	[P_SIO_Stop] = R1;			// disable write mode
.if MEMORY_TYPE == SFLASH
	.if FLASH_TYPE == SPR1024
		R1 = C_Delay_120uS;			// The program time of SPR1024 is 120us
	.else
		R1 = C_Delay_60uS;			// The program time of SPR512 and SPR4096 are 60us
	.endif
	call F_Delay_1us;
.endif
	pop R1, R3 from [SP];
	retf;
	.endp

//****************************************************************
// Function    : F_SIO_SendAWord
// Description : Send one word data to serial memory
// Destory     : R1, R2, R3
// Parameter   : R1 : external memory address low word
//               R2 : external memory address high word
//               R3 : one word data will be sent to serial memory
// Return      : None
// Note        : None
//****************************************************************
_SIO_SendAWord: .proc
	R3 = SP + 3;
	R1 = [R3++];
	R2 = [R3++];
	R3 = [R3];
F_SIO_SendAWord:
	push R1, R3 to [SP];
	call F_SIO_SendAByte;
	R1 += 1;
	R2 += 0, carry;
	R3 = R3 lsr 4;
	R3 = R3 lsr 4;
	call F_SIO_SendAByte;
	pop R1, R3 from [SP];
	retf;
	.endp


//****************************************************************
// Function    : F_SIO_ReadNWords
// Description : Get N words from external memory to buffer
// Destory     : R1, R2, R3, R4
// Parameter   : R1 : buffer address
//               R2 : data length
//               R3 : external memory address low word
//               R4 : external memory address high word
// Return      : None
// Note        : None
//****************************************************************
_SIO_ReadNWords:      .proc
	R4 = SP + 3;
	R1 = [R4++];					// buffer address
	R2 = [R4++];					// data length
	R3 = [R4++];					// external memory address low byte
	R4 = [R4++];					// external memory address high byte
	
F_SIO_ReadNWords:
	push R1, R4 to [SP];
//	R3--input SRAM low,mid address
//	R4--input SRAM hi address
	[P_SIO_Addr_Low] = R3;			// SIO low address
	R3 = R3 lsr 4;
	R3 = R3 lsr 4;
	[P_SIO_Addr_Mid] = R3;			// SIO middle address	
	[P_SIO_Addr_High] = R4;			// SIO high address

//Set SIO Control Port
	R3 = C_SIO_READ_MODE + C_SIOCLOCK;		// set SIO as read mode
	[P_SIO_Ctrl] = R3;				// set SIO control register
//Read SIO data
	[P_SIO_Start] = R3;				// SIO start signal

	R4 = [P_SIO_Data];				// clear RAM buffer
?L_GetNWordLoop:
?L_WaitSIOReadReadyLowByte:
	R3 = [P_SIO_Start];
	test R3, 0x0080
	jne ?L_WaitSIOReadReadyLowByte;	
	R3 = [P_SIO_Data];				// read Low Byte
?L_WaitSIOReadReadyHighByte:
	R4 = [P_SIO_Start];
	test R4, 0x0080
	jne ?L_WaitSIOReadReadyHighByte;
	R4 = [P_SIO_Data];          	// read High Byte
	R4 = R4 lsl 4;
	R4 = R4 lsl 4;
	R3 |= R4;
	[R1++] = R3;					// write one word data to library buffer
	R2 -= 1;
	jnz ?L_GetNWordLoop;

?L_WaitSIOReadReadyDummy:			// wait read stop
	R3 = [P_SIO_Start];
	test R3, 0x0080
	jne ?L_WaitSIOReadReadyDummy;
	[P_SIO_Stop] = R3;				// SIO stop signal
	
?L_ReadNWords_End:
	pop R1, R4 from [SP];
	R3 += R2 lsl 1;
	R4 += 0, carry;
	retf;
	.endp

//****************************************************************
// Function    : F_SIO_SendNWords
// Description : Send N words data to serial memory
// Destory     : R1, R2, R3, R4
// Parameter   : R1 : buffer address
//               R2 : data length
//               R3 : external memory address low word
//               R4 : external memory address high word
// Return      : None
// Note        : None
//****************************************************************
_SIO_SendNWords:      .proc
    R4 = SP + 3;
    R1 = [R4++];					// buffer address
    R2 = [R4++];					// data length
    R3 = [R4++];					// external memory address low byte
    R4 = [R4++];					// external memory address high byte
    
F_SIO_SendNWords:
.if MEMORY_TYPE == SSRAM
	push R1, R4 to [SP];
//	R3--input SRAM low,mid address
//	R4--input SRAM hi address
	[P_SIO_Addr_Low] = R3;			// input SRAM low address
	R3 = R3 lsr 4;
	R3 = R3 lsr 4;
	[P_SIO_Addr_Mid] = R3;			// input SRAM mid address	
	[P_SIO_Addr_High] = R4;			// input FLASH hi address
	
//Set SIO Control Port
	R3 = C_SIO_WRITE_MODE + C_SIOCLOCK;		//Set SIO as read
	[P_SIO_Ctrl] = R3;				// clk=CPUclk/4, 16 bit address  ;read
//Read SIO data
	[P_SIO_Start] = R3;				// SIO start signal

?L_SendNWordsLoop:
	R3 = [R1++];
	[P_SIO_Data] = R3;						// read SIO data
?L_WaitSIOSendReadyLowByte:
	R4 = [P_SIO_Start];
	test R4, 0x0080;
	jne	?L_WaitSIOSendReadyLowByte;
	R3 = R3 lsr 4;
	R3 = R3 lsr 4;
	[P_SIO_Data] = R3;
?L_WaitSIOSendReadyHighByte:
	R4 = [P_SIO_Start];
	test R4, 0x0080;
	jne	?L_WaitSIOSendReadyHighByte;
	R2 -= 1;
	jnz ?L_SendNWordsLoop;

?L_WaitSIOSendReadyDummy:
	R4 = [P_SIO_Start];
	test R4, 0x0080;
	jne	?L_WaitSIOSendReadyDummy;
	[P_SIO_Stop] = R4;			// disable write mode	

?L_SendNWords_End:
	pop R1, R4 from [SP];
    R3 += R2 lsl 1;
    R4 += 0, carry;
	retf;
	.endp
.else	// MEMORY_TYPE == SFLASH
	push R1, R5 to [SP];
	push R1, R4 to [SP];
	pop R4, R5 from [SP];
	pop R1, R2 from [SP];
?L_SendNWordsLoop_Flash:
	R3 = [R4++];
	call F_SIO_SendAByte;
	R1 += 1;
	R2 += 0;
	R3 = R3 lsr 4;
	R3 = R3 lsr 4;
	call F_SIO_SendAByte;
	R1 += 1;
	R2 += 0;
	R5 -= 1;
	jnz ?L_SendNWordsLoop_Flash;

?L_SendNWords_Flash_End:
	pop R1, R5 from [SP];
    R3 += R2 lsl 1;
    R4 += 0, carry;
	retf;
	.endp
.endif

.if MEMORY_TYPE == SFLASH
//****************************************************************
// Function    : F_SPR_SIO_MassErase
// Description : Mass erase Serial Flash
// Destory     : R1, R2
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
_SPR_SIO_MassErase: .proc
F_SPR_SIO_MassErase:
	push R1, R2 to [SP];
	R2 = 0x00;
	[P_SIO_Addr_Low] = R2;		// input SFlash low address
	R2 = 0x00;
	[P_SIO_Addr_Mid] = R2;		// input SFlash mid address
	R2 = C_SIO_MASS_ERASE_COMMAND;
	[P_SIO_Addr_High] = R2;		// input SFlash mid address
	R1 = C_SIO_WRITE_MODE + C_SIOCLOCK;
	[P_SIO_Ctrl] = R1;			// clk=CPUclk/8, 16 bit address  ;write
	[P_SIO_Start] = R1;			// enable write mode
	R1 = 0;						// A7~A0 = 0
	[P_SIO_Data] = R1;			// state to transmit data

?L_SPR_WaitSIOSendReadyMass:
	R1 = [P_SIO_Start];
	test R1, 0x0080;
	jne ?L_SPR_WaitSIOSendReadyMass;
	[P_SIO_Stop] = R1;			//disable write mode
.if FLASH_TYPE == SPR512
	R1 = C_Mass_Erase_160mS;	// SPR512 mass erase time : 160 ms at least
.else
	.if FLASH_TYPE == SPR1024		
		R1 = C_Delay_20mS;		// SPR1024 mass erase time : 15 ms at least
	.else
		R1 = C_Delay_70mS;		// SPR4096 mass erase time : 70 ms at least
	.endif
.endif
	call F_Delay_1ms;
	pop R1, R2 from [SP];
	retf;
	.endp;

//****************************************************************
// Function    : F_SPR_SIO_PageErase
// Description : Page erase Serial Flash
// Destory     : R1
// Parameter   : R1 : page index
// Return      : None
// Note        : None
//****************************************************************
_SPR_SIO_PageErase: .proc
	R1 = SP + 3;
	R1 = [R1];
F_SPR_SIO_PageErase:
	R2 = 0;
	[P_SIO_Addr_Low] = R2;
	
.if FLASH_TYPE == SPR512
	R1 = R1 lsl 1;					// the page size of SPR512 is 512 bytes
.else
	.if FLASH_TYPE == SPR1024
		R1 = R1 lsl 2;              // the page size of SPR1024 is 1K bytes
	.else
		R1 = R1 lsl 3;				// the page size of SPR4096 is 2K bytes
	.endif
.endif

	R1 = R1 & 0x01FF;
	[P_SIO_Addr_Mid] = R1;          // input SFlash low address ;for A15 and A10
	R1 = R1 lsr 4;
	R1 = R1 lsr 4;
	R1 = R1 | C_SIO_SECTOR_ERASE_COMMAND;
	[P_SIO_Addr_High] = R1;          // input SFlash mid address ;for A16
	R1 = C_SIO_WRITE_MODE + C_SIOCLOCK;
	[P_SIO_Ctrl] = R1;              // clk=CPUclk/8, 16 bit address  ;write
	[P_SIO_Start] = R1;             // enable write mode
	R1 = 0;                         // A7~A0 = 0
	[P_SIO_Data] = R1;              // state to transmit data

L_SPR_WaitSIOSendReadyPage:
	R1=[P_SIO_Start];
	test R1,0x0080
	jne L_SPR_WaitSIOSendReadyPage
	[P_SIO_Stop]=R1;               //disable write mode
.if FLASH_TYPE == SPR512
	R1 = C_Page_Erase_12mS;			// SPR512 page erase time :  10 ms at least
.else 
	.if FLASH_TYPE == SPR1024
		R1 = C_Delay_20mS;			// SPR1024 page erase time :  13.5 ms at least
	.else
		R1 = C_Delay_26mS;			// SPR4096 page erase time :  24 ms at least
	.endif
.endif
	call F_Delay_1ms;
	retf;
	.endp;

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
// for CPU clock = 49.152MHz, 1us = 49.152 cycles ~= 50cycles
?L_Delay_Loop:
	R2 = 5;
?L_1us_Loop:
	nop;					// 4 cycles
	R2 -= 1;				// 2 cycles
	jnz	?L_1us_Loop;		// 4 cycles
	R1 -= 1;
	jnz ?L_Delay_Loop;
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
	R2 = 4915;						// for CPU clock = 49.152MHz, 1ms = 49152 cycles
?L_1ms_Loop:						// this loop is 10 cycles
	nop;							// 4 cycles
	R2-= 1;							// 2 cycles
	jnz ?L_1ms_Loop;				// 4 cycles
	R1 -= 1;
	jnz ?L_Delay_Loop;
	retf;
	.endp
.endif