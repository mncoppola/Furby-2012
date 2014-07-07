//==========================================================================
// SACM-DVR520 algorithm with play, stop, pause, resume, volume up, volume down function
//
// Function call for SACM-DVR520:
// Syntax:
//  void SACM_DVR520_Initial(void)
//
//  void SACM_DVR520_Rec(int RecMonitor, int ADC_Channel)
//       RecMonitor: 1 : RecMonitorOn  (ADC + DAC output)
//                   0 : RecMonitorOff (ADC only)
//
//       ADC_Channel: 0    : Microphone
//                    1 ~ 8: Line-in 1~8(IOC0 ~ IOC7)
//
//  void SACM_DVR520_Play(int Speech_Index, int DA_Channel, int Ramp_Set)
//       Speech_Index: -1            : Manual mode
//                     0 ~ max index : Auto Mode
//
//       DA_Channel: 1: DAC1 ON
//                   2: DAC2 ON
//                   3: DAC1, 2 ON
//       Ramp_Set: 0: Ramp Up disable/Ramp Dn disable
//                 1: Ramp Up enable/Ramp Dn disable
//                 2: Ramp Up disable/Ramp Dn enable
//                 3: Ramp Up enable/Ramp Dn enable
//
// void SACM_DVR520_Stop(void);
// 
// void SACM_DVR520_Pause(void);
// void SACM_DVR520_Resume(void);
//
// void SACM_DVR520_Volume(unsigned VolumeValue);
//      VolumeValue: 0x0000 ~ 0xFFFF
//
// int SACM_DVR520_Status(void);
//      bit0: 0: Idle
//            1: Audio active
//
// Note:
//   1. User would need to check out the resource.asm for resource arrangement.
//      The speech table is T_SACM_DVR520_SpeechTable for DVR520.
//   2. For manual mode, user have to handle the memory address and data
//      acquisition through F_USER_DVR520_GetData, _USER_DVR520_SetStartAddr
//   3. The RAM taken by library can be shared by declaring ORAM section,
//      "OVERLAP_DVR520_RAM_BLOCK:   .Section        .ORAM".
//      Please check out IDE menu--> Project-->Setting--> Section for details.
//   4. Please check out the sacm.asm for details of initial function, interrupt setting,
//      and timer setting.
//==========================================================================
//**************************************************************************
// Header File Included Area
//**************************************************************************
#include "SACM.h"

//**************************************************************************
// Contant Defintion Area
//**************************************************************************
#define MaxSpeechNum		3		// Max. of speech in resource
#define MaxVolumeNum		16		// Max. of volume settings

#define Foreground			0
#define Background			1
#define ServiceType		Foreground
//#define ServiceType			Background

#define C_PlayPrerecordData		0x0000
#define C_RecordData			0x0001
#define C_PlayRecordedData		0x0002

//**************************************************************************
// Function Call Publication Area
//**************************************************************************


//**************************************************************************
// Global Variable Defintion Area
//**************************************************************************
unsigned Key;
unsigned SpeechIndex;
unsigned VolumeIndex;
unsigned BitRate;
unsigned ADC_Channel;
unsigned ADC_FIR_Type;
unsigned DAC_FIR_Type;
unsigned PauseFlag;
unsigned VADIndex;
unsigned PlayCon;
unsigned Mode;

int main()
{
	Key = 0;
	SpeechIndex = 0;
	VolumeIndex = 9;
	PauseFlag = 0;
//	VADIndex = 0x100;
	VADIndex = 0x80;
	DAC_FIR_Type = C_DAC_FIR_Type2;
	ADC_FIR_Type = C_ADC_FIR_Type1;
	PlayCon = 0;
	Mode = C_PlayPrerecordData;

	System_Initial();			// System initial
	SPI_Initial();
	SACM_DVR520_Initial();		// DVR520 initial
	SACM_DVR520_VADTHR(VADIndex);	// Set VAD threshold
	SACM_DVR520_Play(SpeechIndex, DAC1 + DAC2, Ramp_Up + Ramp_Dn);	// playback with auto mode
	while(1)
	{
		Key = SP_GetCh();
		switch(Key)
		{	
			case 0x0000:
				break;

			case 0x0001:	// IOA0 + Vcc
				PlayCon = 0;
				Mode = C_RecordData;
				SPI_Flash_Sector_Erase(0x0000);
				USER_DVR520_SetStartAddr(4, 0);			// skip 4 Bytes for length header
				ADC_Channel = Mic;							// set ADC channel
//				ADC_Channel = Line_In1;
				SACM_DVR520_Rec(RecMonitorOff, ADC_Channel);			// start recording
				break;

			case 0x0002:	// IOA1 + Vcc
				PlayCon = 0;
				SACM_DVR520_Stop();						// stop
				break;

			case 0x0004:	// IOA2 + Vcc
				PlayCon = 0;
				Mode = C_PlayRecordedData;
				USER_DVR520_SetStartAddr(0, 0);			// set start address
				SACM_DVR520_Play(Manual_Mode_Index, DAC1 + DAC2, Ramp_Up + Ramp_Dn);	// manual mode playback
				break;

			case 0x0008:	// IOA3 + Vcc
				if(++SpeechIndex >= MaxSpeechNum)			// next speech
					SpeechIndex = 0;
				PlayCon = 0;
				Mode = C_PlayPrerecordData;
				SACM_DVR520_Play(SpeechIndex, DAC1 + DAC2, Ramp_Up + Ramp_Dn);		// play next speech
				break;
			
			case 0x0010:	// IOA4 + Vcc
				PauseFlag ^= 0x0001;
				if(PauseFlag)
					SACM_DVR520_Pause();					// playback pause
				else
					SACM_DVR520_Resume();					// playback resuem
				break;

			case 0x0020:	// IOA5 + Vcc
				if(++VolumeIndex >= MaxVolumeNum)
					VolumeIndex = 0;
				USER_DVR520_Volume(VolumeIndex);			// volume up
				break;

			case 0x0040:	// IOA6 + Vcc
				if(++DAC_FIR_Type > C_DAC_FIR_Type3)
					DAC_FIR_Type = C_DAC_FIR_Type0;
				SACM_DVR520_DA_FIRType(DAC_FIR_Type);		// change DAC filter type
				break;

			case 0x0080:	// IOA7 + Vcc
				PlayCon = 1;
				Mode = C_PlayPrerecordData;
				SpeechIndex = 0;
				USER_DVR520_SetStartAddr(SpeechIndex);
				SACM_DVR520_Play(Manual_Mode_Index, DAC1 + DAC2, Ramp_Up);
				break;

			default:
				break;
		} // end of switch
		if(PlayCon)
		{
			if(SACM_DVR520_Check_Con() == -1)
			{
				if(++SpeechIndex >= MaxSpeechNum)		// next speech
					SpeechIndex = 0;
				USER_DVR520_SetStartAddr_Con(SpeechIndex);
				SACM_DVR520_Play_Con(Manual_Mode_Index, DAC1 + DAC2, Ramp_Dn);
			}
		}
		if(ServiceType == Foreground)
			SACM_DVR520_ServiceLoop();
		System_ServiceLoop();
	} // end of while
   	return 0;	
}	