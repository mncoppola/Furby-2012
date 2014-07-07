#ifndef	__SPI_FLASH_h__
#define	__SPI_FLASH_h__
//========================================================================================
// Progarm: The file should be included by modules in order to use SPI Flash of GPR25LXXX
// Arranged by: Ray Cheng
//
// Date: 2005/11/24 V1.0: first version
//========================================================================================
extern void SPI_Initial(void);
extern unsigned int SPI_Read_Status_Register(void);
extern void Flash_Write_Enable(void);
extern void SPI_Flash_Chip_Erase(void);
extern void SPI_Read_Flash_ID(void);
extern void GP_SPI_SendData(void);
extern void GP_SPI_Flash_Record_Init(void);
extern unsigned long GP_GetCurrentAddress(void);
extern void GP_SetNewSectorAddr(unsigned long);
extern void GP_SPI_SendAWord(unsigned long, unsigned int);
extern void Flash_Write_Enable(void);
extern void SPI_Flash_Sector_Erase(unsigned long);
extern unsigned int GP_SPI_ReadAWord(unsigned long);

//----------- SPI Hardware Port Definition -------------
#define B_SPI_DO	0x8000
#define B_SPI_DI	0x4000
#define B_SPI_SCK	0x2000
#define B_SPI_CS	0x1000

//----------- Flash Operation Command Definition -------
#define C_SPI_Flash_Read_CMD		0x03
//#define C_SPI_Flash_Sector_Erase	0xD8
#define C_SPI_Flash_Sector_Erase	0x20
#define C_SPI_Flash_Chip_Erase		0x60
#define C_SPI_Flash_Page_Program	0x02
#define C_SPI_Flash_Read_Status		0x05
#define C_SPI_Flash_Write_Status	0x01
#define C_SPI_Flash_Write_Enable	0x06
#define C_SPI_Flash_Write_Disable	0x04
#define C_SPI_Flash_Read_ID			0x9F
#define C_SPI_Flash_Fast_Read		0x0B
#define C_SPI_Flash_Power_Down		0xB9
#define C_SPI_Flash_Release_DP		0xAB
#define C_SPI_Flash_Enter_4K		0xA5
#define C_SPI_Flash_Exit_4K			0xB5
#define C_SPI_Flash_Read_ES			0xAB
#define C_SPI_Flash_Read_EMS		0x90
#define C_SPI_Flash_Parallel_Mode	0x55

//----------- Flash Status Port Definition ----------
#define C_Flash_Busy				0x01
#define C_Flash_WEL					0x02		// Write Enable Latch
#define C_Flash_BP0					0x04
#define C_Flash_BP1					0x08
#define C_Flash_BP2					0x10
#define C_Flash_BP3					0x20		
#define C_Flash_PEE					0x40		// Program Erase Error
#define C_Flash_SRWP				0x80		// Status Register Write Protect

//----------- Flash File Mangement ------------------
#define SENTENCE_HEAD	0xA5A5
#define SENTENCE_END	0x5A5A
#define SECTOR_BLANK	0xFFFF

#define C_FlashFullSpeech	0x0000

#define FLASH_FULL		1
#define FLASH_BUSY		2

#define C_SPI_Flash_GPR25L005		0x01
#define C_SPI_Flash_GPR25L010		0x02
#define C_SPI_Flash_GPR25L020		0x03
#define C_SPI_Flash_GPR25L040		0x04
#define C_SPI_Flash_GPR25L080		0x05
#define C_SPI_Flash_GPR25L160		0x06
#define C_SPI_Flash_GPR25L320		0x07
#define C_SPI_Flash_GPR25L640		0x08

//#define C_SPI_FlashType		C_SPI_Flash_GPR25L005
//#define C_SPI_FlashType		C_SPI_Flash_GPR25L010
//#define C_SPI_FlashType		C_SPI_Flash_GPR25L020
//#define C_SPI_FlashType		C_SPI_Flash_GPR25L040
//#define C_SPI_FlashType		C_SPI_Flash_GPR25L080
//#define C_SPI_FlashType		C_SPI_Flash_GPR25L160
//#define C_SPI_FlashType		C_SPI_Flash_GPR25L320
#define C_SPI_FlashType		C_SPI_Flash_GPR25L640

#if C_SPI_FlashType == C_SPI_Flash_GPR25L005
	#define SECTOR_SIZE		0x1000
	#define FLASH_MAXSECTOR	0xF000
	#define FLASH_STARTADDR	0x0
	#define C_SectorNumber	16
#else
	#if C_SPI_FlashType == C_SPI_Flash_GPR25L010
		#define SECTOR_SIZE		0x1000
		#define FLASH_MAXSECTOR	0x1F000
		#define FLASH_STARTADDR	0x0
		#define C_SectorNumber	32
	#else 
		#if C_SPI_FlashType == C_SPI_Flash_GPR25L020
			#define SECTOR_SIZE		0x1000
			#define FLASH_MAXSECTOR	0x3F000
			#define FLASH_STARTADDR	0x0
			#define C_SectorNumber	64
		#else
			#if C_SPI_FlashType == C_SPI_Flash_GPR25L040
				#define SECTOR_SIZE		0x1000
				#define FLASH_MAXSECTOR	0x7F000
				#define FLASH_STARTADDR	0x0
				#define C_SectorNumber	128
			#else
				#if C_SPI_FlashType == C_SPI_Flash_GPR25L080
					#define SECTOR_SIZE		0x1000
					#define FLASH_MAXSECTOR	0xFF000
					#define FLASH_STARTADDR	0x0
					#define C_SectorNumber	256
				#else
					#if C_SPI_FlashType == C_SPI_Flash_GPR25L160
					//	#define SECTOR_SIZE		0x1000
					//	#define FLASH_MAXSECTOR	0x1FF000
					//	#define FLASH_STARTADDR	0x0
					//	#define C_SectorNumber	512
						#define SECTOR_SIZE		0x10000
						#define FLASH_MAXSECTOR	0x1F0000
						#define FLASH_STARTADDR	0x0
						#define C_SectorNumber	32
					#else
						#if C_SPI_FlashType == C_SPI_Flash_GPR25L320
							#define SECTOR_SIZE		0x10000
							#define FLASH_MAXSECTOR	0x3F0000
							#define FLASH_STARTADDR	0x0
							#define C_SectorNumber	64
						#else
							#if C_SPI_FlashType == C_SPI_Flash_GPR25L640
								#define SECTOR_SIZE		0x10000
								#define FLASH_MAXSECTOR	0x7F0000
								#define FLASH_STARTADDR	0x0
								#define C_SectorNumber	128
							#endif
						#endif
					#endif
				#endif
			#endif
		#endif
	#endif
#endif

// end of file
#endif
