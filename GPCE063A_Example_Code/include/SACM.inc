//==========================================================================
// File Name   : SACM.inc
// Description : Hardware dependent external functions declaration
// Written by  : Ray Cheng
// Last modified date:
//              2005/12/26
//==========================================================================
.ifndef __SACM_INC__
.define __SACM_INC__

.external F_SP_RampUpDAC1
.external F_SP_RampDnDAC1
.external F_SP_RampUpDAC2
.external F_SP_RampDnDAC2
.external F_SP_SwitchChannel

.external F_SACM_S200_Init_
.external F_SACM_S200_SendDAC1
.external F_SACM_S200_SendDAC2
.external F_SACM_S200_StartPlay
.external F_SACM_S200_EndPlay
.external F_SACM_S200_DAC_Timer_X1
.external F_SACM_S200_DAC_Timer_X2

.external F_SACM_S480_Init_
.external F_SACM_S480_SendDAC1
.external F_SACM_S480_SendDAC2
.external F_SACM_S480_StartPlay
.external F_SACM_S480_EndPlay
.external F_SACM_S480_DAC_Timer_X1
.external F_SACM_S480_DAC_Timer_X2

.external F_SACM_S530_Init_
.external F_SACM_S530_SendDAC1
.external F_SACM_S530_SendDAC2
.external F_SACM_S530_StartPlay
.external F_SACM_S530_EndPlay
.external F_SACM_S530_DAC_Timer_X1
.external F_SACM_S530_DAC_Timer_X2

.external F_SACM_A1600_Init_
.external F_SACM_A1600_SendDAC1
.external F_SACM_A1600_SendDAC2
.external F_SACM_A1600_StartPlay
.external F_SACM_A1600_EndPlay
.external F_SACM_A1600_DAC_Timer_X1
.external F_SACM_A1600_DAC_Timer_X2

.external F_SACM_A1601_Init_
.external F_SACM_A1601_SendDAC1
.external F_SACM_A1601_SendDAC2
.external F_SACM_A1601_StartPlay
.external F_SACM_A1601_EndPlay
.external F_SACM_A1601_INT_ON
.external F_SACM_A1601_INT_OFF
.external F_SACM_A1601_DAC_Timer_X1
.external F_SACM_A1601_DAC_Timer_X2

.external F_SACM_A1601_CH2_Init_
.external F_SACM_A1601_CH2_SendDAC1
.external F_SACM_A1601_CH2_SendDAC2
.external F_SACM_A1601_CH2_StartPlay
.external F_SACM_A1601_CH2_EndPlay
.external F_SACM_A1601_CH2_INT_ON
.external F_SACM_A1601_CH2_INT_OFF
.external F_SACM_A1601_CH2_DAC_Timer_X1
.external F_SACM_A1601_CH2_DAC_Timer_X2

.external F_SACM_A1800_Init_
.external F_SACM_A1800_GetADC
.external F_SACM_A1800_SendDAC1
.external F_SACM_A1800_SendDAC2
.external F_SACM_A1800_StartPlay
.external F_SACM_A1800_EndPlay
.external F_SACM_A1800_EndRecord
.external F_SACM_A1800_DAC_Timer_X1
.external F_SACM_A1800_DAC_Timer_X2
.external F_SACM_A1800_ADC_Timer_X1
.external F_SACM_A1800_ADC_Timer_X2
.external F_SACM_A1800_ADC_Timer_X4

.external F_SACM_A3600_Init_
.external F_SACM_A3600_SendDAC1
.external F_SACM_A3600_SendDAC2
.external F_SACM_A3600_StartPlay
.external F_SACM_A3600_EndPlay
.external F_SACM_A3600_DAC_Timer_X1
.external F_SACM_A3600_DAC_Timer_X2

.external F_SACM_DVR520_Init_
.external F_SACM_DVR520_GetADC
.external F_SACM_DVR520_SendDAC1
.external F_SACM_DVR520_SendDAC2
.external F_SACM_DVR520_StartPlay
.external F_SACM_DVR520_EndPlay
.external F_SACM_DVR520_StartRecord
.external F_SACM_DVR520_EndRecord
.external F_SACM_DVR520_DAC_Timer_X1
.external F_SACM_DVR520_DAC_Timer_X2
.external F_SACM_DVR520_ADC_Timer_X1
.external F_SACM_DVR520_ADC_Timer_X2
.external F_SACM_DVR520_ADC_Timer_X4

.external F_SACM_DVR1600_Init_
.external F_SACM_DVR1600_GetADC
.external F_SACM_DVR1600_SendDAC1
.external F_SACM_DVR1600_SendDAC2
.external F_SACM_DVR1600_StartPlay
.external F_SACM_DVR1600_EndPlay
.external F_SACM_DVR1600_StartRecord
.external F_SACM_DVR1600_EndRecord
.external F_SACM_DVR1600_DAC_Timer_X1
.external F_SACM_DVR1600_DAC_Timer_X2
.external F_SACM_DVR1600_ADC_Timer_X1
.external F_SACM_DVR1600_ADC_Timer_X2
.external F_SACM_DVR1600_ADC_Timer_X4

.external F_SACM_DVR1800_Init_
.external F_SACM_DVR1800_GetADC
.external F_SACM_DVR1800_SendDAC1
.external F_SACM_DVR1800_SendDAC2
.external F_SACM_DVR1800_StartPlay
.external F_SACM_DVR1800_EndPlay
.external F_SACM_DVR1800_StartRecord
.external F_SACM_DVR1800_EndRecord
.external F_SACM_DVR1800_DAC_Timer_X1
.external F_SACM_DVR1800_DAC_Timer_X2
.external F_SACM_DVR1800_ADC_Timer_X1
.external F_SACM_DVR1800_ADC_Timer_X2
.external F_SACM_DVR1800_ADC_Timer_X4

.external F_SACM_DVR3200_Init_
.external F_SACM_DVR3200_GetADC
.external F_SACM_DVR3200_SendDAC1
.external F_SACM_DVR3200_SendDAC2
.external F_SACM_DVR3200_StartPlay
.external F_SACM_DVR3200_EndPlay
.external F_SACM_DVR3200_StartRecord
.external F_SACM_DVR3200_EndRecord
.external F_SACM_DVR3200_DAC_Timer_X1
.external F_SACM_DVR3200_DAC_Timer_X2
.external F_SACM_DVR3200_ADC_Timer_X1
.external F_SACM_DVR3200_ADC_Timer_X2
.external F_SACM_DVR3200_ADC_Timer_X4

.external F_SACM_DVR4800_Init_
.external F_SACM_DVR4800_GetADC
.external F_SACM_DVR4800_SendDAC1
.external F_SACM_DVR4800_SendDAC2
.external F_SACM_DVR4800_StartPlay
.external F_SACM_DVR4800_EndPlay
.external F_SACM_DVR4800_StartRecord
.external F_SACM_DVR4800_EndRecord
.external F_SACM_DVR4800_DAC_Timer_X1
.external F_SACM_DVR4800_DAC_Timer_X2
.external F_SACM_DVR4800_ADC_Timer_X1
.external F_SACM_DVR4800_ADC_Timer_X2
.external F_SACM_DVR4800_ADC_Timer_X4

.external F_SACM_MS01_Init_
.external F_SACM_MS01_SendDAC1
.external F_SACM_MS01_SendDAC2
.external F_SACM_MS01_StartPlay
.external F_SACM_MS01_EndPlay
.external F_SACM_MS01_DAC_Timer_X1
.external F_SACM_MS01_DAC_Timer_X2

.external F_SACM_MS02_Init_
.external F_SACM_MS02_SendDAC1
.external F_SACM_MS02_SendDAC2
.external F_SACM_MS02_StartPlay
.external F_SACM_MS02_EndPlay
.external F_SACM_MS02_DAC_Timer_X1
.external F_SACM_MS02_DAC_Timer_X2

.external F_SACM_PCM_Init_
.external F_SACM_PCM_GetADC
.external F_SACM_PCM_SendDAC1
.external F_SACM_PCM_SendDAC2
.external F_SACM_PCM_StartPlay
.external F_SACM_PCM_EndPlay
.external F_SACM_PCM_EndRecord
.external F_SACM_PCM_DAC_Timer_X1
.external F_SACM_PCM_DAC_Timer_X2
.external F_SACM_PCM_ADC_Timer_X1
.external F_SACM_PCM_ADC_Timer_X2
.external F_SACM_PCM_ADC_Timer_X4

.external F_SACM_VC_Init_
.external F_SACM_VC_GetADC
.external F_SACM_VC_SendDAC1
.external F_SACM_VC_SendDAC2
.external F_SACM_VC_StartPlay
.external F_SACM_VC_EndPlay
.external F_SACM_VC_DAC_Timer_X1
.external F_SACM_VC_DAC_Timer_X2
.external F_SACM_VC_ADC_Timer_X1
.external F_SACM_VC_ADC_Timer_X2
.external F_SACM_VC_ADC_Timer_X4

.endif
