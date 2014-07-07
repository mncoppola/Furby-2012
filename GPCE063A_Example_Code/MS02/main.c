
//==========================================================================
// SACM-MS02 algorithm with play, stop, pause, resume, volume up, volume down function
//
// Function call for SACM-MS02:
// Syntax:
//  void SACM_MS02_Initial(void)
//
//  void SACM_MS02_Play(int Speech_Index, int DA_Channel, int Ramp_Set)
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
// void SACM_MS02_Stop(void);
// 
// void SACM_MS02_Pause(void);
// void SACM_MS02_Resume(void);
//
// void SACM_MS02_Volume(unsigned VolumeValue);
//      VolumeValue: 0x0000 ~ 0xFFFF
//
// int SACM_MS02_Status(void);
//      bit0: 0: Idle
//            1: Audio active
//
// Note:
//   1. User would need to check out the resource.asm for resource arrangement.
//      The speech table is T_SACM_MS02_SpeechTable for MS02.
//   2. For manual mode, user have to handle the memory address and data
//      acquisition through F_USER_MS02_GetData, _USER_MS02_SetStartAddr
//   3. The RAM taken by library can be shared by declaring ORAM section,
//      "OVERLAP_MS02_RAM_BLOCK:   .Section        .ORAM".
//      Please check out IDE menu--> Project-->Setting--> Section for details.
//   4. Data rate of SACM-MS02 can be 10/12/14/16/20/24Kbps and
//      the algorithm will select it automatically.
//   5. Please check out the sacm.asm for details of initial function, interrupt setting,
//      and timer setting.
//==========================================================================
//**************************************************************************
// Header File Included Area
//**************************************************************************
#include "SACM.h"

//**************************************************************************
// Contant Defintion Area
//**************************************************************************
#define MaxSpeechNum		1		// Max. of speech in resource
#define MaxVolumeNum		16		// Max. of volume settings

#define Foreground			0
#define Background			1
#define ServiceType		Foreground
//#define ServiceType			Background

//**************************************************************************
// Function Call Publication Area
//**************************************************************************


//**************************************************************************
// Global Variable Defintion Area
//**************************************************************************
int Key;
int MIDI_Index;
int VolumeIndex;
int PauseFlag;

int main()
{
	Key = 0;
	MIDI_Index = 0;
	VolumeIndex = 9;
	PauseFlag = 0;

	System_Initial();			// System initial
	SPI_Initial();
	SACM_MS02_Initial(MS02_DAC_16K, 8);
	SACM_MS02_Play(MIDI_Index, DAC1 + DAC2, Ramp_Up + Ramp_Dn);	// playback with auto mode
	while(1)
	{
		Key = SP_GetCh();
		switch(Key)
		{	
			case 0x0000:
				break;

			case 0x0001:	// IOA0 + Vcc
				SACM_MS02_Play(MIDI_Index, DAC1 + DAC2, Ramp_Up + Ramp_Dn);		// play speech
				break;

			case 0x0002:	// IOA1 + Vcc
				SACM_MS02_Stop();						// stop
				break;

			case 0x0004:	// IOA2 + Vcc
				PauseFlag ^= 0x0001;
				if(PauseFlag)
					SACM_MS02_Pause();					// playback pause
				else
					SACM_MS02_Resume();					// playback resuem
				break;

			case 0x0008:	// IOA3 + Vcc
				if(++MIDI_Index >= MaxSpeechNum)			// next speech
					MIDI_Index = 0;
				SACM_MS02_Play(MIDI_Index, DAC1 + DAC2, Ramp_Up + Ramp_Dn);		// play next speech
				break;
			
			case 0x0010:	// IOA4 + Vcc
				SACM_MS02_ChangeInstru(0, 4);
				SACM_MS02_PlayNote(0, 0x3F, 0x7F, 0xFF);
				break;

			case 0x0020:	// IOA5 + Vcc
				 SACM_MS02_ChannelOff(0); 
				break;

			case 0x0040:	// IOA6 + Vcc
				if(++VolumeIndex >= MaxVolumeNum)
					VolumeIndex = MaxVolumeNum - 1;
				USER_MS02_Volume(VolumeIndex);			// volume up
				break;

			case 0x0080:	// IOA7 + Vcc
				if(--VolumeIndex <= 0)
					VolumeIndex = 0;
				USER_MS02_Volume(VolumeIndex);			// volume down
				break;

			default:
				break;
		} // end of switch
		if(ServiceType == Foreground)
			SACM_MS02_ServiceLoop();
		System_ServiceLoop();
	} // end of while
   	return 0;	
}	