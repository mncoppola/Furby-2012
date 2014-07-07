//==========================================================================
// File Name   : SACM.h
// Description : External C functions and constants declaration
// Written by  : Ray Cheng
// Last modified date:
//              2005/12/26
//==========================================================================
#ifndef	__SACM_H__
#define	__SACM_H__
//**************************************************************************
// Function Call Publication Area
//**************************************************************************
extern void System_Initial();
extern void SIO_Initial();
extern unsigned int SP_GetCh();
extern void System_ServiceLoop();
extern void SPR_SIO_MassErase();

//////////////////////////////////////////////////////////////////////////////////////////
// SACM-S200 external C API declaration
//////////////////////////////////////////////////////////////////////////////////////////
extern void SACM_S200_Initial(void);
extern void SACM_S200_ServiceLoop(void);
extern void SACM_S200_Play(unsigned SpeechIndex, int Channel, int RampSet);
extern void SACM_S200_Play_Con(unsigned SpeechIndex, int Channel, int RampSet);
extern void SACM_S200_Stop(void);
extern void SACM_S200_Pause(void);
extern void SACM_S200_Resume(void);
extern void SACM_S200_Volume(int VolumeValue);
extern unsigned SACM_S200_Status(void);
extern void SACM_S200_DA_FIRType(unsigned DA_FIRType);
extern void USER_S200_Volume(int VolumeIndex);
//extern void USER_S200_SetStartAddr(unsigned AddrLow, unsigned AddrHigh);
//extern void USER_S200_SetStartAddr_Con(unsigned SpeechIndex);
extern unsigned SACM_S200_Check_Con(void);

//////////////////////////////////////////////////////////////////////////////////////////
// SACM-S480/S720 external C API declaration
//////////////////////////////////////////////////////////////////////////////////////////
extern void SACM_S480_Initial(void);
extern void SACM_S480_ServiceLoop(void);
extern void SACM_S480_Play(unsigned SpeechIndex, int Channel, int RampSet);
extern void SACM_S480_Play_Con(unsigned SpeechIndex, int Channel, int RampSet);
extern void SACM_S480_Stop(void);
extern void SACM_S480_Pause(void);
extern void SACM_S480_Resume(void);
extern void SACM_S480_Volume(int VolumeValue);
extern unsigned SACM_S480_Status(void);
extern void SACM_S480_DA_FIRType(unsigned DA_FIRType);
extern void USER_S480_Volume(int VolumeIndex);
//extern void USER_S480_SetStartAddr(unsigned AddrLow, unsigned AddrHigh);
//extern void USER_S480_SetStartAddr_Con(unsigned SpeechIndex);
extern unsigned SACM_S480_Check_Con(void);

//////////////////////////////////////////////////////////////////////////////////////////
// SACM-S530 external C API declaration
//////////////////////////////////////////////////////////////////////////////////////////
extern void SACM_S530_Initial(void);
extern void SACM_S530_ServiceLoop(void);
extern void SACM_S530_Play(unsigned SpeechIndex, int Channel, int RampSet);
extern void SACM_S530_Play_Con(unsigned SpeechIndex, int Channel, int RampSet);
extern void SACM_S530_Stop(void);
extern void SACM_S530_Pause(void);
extern void SACM_S530_Resume(void);
extern void SACM_S530_Volume(int VolumeValue);
extern unsigned SACM_S530_Status(void);
extern void SACM_S530_DA_FIRType(unsigned DA_FIRType);
extern void USER_S530_Volume(int VolumeIndex);
//extern void USER_S530_SetStartAddr(unsigned AddrLow, unsigned AddrHigh);
//extern void USER_S530_SetStartAddr_Con(unsigned SpeechIndex);
extern unsigned SACM_S530_Check_Con(void);

//////////////////////////////////////////////////////////////////////////////////////////
// SACM-A1600 external C API declaration
//////////////////////////////////////////////////////////////////////////////////////////
extern void SACM_A1600_Initial(void);
extern void SACM_A1600_ServiceLoop(void);
extern void SACM_A1600_Play(unsigned SpeechIndex, int Channel, int RampSet);
extern void SACM_A1600_Play_Con(unsigned SpeechIndex, int Channel, int RampSet);
extern void SACM_A1600_Stop(void);
extern void SACM_A1600_Pause(void);
extern void SACM_A1600_Resume(void);
extern void SACM_A1600_Volume(int VolumeValue);
extern unsigned SACM_A1600_Status(void);
extern void SACM_A1600_DA_FIRType(unsigned DA_FIRType);
extern void USER_A1600_Volume(int VolumeIndex);
//extern void USER_A1600_SetStartAddr(unsigned AddrLow, unsigned AddrHigh);
//extern void USER_A1600_SetStartAddr_Con(unsigned SpeechIndex);
extern unsigned SACM_A1600_Check_Con(void);

//////////////////////////////////////////////////////////////////////////////////////////
// SACM-A1601 external C API declaration
//////////////////////////////////////////////////////////////////////////////////////////
extern void SACM_A1601_Initial(void);
extern void SACM_A1601_ServiceLoop(void);
extern void SACM_A1601_Play(unsigned SpeechIndex, int Channel, int RampSet);
extern void SACM_A1601_Play_Con(unsigned SpeechIndex, int Channel, int RampSet);
extern void SACM_A1601_Stop(void);
extern void SACM_A1601_Pause(void);
extern void SACM_A1601_Resume(void);
extern void SACM_A1601_Volume(int VolumeValue);
extern unsigned SACM_A1601_Status(void);
extern void SACM_A1601_DA_FIRType(unsigned DA_FIRType);
extern void USER_A1601_Volume(int VolumeIndex);
//extern void USER_A1601_SetStartAddr(unsigned AddrLow, unsigned AddrHigh);
//extern void USER_A1601_SetStartAddr_Con(unsigned SpeechIndex);
extern unsigned SACM_A1601_Check_Con(void);

//////////////////////////////////////////////////////////////////////////////////////////
// SACM-A1800 external C API declaration
//////////////////////////////////////////////////////////////////////////////////////////
extern void SACM_A1800_Initial(void);
extern void SACM_A1800_ServiceLoop(void);
extern void SACM_A1800_Play(unsigned SpeechIndex, int Channel, int RampSet);
extern void SACM_A1800_Play_Con(unsigned SpeechIndex, int Channel, int RampSet);
extern void SACM_A1800_Stop(void);
extern void SACM_A1800_Pause(void);
extern void SACM_A1800_Resume(void);
extern void SACM_A1800_Volume(int VolumeValue);
extern unsigned SACM_A1800_Status(void);
extern void SACM_A1800_DA_FIRType(unsigned DA_FIRType);
extern void USER_A1800_Volume(int VolumeIndex);
//extern void USER_A1800_SetStartAddr(unsigned AddrLow, unsigned AddrHigh);
//extern void USER_A1800_SetStartAddr_Con(unsigned SpeechIndex);
extern unsigned SACM_A1800_Check_Con(void);

//////////////////////////////////////////////////////////////////////////////////////////
// SACM-A3600 external C API declaration
//////////////////////////////////////////////////////////////////////////////////////////
extern void SACM_A3600_Initial(void);
extern void SACM_A3600_ServiceLoop(void);
extern void SACM_A3600_Play(unsigned SpeechIndex, int Channel, int RampSet);
extern void SACM_A3600_Play_Con(unsigned SpeechIndex, int Channel, int RampSet);
extern void SACM_A3600_Stop(void);
extern void SACM_A3600_Pause(void);
extern void SACM_A3600_Resume(void);
extern void SACM_A3600_Volume(int VolumeValue);
extern unsigned SACM_A3600_Status(void);
extern void SACM_A3600_DA_FIRType(unsigned DA_FIRType);
extern void USER_A3600_Volume(int VolumeIndex);
//extern void USER_A3600_SetStartAddr(unsigned AddrLow, unsigned AddrHigh);
//extern void USER_A3600_SetStartAddr_Con(unsigned SpeechIndex);
extern unsigned SACM_A3600_Check_Con(void);

//////////////////////////////////////////////////////////////////////////////////////////
// SACM-DVR520 external C API declaration
//////////////////////////////////////////////////////////////////////////////////////////
extern void SACM_DVR520_Initial(void);
extern void SACM_DVR520_ServiceLoop(void);
extern void SACM_DVR520_Rec(int RecMonitor, int ADC_Channel);
extern void SACM_DVR520_Play(unsigned SpeechIndex, int Channel, int RampSet);
extern void SACM_DVR520_Play_Con(unsigned SpeechIndex, int Channel, int RampSet);
extern void SACM_DVR520_Stop(void);
extern void SACM_DVR520_Pause(void);
extern void SACM_DVR520_Resume(void);
extern void SACM_DVR520_Volume(int VolumeValue);
extern unsigned SACM_DVR520_Status(void);
extern void SACM_DVR520_DA_FIRType(unsigned DA_FIRType);
extern void SACM_DVR520_AD_FIRType(unsigned AD_FIRType);
extern void USER_DVR520_Volume(int VolumeIndex);
//extern void USER_DVR520_SetStartAddr(unsigned AddrLow, unsigned AddrHigh);
//extern void USER_DVR520_SetStartAddr_Con(unsigned SpeechIndex);
extern unsigned SACM_DVR520_Check_Con(void);

//////////////////////////////////////////////////////////////////////////////////////////
// SACM-DVR1600 external C API declaration
//////////////////////////////////////////////////////////////////////////////////////////
extern void SACM_DVR1600_Initial(void);
extern void SACM_DVR1600_ServiceLoop(void);
extern void SACM_DVR1600_Rec(int RecMonitor, int ADC_Channel, int bit_rate);
extern void SACM_DVR1600_Play(unsigned SpeechIndex, int Channel, int RampSet);
extern void SACM_DVR1600_Play_Con(unsigned SpeechIndex, int Channel, int RampSet);
extern void SACM_DVR1600_Stop(void);
extern void SACM_DVR1600_Pause(void);
extern void SACM_DVR1600_Resume(void);
extern void SACM_DVR1600_Volume(int VolumeValue);
extern unsigned SACM_DVR1600_Status(void);
extern void SACM_DVR1600_DA_FIRType(unsigned DA_FIRType);
extern void SACM_DVR1600_AD_FIRType(unsigned AD_FIRType);
extern void USER_DVR1600_Volume(int VolumeIndex);
//extern void USER_DVR1600_SetStartAddr(unsigned AddrLow, unsigned AddrHigh);
//extern void USER_DVR1600_SetStartAddr_Con(unsigned SpeechIndex);
extern unsigned SACM_DVR1600_Check_Con(void);

//////////////////////////////////////////////////////////////////////////////////////////
// SACM-DVR1800 external C API declaration
//////////////////////////////////////////////////////////////////////////////////////////
extern void SACM_DVR1800_Initial(void);
extern void SACM_DVR1800_ServiceLoop(void);
extern void SACM_DVR1800_Rec(int RecMonitor, int ADC_Channel, int bit_rate);
extern void SACM_DVR1800_RecInit(int RecMonitor, int ADC_Channel);
extern void SACM_DVR1800_Play(unsigned SpeechIndex, int Channel, int RampSet);
extern void SACM_DVR1800_Play_Con(unsigned SpeechIndex, int Channel, int RampSet);
extern void SACM_DVR1800_Stop(void);
extern void SACM_DVR1800_Pause(void);
extern void SACM_DVR1800_Resume(void);
extern void SACM_DVR1800_Volume(int VolumeValue);
extern unsigned SACM_DVR1800_Status(void);
extern void SACM_DVR1800_BITRATE(int BitRate, int BitsOfEachFrame);
extern void SACM_DVR1800_DA_FIRType(unsigned DA_FIRType);
extern void SACM_DVR1800_AD_FIRType(unsigned AD_FIRType);
extern void USER_DVR1800_Volume(int VolumeIndex);
//extern void USER_DVR1800_SetStartAddr(unsigned AddrLow, unsigned AddrHigh);
//extern void USER_DVR1800_SetStartAddr_Con(unsigned SpeechIndex);
extern unsigned SACM_DVR1800_Check_Con(void);

//////////////////////////////////////////////////////////////////////////////////////////
// SACM-DVR3200 external C API declaration
//////////////////////////////////////////////////////////////////////////////////////////
extern void SACM_DVR3200_Initial(void);
extern void SACM_DVR3200_ServiceLoop(void);
extern void SACM_DVR3200_Rec(int RecMonitor, int ADC_Channel);
extern void SACM_DVR3200_Play(unsigned SpeechIndex, int Channel, int RampSet);
extern void SACM_DVR3200_Play_Con(unsigned SpeechIndex, int Channel, int RampSet);
extern void SACM_DVR3200_Stop(void);
extern void SACM_DVR3200_Pause(void);
extern void SACM_DVR3200_Resume(void);
extern void SACM_DVR3200_Volume(int VolumeValue);
extern unsigned SACM_DVR3200_Status(void);
extern void SACM_DVR3200_DA_FIRType(unsigned DA_FIRType);
extern void SACM_DVR3200_AD_FIRType(unsigned AD_FIRType);
extern void USER_DVR3200_Volume(int VolumeIndex);
//extern void USER_DVR3200_SetStartAddr(unsigned AddrLow, unsigned AddrHigh);
//extern void USER_DVR3200_SetStartAddr_Con(unsigned SpeechIndex);
extern unsigned SACM_DVR3200_Check_Con(void);

//////////////////////////////////////////////////////////////////////////////////////////
// SACM-DVR4800 external C API declaration
//////////////////////////////////////////////////////////////////////////////////////////
extern void SACM_DVR4800_Initial(void);
extern void SACM_DVR4800_ServiceLoop(void);
extern void SACM_DVR4800_Rec(int RecMonitor, int ADC_Channel, int bit_rate);
extern void SACM_DVR4800_Play(unsigned SpeechIndex, int Channel, int RampSet);
extern void SACM_DVR4800_Play_Con(unsigned SpeechIndex, int Channel, int RampSet);
extern void SACM_DVR4800_Stop(void);
extern void SACM_DVR4800_Pause(void);
extern void SACM_DVR4800_Resume(void);
extern void SACM_DVR4800_Volume(int VolumeValue);
extern unsigned SACM_DVR4800_Status(void);
extern void SACM_DVR4800_DA_FIRType(unsigned DA_FIRType);
extern void SACM_DVR4800_AD_FIRType(unsigned AD_FIRType);
extern void USER_DVR4800_Volume(int VolumeIndex);
//extern void USER_DVR4800_SetStartAddr(unsigned AddrLow, unsigned AddrHigh);
//extern void USER_DVR4800_SetStartAddr_Con(unsigned SpeechIndex);
extern unsigned SACM_DVR4800_Check_Con(void);

//////////////////////////////////////////////////////////////////////////////////////////
// SACM-MS01 external C API definition 
//////////////////////////////////////////////////////////////////////////////////////////
extern void SACM_MS01_Initial(void);
extern void SACM_MS01_ServiceLoop(void);
extern void SACM_MS01_Play(unsigned MIDIIndex, int Channel, int RampSet);
extern void SACM_MS01_Stop(void);
extern void SACM_MS01_Pause(void);
extern void SACM_MS01_Resume(void);
extern void SACM_MS01_Volume(int VolumeValue);
extern unsigned SACM_MS01_Status(void);
extern void USER_MS01_Volume(int VolumeIndex);
//extern void USER_MS01_SetStartAddr(unsigned AddrLow, unsigned AddrHigh);

//////////////////////////////////////////////////////////////////////////////////////////
// SACM-MS02 external C API declaration
//////////////////////////////////////////////////////////////////////////////////////////
extern void SACM_MS02_Initial(int DAC_Rate, int Channel);
extern void SACM_MS02_ServiceLoop(void);
extern void SACM_MS02_Play(unsigned MIDIIndex, int Channel, int RampSet);
extern void SACM_MS02_Stop(void);
extern void SACM_MS02_Pause(void);
extern void SACM_MS02_Resume(void);
extern void SACM_MS02_Volume(int VolumeValue);
extern unsigned SACM_MS02_Status(void);
extern void USER_MS02_Volume(int VolumeIndex);
//extern void USER_MS02_SetStartAddr(unsigned AddrLow, unsigned AddrHigh);

//////////////////////////////////////////////////////////////////////////////////////////
// SACM-hardware dependent external C API declaration
//////////////////////////////////////////////////////////////////////////////////////////
extern void SP_RampUpDAC1(void);
extern void SP_RampUpDAC2(void);
extern void SP_RampDnDAC1(void);
extern void SP_RampDnDAC2(void);

//////////////////////////////////////////////////////////////////////////////////////////
// Constant difinition
//////////////////////////////////////////////////////////////////////////////////////////
// SACM Record/Play mode
#define Manual_Mode_Index			-1
#define Manual						0
#define Auto						1

// DAC output
#define	DAC1						1
#define DAC2						2

// Ramp up/Ramp down
#define	Ramp_Disable				0
#define Ramp_Up						1
#define	Ramp_Dn						2

// For DVR
#define	RecMonitorOff				0
#define	RecMonitorOn				1

// DVR AD Channel
#define	Mic							0
#define	Line_In1					1
#define	Line_In2					2
#define	Line_In3					3
#define	Line_In4					4
#define	Line_In5					5
#define	Line_In6					6
#define	Line_In7					7
#define	Line_In8					8

// DVR 1600 bit rate
#define	DVR1600_BIT_RATE_10K		0
#define	DVR1600_BIT_RATE_12K		1
#define	DVR1600_BIT_RATE_14K		2
#define	DVR1600_BIT_RATE_16K		3
#define	DVR1600_BIT_RATE_20K		4
#define DVR1600_BIT_RATE_24K		5

// DVR 1800 bit rate
#define	DVR1800_BIT_RATE_7_2K		0
#define	DVR1800_BIT_RATE_9_6K		1
#define	DVR1800_BIT_RATE_12K		2
#define	DVR1800_BIT_RATE_14_4K		3
#define	DVR1800_BIT_RATE_16K		4
#define DVR1800_BIT_RATE_20K		5
#define DVR1800_BIT_RATE_24K		6
#define DVR1800_BIT_RATE_32K		7

// DVR4800 bit rate
#define	DVR4800_BIT_RATE_32K		0
#define	DVR4800_BIT_RATE_36K		1
#define	DVR4800_BIT_RATE_40K		2
#define	DVR4800_BIT_RATE_44K		3
#define	DVR4800_BIT_RATE_48K		4
#define DVR4800_BIT_RATE_52K		5
#define DVR4800_BIT_RATE_56K		6

#define MS02_DAC_8K					0					// MS02 use only
#define MS02_DAC_10K				1					// MS02 use only
#define MS02_DAC_12K				2					// MS02 use only
#define MS02_DAC_16K				3					// MS02 use only
#define MS02_DAC_20K				4					// MS02 use only
#define MS02_DAC_24K				5					// MS02 use only
#define MS02_DAC_28K				6					// MS02 use only
#define MS02_DAC_32K				7					// MS02 use only
#define MS02_DAC_36K				8					// MS02 use only
#define MS02_DAC_40K				9					// MS02 use only

#define C_DAC_FIR_Type0				0x00	// no up-sampling
#define C_DAC_FIR_Type1				0x01	// 2X up-sampling, no filter
#define C_DAC_FIR_Type2				0x02	// 2X up-sampling, simple filter
#define C_DAC_FIR_Type3				0x03	// 2X up-sampling, complex filter

#define C_ADC_FIR_Type0				0x00	// no up-sampling
#define C_ADC_FIR_Type1				0x01	// 2X up-sampling
#define C_ADC_FIR_Type2				0x02	// 4X up-sampling

#endif
