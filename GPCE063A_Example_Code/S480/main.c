//==========================================================================
// SACM-S480 algorithm with play, stop, pause, resume, volume up, volume down function
//
// Function call for SACM-S480:
// Syntax:
//  void SACM_S480_Initial(void)
//
//  void SACM_S480_Play(int Speech_Index, int DA_Channel, int Ramp_Set)
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
// void SACM_S480_Stop(void);
// 
// void SACM_S480_Pause(void);
// void SACM_S480_Resume(void);
//
// void SACM_S480_Volume(unsigned VolumeValue);
//      VolumeValue: 0x0000 ~ 0xFFFF
//
// int SACM_S480_Status(void);
//      bit0: 0: Idle
//            1: Audio active
//
// Note:
//   1. User would need to check out the resource.asm for resource arrangement.
//      The speech table is T_SACM_S480_SpeechTable for S480.
//   2. For manual mode, user have to handle the memory address and data
//      acquisition through F_USER_S480_GetData, _USER_S480_SetStartAddr
//   3. The RAM taken by library can be shared by declaring ORAM section,
//      "OVERLAP_S480_RAM_BLOCK:   .Section        .ORAM".
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
#define MaxSpeechNum		4		// Max. of speech in resource
#define MaxVolumeNum		16		// Max. of volume settings

#define Foreground			0
#define Background			1
//#define ServiceType		Foreground
#define ServiceType			Background

//**************************************************************************
// Function Call Publication Area
//**************************************************************************


//**************************************************************************
// Global Variable Defintion Area
//**************************************************************************
unsigned Key;
unsigned SpeechIndex;
unsigned VolumeIndex;
unsigned DAC_FIR_Type;
unsigned PauseFlag;
unsigned PlayCon;

int main()
{
	Key = 0;
	SpeechIndex = 0;
	VolumeIndex = 9;
	PauseFlag = 0;
	DAC_FIR_Type = C_DAC_FIR_Type2;
	PlayCon = 0;

	System_Initial();			// System initial
	SPI_Initial();
	SACM_S480_Initial();		// S480 initial
	SACM_S480_Play(SpeechIndex, DAC1 + DAC2, Ramp_Up + Ramp_Dn);	// playback with auto mode
	while(1)
	{
		Key = SP_GetCh();
		switch(Key)
		{	
			case 0x0000:
				break;

			case 0x0001:	// IOA0 + Vcc
				PlayCon = 0;
				SACM_S480_Play(SpeechIndex, DAC1 + DAC2, Ramp_Up + Ramp_Dn);		// play speech
				break;

			case 0x0002:	// IOA1 + Vcc
				PlayCon = 0;
				SACM_S480_Stop();						// stop
				break;

			case 0x0004:	// IOA2 + Vcc
				SACM_S480_Pause();						// playback pause
				break;

			case 0x0008:	// IOA3 + Vcc
				SACM_S480_Resume();					// playback resuem
				break;
			
			case 0x0010:	// IOA4 + Vcc
				if(++SpeechIndex >= MaxSpeechNum)			// next speech
					SpeechIndex = 0;
				PlayCon = 0;
				SACM_S480_Play(SpeechIndex, DAC1 + DAC2, Ramp_Up + Ramp_Dn);		// play next speech
				break;

			case 0x0020:	// IOA5 + Vcc
				if(++VolumeIndex >= MaxVolumeNum)
					VolumeIndex = 0;
				USER_S480_Volume(VolumeIndex);			// volume up
				break;

			case 0x0040:	// IOA6 + Vcc
				if(++DAC_FIR_Type > C_DAC_FIR_Type3)
					DAC_FIR_Type = C_DAC_FIR_Type0;
				SACM_S480_DA_FIRType(DAC_FIR_Type);		// change DAC filter type
				break;

			case 0x0080:	// IOA7 + Vcc
				PlayCon = 1;
				SpeechIndex = 0;
				USER_S480_SetStartAddr(SpeechIndex);
				SACM_S480_Play(Manual_Mode_Index, DAC1 + DAC2, Ramp_Up);
				break;

			default:
				break;
		} // end of switch
		if(PlayCon)
		{
			if(SACM_S480_Check_Con() == -1)
			{
				if(++SpeechIndex >= MaxSpeechNum)		// next speech
					SpeechIndex = 0;
				USER_S480_SetStartAddr_Con(SpeechIndex);
				SACM_S480_Play_Con(Manual_Mode_Index, DAC1 + DAC2, Ramp_Dn);
			}
		}
		if(ServiceType == Foreground)
			SACM_S480_ServiceLoop();
		System_ServiceLoop();
	} // end of while
   	return 0;	
}	