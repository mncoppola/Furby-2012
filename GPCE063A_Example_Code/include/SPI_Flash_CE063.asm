//==========================================================================
// File Name   : SPI_Flash.asm
// Description : SPI initilaization and send/read data to/from SPI interface
// Programmer : Ray Cheng
// Last modified date:
// Note: 
//      1. IOB15:DO, IOB14:DI, IOB13:SCK, IOB8:CS
//      2. Flash Body: GPR25LXXX
//		
//==========================================================================
//**************************************************************************
// Header File Included Area
//**************************************************************************
.include GPCE063.inc;

//**************************************************************************
// Contant Defintion Area
//**************************************************************************
.define C_SPI_SI_Bit	0x8000
.define C_SPI_DO_Bit	0x4000
.define C_SPI_SCK_Bit	0x2000
.define C_SPI_CS_Bit	0x1000

.define C_SPI_CS_IO		12		//IOA[12] as SPI CS pin Software Control

//----------- Flash Operation Command Definition -------
.define C_SPI_Flash_Read_CMD		0x03
.define C_SPI_Flash_Sector_Erase	0xD8
.define C_SPI_Flash_Chip_Erase		0x60
.define C_SPI_Flash_Page_Program	0x02
.define C_SPI_Flash_Read_Status		0x05
.define C_SPI_Flash_Write_Status	0x01
.define C_SPI_Flash_Write_Enable	0x06
.define C_SPI_Flash_Write_Disable	0x04
.define C_SPI_Flash_Read_ID			0x9F
.define C_SPI_Flash_Fast_Read		0x0B
.define C_SPI_Flash_Power_Down		0xB9
.define C_SPI_Flash_Release_DP		0xAB
.define C_SPI_Flash_Enter_4K		0xA5
.define C_SPI_Flash_Exit_4K			0xB5
.define C_SPI_Flash_Read_ES			0xAB
.define C_SPI_Flash_Read_EMS		0x90
.define C_SPI_Flash_Parallel_Mode	0x55

//----------- Flash Status Port Definition ----------
.define C_Flash_Busy				0x01
.define C_Flash_WEL					0x02		// Write Enable Latch
.define C_Flash_BP0					0x04
.define C_Flash_BP1					0x08
.define C_Flash_BP2					0x10
.define C_Flash_BP3					0x20		
.define C_Flash_PEE					0x40		// Program Erase Error
.define C_Flash_SRWP				0x80		// Status Register Write Protect

//**************************************************************************
// Variable Publication Area
//**************************************************************************


//**************************************************************************
// Function Call Publication Area
//**************************************************************************
.public  _SPI_Initial
.public F_SPI_Initial
.public  _SPI_ReadAWord
.public F_SPI_ReadAWord
.public  _SPI_ReadNWords
.public F_SPI_ReadNWords
.public  _SPI_SendAWord
.public F_SPI_SendAWord
.public  _SPI_SendNWords
.public F_SPI_SendNWords
.public  _Flash_Write_Enable
.public F_Flash_Write_Enable
.public  _Flash_Write_Disable
.public F_Flash_Write_Disable
.public  _SPI_Read_Status_Register
.public F_SPI_Read_Status_Register
.public  _SPI_Enable_Write_Status_Register
.public F_SPI_Enable_Write_Status_Register
.public  _SPI_Write_Status_Register
.public F_SPI_Write_Status_Register
.public  _SPI_Flash_Sector_Erase
.public F_SPI_Flash_Sector_Erase
.public  _SPI_Flash_Chip_Erase
.public F_SPI_Flash_Chip_Erase
.public  _SPI_Read_Flash_ID
.public F_SPI_Read_Flash_ID

//**************************************************************************
// External Function Declaration
//**************************************************************************

//**************************************************************************
// External Table Declaration
//**************************************************************************

//**************************************************************************
// RAM Definition Area
//**************************************************************************
.RAM

//*****************************************************************************
// Table Definition Area
//*****************************************************************************
.TEXT

//**************************************************************************
// CODE Definition Area
//**************************************************************************
.CODE
//****************************************************************
// Function    : F_SPI_Initial
// Description : Initial SPI interface
// Destory     : R1
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
_SPI_Initial: .proc
F_SPI_Initial:
	push R1, R2 to [SP];

	R1 = [P_IOA_Dir];
	R1 &= ~C_SPI_SI_Bit;
	R1 |= C_SPI_DO_Bit | C_SPI_SCK_Bit | C_SPI_CS_Bit;
	[P_IOA_Dir] = R1;
	
	R1 = [P_IOA_Attrib];
	R1 |= C_SPI_DO_Bit | C_SPI_SI_Bit | C_SPI_SCK_Bit | C_SPI_CS_Bit;
	[P_IOA_Attrib] = R1;
	
	R1 = [P_IOA_Buffer];
	R1 &= ~(C_SPI_DO_Bit | C_SPI_SI_Bit | C_SPI_SCK_Bit );
	R1 |= C_SPI_CS_Bit;
	[P_IOA_Buffer] = R1;


	R1 = [P_IOB_Dir];			// IOB as Input Floating 
	R1 &= 0x0000;
	[P_IOB_Dir] = R1;
	R1 = [P_IOB_Attrib];
	R1 |= 0xFFFF;
	[P_IOB_Attrib] = R1;
	R1 = [P_IOB_Buffer];
	R1 &= 0x0000;
	[P_IOB_Buffer] = R1;
	
	R1 = [P_IO_Ctrl];
	R1 |= C_SPI_CS_Hardware;
	[P_IO_Ctrl] = R1;
	
	R1 = C_SPI_Reset;		// software reset SPI
	[P_SPI_Ctrl] = R1;

	R1 = C_SPI_Enable | C_MasterMode | C_SCKSEL_FPLL_Div_8;
	[P_SPI_Ctrl] = R1;
	
	R1 = C_SPI_TX_INT_Flag | C_SPI_TX_INT_DIS | C_SPI_TX_FIFO_Level_0;
	[P_SPI_TX_Status] = R1;
	
	R1 = C_SPI_RX_INT_Flag | C_SPI_RX_INT_DIS | C_SPI_RX_FIFO_Level_1;
	[P_SPI_RX_Status] = R1;
	
	R1 = [P_INT_Ctrl];
	[P_INT_Ctrl] = R1;
	R1 = 0x0000;
	[P_FIQ_Sel] = R1;
	
	pop R1, R2 from [SP];
	retf;
	.endp

//****************************************************************
// Function    : F_SPI_ReadAWord
// Description : Read a word data from flash
// Destory     : R1
// Parameter   : R1 = Address Low, R2 = Address High	
// Return      : R1 = one word of data read
// Note        : None
//****************************************************************
_SPI_ReadAWord:	.proc
	R2 = SP + 3;
	R1 = [R2++];
	R2 = [R2]; 
	
F_SPI_ReadAWord:
	push r2, r4 to [sp];
	clrb [P_IOA_Buffer], C_SPI_CS_IO;		// enable SPI Flash
	
	R4 = C_SPI_Flash_Read_CMD;
	[P_SPI_TX_Data] = R4;
	R2 &= 0xFF;					// Address High
	[P_SPI_TX_Data] = R2;
	R4 = R1 lsr 4;
	R4 = R4 lsr 4;				// Address Middle
	[P_SPI_TX_Data] = R4;
	R1 &= 0xFF;					// Address Low
	[P_SPI_TX_Data] = R1;
	
	R1 = 0x55;					// Read One Word Data dummy clock
	[P_SPI_TX_Data] = R1;
	[P_SPI_TX_Data] = R1;
	

?L_Check_TXIF:					// Wait untill command and address have been sent out
	R1 = [P_SPI_Misc];	
	test R1, C_SPI_Busy_Flag;
	jnz ?L_Check_TXIF;
	[P_SPI_Misc] = R1;
	

	R1 = [P_SPI_RX_Data];		// Clear dummy data in RX FIFO at Read Command transmitted   
	R2 = [P_SPI_RX_Data];		// Clear dummy data in RX FIFO at Address High transmitted
	R3 = [P_SPI_RX_Data];		// Clear dummy data in RX FIFO at Address Middle transmitted
	R4 = [P_SPI_RX_Data];		// Clear dummy data in RX FIFO at Address Low transmitted
	R2 = [P_SPI_RX_Data];		// Received Valid Data High from slave SPI device
	R1 = [P_SPI_RX_Data];		// Received Valid Data Low from slave SPI device
	R1 = R1 LSL 4;
	R1 = R1 LSL 4;
	R1 |= R2;					// Return one word data read from FLASH

	setb [P_IOA_Buffer], C_SPI_CS_IO;	// disable SPI Flash
	pop R2, R4 from [SP];
	retf;
	.endp

//****************************************************************
// Function    : F_SPI_ReadNWords
// Description : Get N words from external memory to buffer
// Destory     : R1
// Parameter   : R1 : buffer address
//               R2 : data length
//               R3 : external memory address low word
//               R4 : external memory address high word
// Return      : None
// Note        : None
//****************************************************************

_SPI_ReadNWords:      .proc
    R4 = SP + 3;
    R1 = [R4++];							// buffer address
    R2 = [R4++];							// data length
    R3 = [R4++];							// external memory address low byte
    R4 = [R4];							// external memory address high byte

F_SPI_ReadNWords:
	push R1, R5 to [SP];
	clrb [P_IOA_Buffer], C_SPI_CS_IO;		// enable SPI Flash
	
	R5 = C_SPI_Flash_Read_CMD;
	[P_SPI_TX_Data] = R5;
	R4 &= 0xFF;					// Address High
	[P_SPI_TX_Data] = R4;
	R4 = R3 lsr 4;
	R4 = R4 lsr 4;				// Address Middle
	[P_SPI_TX_Data] = R4;
	R3 &= 0xFF;					// Address Low
	[P_SPI_TX_Data] = R3;
	

?L_Check_TXIF:					// Wait untill command and address have been sent out
	R5 = [P_SPI_Misc];	
	test R5, C_SPI_Busy_Flag;
	jnz ?L_Check_TXIF;

	
	R4 = [P_SPI_RX_Data];		// Clear dummy data in RX FIFO at Read Command transmitted   
	R4 = [P_SPI_RX_Data];		// Clear dummy data in RX FIFO at Address High transmitted
	R4 = [P_SPI_RX_Data];		// Clear dummy data in RX FIFO at Address Middle transmitted
	R4 = [P_SPI_RX_Data];		// Clear dummy data in RX FIFO at Address Low transmitted

?L_GetNWordLoop:
	[P_SPI_TX_Data] = R3;		// Read One Word Data dummy clock
	[P_SPI_TX_Data] = R3;

?L_GetNWordLoop_Check_TXIF:		// Wait untill command and address have been sent out
	R5 = [P_SPI_Misc];	
	test R5, C_SPI_Busy_Flag;
	jnz ?L_GetNWordLoop_Check_TXIF;

	
	R3 = [P_SPI_RX_Data];		// low byte data
	R4 = [P_SPI_RX_Data];		// high byte data
	R4 = R4 lsl 4;
	R4 = R4 lsl 4;
	R4 |= R3;					// Return one word data read from FLASH
	[R1++] = R4;
	R2 -= 1;
	jnz ?L_GetNWordLoop;

	setb [P_IOA_Buffer], C_SPI_CS_IO;	// disable SPI Flash
	
?_Finish_Last:
	pop R1, R5 from [SP];

	retf;
.endp

//****************************************************************
// Function    : F_SPI_SendAWord
// Description : Write a word data to flash
// Destory     : R1
// Parameter   : R1 = Address Low, R2 = Address High, R3 = one word of data
// Return      : None
// Note        : None
//****************************************************************
_SPI_SendAWord:	.proc
	R3 = SP + 3;
	R1 = [R3++];
	R2 = [R3++];
	R3 = [R3];
	
F_SPI_SendAWord:
	push R1, R5 to [SP];
	
	call F_Flash_Write_Enable		// Flash must be written enable firstly before it is programmed or erased.

	clrb [P_IOA_Buffer], C_SPI_CS_IO;		// enable SPI Flash

	R4 = C_SPI_Flash_Page_Program;
	[P_SPI_TX_Data] = R4;
	R2 &= 0xFF;						// Address High
	[P_SPI_TX_Data] = R2;
	R4 = R1 lsr 4;
	R4 = R4 lsr 4;					// Address Middle
	[P_SPI_TX_Data] = R4;
	R1 &= 0xFF;						// Address Low
	[P_SPI_TX_Data] = R1;
	
	[P_SPI_TX_Data] = R3;			// Data Low Byte
	R3 = R3 lsr 4;
	R3 = R3 lsr 4;
	[P_SPI_TX_Data] = R3;			// Data High Byte
	

?L_Check_TXIF:
	R1 = [P_SPI_Misc];	
	test R1, C_SPI_Busy_Flag;
	jnz ?L_Check_TXIF;

	
	setb [P_IOA_Buffer], C_SPI_CS_IO;	// disable SPI Flash

	R1 = [P_SPI_RX_Data];			// Clear dummy data in RX FIFO 
	R2 = [P_SPI_RX_Data];			// Clear dummy data in RX FIFO 
	R3 = [P_SPI_RX_Data];			// Clear dummy data in RX FIFO 
	R4 = [P_SPI_RX_Data];			// Clear dummy data in RX FIFO 
	R1 = [P_SPI_RX_Data];			// Clear dummy data in RX FIFO 
	R1 = [P_SPI_RX_Data];			// Clear dummy data in RX FIFO 
	
?L_Check_Busy:						// Wait untill one word data has been written into flash successfully (about 3 to 12ms).
	call F_SPI_Read_Status_Register; // WatchDog overflow can escape from dead loop
	test R1, C_Flash_Busy;
	jnz ?L_Check_Busy;
	
	pop R1, R5 from [SP];
	retf;	
	.endp


//****************************************************************
// Function    : F_SPI_SendNWords
// Description : Send N words to external memory from internal buffer
// Destory     : None
// Parameter   : R1 : buffer address
//               R2 : data length
//               R3 : external memory address low word
//               R4 : external memory address high word
// Return      : None
// Note        : None
//****************************************************************
 _SPI_SendNWords:	.proc
	R4 = SP + 4;
	R1 = [R4++];
	R2 = [R4++];
	R3 = [R4++];
	R4 = [R4];
F_SPI_SendNWords:
	push R1, R5 to [SP];

?L_WriteData:
	
	call F_Flash_Write_Enable		// Flash must be written enable firstly before it is programmed or erased.

	clrb [P_IOA_Buffer], C_SPI_CS_IO;		// enable SPI Flash

	R5 = C_SPI_Flash_Page_Program;
	[P_SPI_TX_Data] = R5;
	[P_SPI_TX_Data] = R4;
	R5 = R3 lsr 4;
	R5 = R5 lsr 4;					// Address Middle
	[P_SPI_TX_Data] = R5;
	R5 = R3 & 0xFF;					// Address Low
	[P_SPI_TX_Data] = R5;
	

?L_Check_TXIF:
	R5 = [P_SPI_Misc];	
	test R5, C_SPI_Busy_Flag;
	jnz ?L_Check_TXIF;

	
	R5 = [P_SPI_RX_Data];			// Clear dummy data in RX FIFO 
	R5 = [P_SPI_RX_Data];			// Clear dummy data in RX FIFO 
	R5 = [P_SPI_RX_Data];			// Clear dummy data in RX FIFO 
	R5 = [P_SPI_RX_Data];			// Clear dummy data in RX FIFO 

?L_SendDataLoop:
	R5 = [R1++];
	[P_SPI_TX_Data] = R5;			// Data Low Byte
	R5 = R5 lsr 4;
	R5 = R5 lsr 4;
	[P_SPI_TX_Data] = R5;			// Data High Byte

?L_Check_TXIF_2:
	R5 = [P_SPI_Misc];	
	test R5, C_SPI_Busy_Flag;
	jnz ?L_Check_TXIF_2;

	R5 = [P_SPI_RX_Data];			// Clear dummy data in RX FIFO 
	R5 = [P_SPI_RX_Data];			// Clear dummy data in RX FIFO
	R2 -= 1;
	jz ?L_SendDataEnd;
	R3 += 2;
	test R3, 0x00FF;
	jnz ?L_SendDataLoop;
?L_JumpToNextPage:
	cmp R3, 0x0000;
	jne ?L_WriteCurrentPage;
	R4 += 1;
?L_WriteCurrentPage:
	setb [P_IOA_Buffer], C_SPI_CS_IO;	// disable SPI Flash
	push R1 to [SP];
?L_Check_Busy_1:					// Wait untill one word data has been written into flash successfully (about 3 to 12ms).
	call F_SPI_Read_Status_Register; // WatchDog overflow can escape from dead loop
	test R1, C_Flash_Busy;
	jnz ?L_Check_Busy_1;
	pop R1 from [SP];
	pc = ?L_WriteData;

?L_SendDataEnd:
	setb [P_IOA_Buffer], C_SPI_CS_IO;	// disable SPI Flash


?L_Check_Busy:						// Wait untill one word data has been written into flash successfully (about 3 to 12ms).
	call F_SPI_Read_Status_Register; // WatchDog overflow can escape from dead loop
	test R1, C_Flash_Busy;
	jnz ?L_Check_Busy;
	

	pop R1, R5 from [SP];
	retf;
	.endp

//****************************************************************
// Function    : F_Flash_Write_Enable
// Description : Enable flash to be written or erased
// Destory     : None
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
_Flash_Write_Enable:	.proc
F_Flash_Write_Enable:
	push r1 to [sp];

	clrb [P_IOA_Buffer], C_SPI_CS_IO;		// enable SPI Flash
	R1 = C_SPI_Flash_Write_Enable;
	[P_SPI_TX_Data] = R1;


?L_Check_TXIF:
	R1 = [P_SPI_Misc];		// Wait untill command has been transmitted.
	test R1, C_SPI_Busy_Flag;
	jnz ?L_Check_TXIF;


	nop;
	nop;
	nop;
	R1 = [P_SPI_RX_Data];		// Clear dummy data in RX FIFO
	
	setb [P_IOA_Buffer], C_SPI_CS_IO;	// disable SPI Flash
	pop r1 from [sp];
	retf;
	.endp

//****************************************************************
// Function    : F_Flash_Write_Disable
// Description : Disable flash to be written or erased
// Destory     : None
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
_Flash_Write_Disable:	.proc
F_Flash_Write_Disable:
	push r1 to [sp];
	
	clrb [P_IOA_Buffer], C_SPI_CS_IO;		// enable SPI Flash
	R1 = C_SPI_Flash_Write_Disable;
	[P_SPI_TX_Data] = R1;


?L_Check_TXIF:
	R1 = [P_SPI_Misc];		// Wait untill command has been transmitted.
	test R1, C_SPI_Busy_Flag;
	jnz ?L_Check_TXIF;

	
	R1 = [P_SPI_RX_Data];			// Clear dummy data in RX FIFO
	
	setb [P_IOA_Buffer], C_SPI_CS_IO;	// disable SPI Flash
	pop r1 from [sp];
	retf;
	.endp

//****************************************************************
// Function    : F_SPI_Read_Status_Register
// Description : Read status register in flash
// Destory     : None
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
_SPI_Read_Status_Register:	.proc
F_SPI_Read_Status_Register:

	clrb [P_IOA_Buffer], C_SPI_CS_IO;		// enable SPI Flash
	R1 = C_SPI_Flash_Read_Status;
	[P_SPI_TX_Data] = R1;
	
	R1 = 0x00;						// Read Status Reigster dummy clock
	[P_SPI_TX_Data] = R1;
		

?L_Check_TXIF:
	R1 = [P_SPI_Misc];		// Wait untill command has been transmitted.
	test R1, C_SPI_Busy_Flag;
	jnz ?L_Check_TXIF;



	R1 = [P_SPI_RX_Data];			// Received Dummy Data at Cmd transmitted
	R1 = [P_SPI_RX_Data];			// Received Status Register Data
	
	setb [P_IOA_Buffer], C_SPI_CS_IO;	// disable SPI Flash
	retf;
	.endp


//****************************************************************
// Function    : F_SPI_Enable_Write_Status_Register
// Description : Enable status register in flash to be written
// Destory     : None
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
_SPI_Enable_Write_Status_Register:	.proc
F_SPI_Enable_Write_Status_Register:
	push R1 to [SP];
	clrb [P_IOA_Buffer], C_SPI_CS_IO;		// enable SPI Flash
	R1 = C_SPI_Flash_Write_Status;
	[P_SPI_TX_Data] = R1;
	
?L_Check_TXIF:
	R1 = [P_SPI_Misc];		// Wait untill command has been transmitted.
	test R1, C_SPI_Busy_Flag;
	jnz ?L_Check_TXIF;


	R1 = [P_SPI_RX_Data];			// Clear Dummy Data in RX FIFO at Cmd transmitted 

	setb [P_IOA_Buffer], C_SPI_CS_IO;	// disable SPI Flash
	pop R1 from [SP];
	retf;
	.endp
	
//****************************************************************
// Function    : F_SPI_Write_Status_Register
// Description : Write data to status register in flash
// Destory     : None
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
_SPI_Write_Status_Register:	.proc
	R1 = SP + 3;
	R1 = [R1];
	
F_SPI_Write_Status_Register:
	push R1, R2 to [SP];
	clrb [P_IOA_Buffer], C_SPI_CS_IO;		// enable SPI Flash
	R2 = C_SPI_Flash_Write_Status;
	[P_SPI_TX_Data] = R2;
	[P_SPI_TX_Data] = R1;		// Write data to status register in flash
	

?L_Check_TXIF:
	R1 = [P_SPI_Misc];		// Wait untill command has been transmitted.
	test R1, C_SPI_Busy_Flag;
	jnz ?L_Check_TXIF;

	
	R1 = [P_SPI_RX_Data];		// Clear dummy data in RX FIFO
	R1 = [P_SPI_RX_Data];		// Clear dummy data in RX FIFO
	
	setb [P_IOA_Buffer], C_SPI_CS_IO;	// disable SPI Flash
	pop R1, R2 from [SP];
	retf;
	.endp

//****************************************************************
// Function    : F_SPI_Flash_Sector_Erase
// Description : Erase one sector of flash 
// Destory     : None
// Parameter   : R1 = Sector Address Low, R2 = Sector Address High
// Return      : None
// Note        : None
//****************************************************************
_SPI_Flash_Sector_Erase:	.proc

	R1 = SP + 3;
	R1 = [R1];
	
F_SPI_Flash_Sector_Erase:
	push R1, R3 to [SP];
	call F_Flash_Write_Enable;	// Enable sector erase command 
		
.if 0		// for GPR25L005, GPR25L010, GPR25L020, GPR25L040, GPR25L080
	R2 = SECTOR_SIZE;
	MR = R1 * R2;
	R1 = R3;
	R2 = R4;
.endif

.if 1		// for GPR25L160, GPR25L320, GPR25L640
	R2 = R1;
	R1 = 0x0000;
.endif

	clrb [P_IOA_Buffer], C_SPI_CS_IO;		// enable SPI Flash
	R3 = C_SPI_Flash_Sector_Erase;
	[P_SPI_TX_Data] = R3;
	[P_SPI_TX_Data] = R2;		// Sector index : Sector size = 64K bytes
	R3 = R1 lsr 4;			
	R3 = R3 lsr 4;
	[P_SPI_TX_Data] = R3;
	R1 &= 0x00FF;
	[P_SPI_TX_Data] = R1;


?L_Check_TXIF:
	R1 = [P_SPI_Misc];		// Wait untill command has been transmitted.
	test R1, C_SPI_Busy_Flag;
	jnz ?L_Check_TXIF;

	
	setb [P_IOA_Buffer], C_SPI_CS_IO;	// disable SPI Flash

	R1 = [P_SPI_RX_Data];		// Clear dummy data in RX FIFO
	R1 = [P_SPI_RX_Data];		// Clear dummy data in RX FIFO
	R1 = [P_SPI_RX_Data];		// Clear dummy data in RX FIFO
	R1 = [P_SPI_RX_Data];		// Clear dummy data in RX FIFO
	
?L_Check_Busy:					// Wait untill sector has been erased successfully (about 1 to 3 seconds)
	R1 = C_Watchdog_Clear;
    [P_Watchdog_Clear] = R1;
	call F_SPI_Read_Status_Register;
	test R1, C_Flash_Busy;
	jnz ?L_Check_Busy;
	
	pop R1, R3 from [SP];
	retf;
	.endp

//****************************************************************
// Function    : F_SPI_Flash_Chip_Erase
// Description : Erase hole chip of flash
// Destory     : None
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
_SPI_Flash_Chip_Erase:	.proc
F_SPI_Flash_Chip_Erase:
	push R1 to [SP];
	call F_Flash_Write_Enable;		// Enable chip erase command 
	
	clrb [P_IOA_Buffer], C_SPI_CS_IO;		// enable SPI Flash
	R1 = C_SPI_Flash_Chip_Erase;
	[P_SPI_TX_Data] = R1;


?L_Check_TXIF:
	R1 = [P_SPI_Misc];		// Wait untill command has been transmitted.
	test R1, C_SPI_Busy_Flag;
	jnz ?L_Check_TXIF;

	
	setb [P_IOA_Buffer], C_SPI_CS_IO;	// disable SPI Flash
	R1 = [P_SPI_RX_Data];

?L_Check_Busy:						// Wait untill chip has been erased successfully (about 128 to 256 seconds)
	R1 = C_Watchdog_Clear;
    [P_Watchdog_Clear] = R1;
	call F_SPI_Read_Status_Register;
	test R1, C_Flash_Busy;
	jnz ?L_Check_Busy;

	pop R1 from [SP];
	retf;
	.endp

//****************************************************************
// Function    : F_SPI_Read_Flash_ID
// Description : Read flash manufacturer,memory and individual device ID
// Destory     : None
// Parameter   : None
// Return      : R1 = Manufacturer and memory ID, R2 = Individual Device ID
// Note        : None
//****************************************************************
_SPI_Read_Flash_ID:	.proc
F_SPI_Read_Flash_ID:
	push R3, R4 to [SP];
	clrb [P_IOA_Buffer], C_SPI_CS_IO;		// enable SPI Flash
	R4 = C_SPI_Flash_Read_ID;
	[P_SPI_TX_Data] = R4;
		
	R1 = 0x00;					// Read One Byte Data dummy clock
	[P_SPI_TX_Data] = R1;
	[P_SPI_TX_Data] = R1;
	[P_SPI_TX_Data] = R1;
	

?L_Check_TXIF:
	R1 = [P_SPI_Misc];		// Wait untill command has been transmitted.
	test R1, C_SPI_Busy_Flag;
	jnz ?L_Check_TXIF;


	R1 = [P_SPI_RX_Data];		// Clear Dummy Data in RX FIFO at Read Cmd transmitted   
	R2 = [P_SPI_RX_Data];		// Read Manufacturer ID
	R3 = [P_SPI_RX_Data];		// Read Memory ID
	R4 = [P_SPI_RX_Data];		// Read Individual Device ID
	R1 = R3 LSL 4;
	R1 = R1 LSL 4;
	R1 |= R2;
	R2 = R4;

	setb [P_IOA_Buffer], C_SPI_CS_IO;	// disable SPI Flash
	pop R3, R4 from [SP];
	retf;
	.endp

