//==========================================================================
// SACM-A1601 algorithm with play, stop, pause, resume, volume up, volume down function
//
// Function call for SACM-A1601:
// Syntax:
//  void SACM_A1601_Initial(void)
//
//  void SACM_A1601_Play(int Speech_Index, int DA_Channel, int Ramp_Set)
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
// void SACM_A1601_Stop(void);
// 
// void SACM_A1601_Pause(void);
// void SACM_A1601_Resume(void);
//
// void SACM_A1601_Volume(unsigned VolumeValue);
//      VolumeValue: 0x0000 ~ 0xFFFF
//
// int SACM_A1601_Status(void);
//      bit0: 0: Idle
//            1: Audio active
//
// Note:
//   1. User would need to check out the resource.asm for resource arrangement.
//      The speech table is T_SACM_A1601_SpeechTable for A1601.
//   2. For manual mode, user have to handle the memory address and data
//      acquisition through F_USER_A1601_GetData, _USER_A1601_SetStartAddr
//   3. The RAM taken by library can be shared by declaring ORAM section,
//      "OVERLAP_A1601_RAM_BLOCK:   .Section        .ORAM".
//      Please check out IDE menu--> Project-->Setting--> Section for details.
//   4. Data rate of SACM-A1601 can be 12/16/24Kbps and
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
#define MaxSpeechNum	3	// Max. of speech in resource
#define MaxVolumeNum	15	// Max. of volume settings

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
int SpeechIndex1;
int SpeechIndex2;
int VolumeIndex1;
int VolumeIndex2;
unsigned PlayCon;

int main()
{
   	Key = 0;
   	SpeechIndex1 = 0;
   	SpeechIndex2 = 1;
   	VolumeIndex1 = 9;
   	VolumeIndex2 = 9;
	PlayCon = 0;

	System_Initial();
	SP_RampUpDAC1();
	SP_RampUpDAC2();
	SACM_A1601_Initial();
	SACM_A1601_CH2_Initial();
	SACM_A1601_Play(SpeechIndex1, DAC1, 0);
	SACM_A1601_CH2_Play(SpeechIndex2, DAC2, 0);
	while(1)
	{
		Key = SP_GetCh();
		switch(Key)
		{
			case 0x00:
				break;
		  
	   	 	case 0x0001:
				PlayCon = 0;
				SACM_A1601_Play(SpeechIndex1, DAC1, 0);
		  		SACM_A1601_CH2_Play(SpeechIndex2, DAC2, 0);
				break;
			
	    	case 0x0002:
				if(++SpeechIndex1 >= MaxSpeechNum)
					SpeechIndex1 = 0;
				if(++SpeechIndex2 >= MaxSpeechNum)
					SpeechIndex2 = 0;
				PlayCon = 0;
				SACM_A1601_Play(SpeechIndex1, DAC1, 0);
		  		SACM_A1601_CH2_Play(SpeechIndex2, DAC2, 0);
		   		break;
			
	    	case 0x0004:
	    		SACM_A1601_Stop();
		   		break;
			
	    	case 0x0008:
	    		SACM_A1601_CH2_Stop();
		  	 	break;
			
	    	case 0x0010:
				if(++VolumeIndex1 > MaxVolumeNum)
					VolumeIndex1 = 0;
		   		USER_A1601_Volume(VolumeIndex1);
		   		break;
					
	    	case 0x0020:
				if(++VolumeIndex2 > MaxVolumeNum)
					VolumeIndex2 = 0;
		   		USER_A1601_CH2_Volume(VolumeIndex2);
		   		break;
		
	 	   case 0x0040:
		   		break;
		
	   	   case 0x0080:
				PlayCon = 1;
				SpeechIndex1 = 0;
				SpeechIndex2 = 1;
				USER_A1601_SetStartAddr(SpeechIndex1);
				USER_A1601_CH2_SetStartAddr(SpeechIndex2);
				SACM_A1601_Play(Manual_Mode_Index, DAC1, 0);
				SACM_A1601_CH2_Play(Manual_Mode_Index, DAC2, 0);
		   		break;
		
	    	default:
		   		break;
		}// end of switch
		if(PlayCon)
		{
			if(SACM_A1601_Check_Con() == -1)
			{
				if(++SpeechIndex1 >= MaxSpeechNum)		// next speech
					SpeechIndex1 = 0;
				USER_A1601_SetStartAddr_Con(SpeechIndex1);
				SACM_A1601_Play_Con(Manual_Mode_Index, DAC1, 0);
			}
			if(SACM_A1601_CH2_Check_Con() == -1)
			{
				if(++SpeechIndex2 >= MaxSpeechNum)		// next speech
					SpeechIndex2 = 0;
				USER_A1601_CH2_SetStartAddr_Con(SpeechIndex2);
				SACM_A1601_CH2_Play_Con(Manual_Mode_Index, DAC2, 0);
			}
		}
		if(ServiceType == Foreground)
		{
			SACM_A1601_ServiceLoop();
			SACM_A1601_CH2_ServiceLoop();
		}
		System_ServiceLoop(); 		// Service loop for Key Scanning
	}// end of while
	return 0;
}