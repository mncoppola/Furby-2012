#ifndef	__GPCE_H__
#define	__GPCE_H__
//***********************************************************************************
//* File name  : GPCE.h
//* Description: This header file defines the ports available for user to use GPCE series.
//               The port setting constants is also included for users' convenience. 
//* Programmer : 
//* Create Date: 2005.04.02
//* Modified   :
//* Notes      : 
//***********************************************************************************
// Registers definition
#define P_IOA_Data				0x7000		// Write Data into data register and read from IOA pad
#define P_IOA_Buffer			0x7001		// Write Data into buffer register and read from buffer register
#define P_IOA_Dir				0x7002		// Direction vector for IOA
#define P_IOA_Attrib			0x7003		// Attribute vector for IOA
#define P_IOA_Latch				0x7004		// Latch PortA data for key change wake-up

#define P_IOB_Data				0x7005		// Write Data into the data register and read from IOB pad
#define P_IOB_Buffer			0x7006		// Write Data into buffer register and read from buffer register
#define P_IOB_Dir				0x7007		// Direction vector for IOB
#define P_IOB_Attrib			0x7008		// Attribute vector for IOB

#define P_FeedBack				0x7009		// Clock form external R,C
#define P_TimerA_Data			0x700A		// Data port for TimerA 
#define P_TimerA_Ctrl			0x700B		// Control Port for TimerA
#define P_TimerB_Data			0x700C		// Data port for TimerB
#define P_TimerB_Ctrl			0x700D		// Control Port for TimerB
#define P_TimeBase_Setup		0x700E		// TimerBase Freq. Set
#define P_TimeBase_Clear		0x700F		// Reset Timerbase counter
#define P_INT_Ctrl				0x7010		// for read INT flag(R)
#define P_INT_Clear				0x7011		// Clear interrupt source
#define P_Watchdog_Clear		0x7012		// Watchdog Reset
#define P_SystemClock			0x7013		// Change system clock frequency(include go to standby mode)

#define P_ADC					0x7014		// Data Port for AD
#define P_ADC_Ctrl				0x7015		// Control Port for AD control
#define P_ADC_Status			0x7015		// AD Port Status
#define P_DAC2					0x7016		// Data Port for DAC2
#define P_DAC1					0x7017		// Data Port for DAC1
#define P_DAC_Ctrl				0x702A		// Control Port for two DAC and audio output mode

#define P_LVD_Ctrl				0x7019		// Control Port for LVD

#define P_SIO_Data				0x701A		// serial interface IO	
#define P_SIO_Addr_Low			0x701B		// Address Port low
#define P_SIO_Addr_Mid			0x701C		// Address Port middle
#define P_SIO_Addr_High			0x701D		// Address Port high
#define P_SIO_Ctrl				0x701E		// Control Port
#define P_SIO_Start				0x701F		// Start port for serial interface
#define P_SIO_Stop				0x7020		// Stop port for serial interface

#define P_UART_Command1			0x7021		// Command1 Port for UART
#define P_UART_Command2			0x7022		// Command2 Port for UART
#define P_UART_Data				0x7023		// Data Port for UART
#define P_UART_BaudScalarLow	0x7024		// Set Baud Rate scalar low
#define P_UART_BaudScalarHigh	0x7025		// Set Baud Rate scalar high

#define P_ADC_MUX_Ctrl			0x702B		// Control Port
#define P_ADC_LINEIN_Data		0x702C		// Line in data
#define P_INT_Mask				0x702D		//R/W INT enable/disable
#define P_Flash_Ctrl			0x7555		//Internal flash access enable/disable
//----------------------------------------------

// Constants definition
// Define for P_INT_Ctrl 
#define C_IRQ6_TMB2				0x0001		//Timer B IRQ6
#define C_IRQ6_TMB1				0x0002		//Timer A IRQ6
#define C_IRQ5_2Hz				0x0004		//2Hz IRQ5
#define C_IRQ5_4Hz				0x0008		//4Hz IRQ5
#define C_IRQ4_1KHz				0x0010		//1024Hz IRQ4
#define C_IRQ4_2KHz				0x0020		//2048 IRQ4
#define C_IRQ4_4KHz				0x0040		//4096 IRQ4
#define C_IRQ3_KEY				0x0080		//Key Change IRQ3
#define C_IRQ3_Ext1				0x0100		//Ext1 IRQ3
#define C_IRQ3_Ext2				0x0200		//Ext2 IRQ3
#define C_IRQ2_TMB				0x0400		//Timer B IRQ2
#define C_FIQ_TMB				0x0800		//Timer B FIQ
#define C_IRQ1_TMA				0x1000		//Timer A IRQ1
#define C_FIQ_TMA				0x2000		//Timer A FIQ
#define C_IRQ0_PWM				0x4000		//PWM IRQ0
#define C_FIQ_PWM				0x8000		//PWM FIQ

// Define for P_TimerA_Ctrl, P_TimerB_Ctrl                               
#define C_Timer_Fosc_2			0x0000		// b0--b2: clock of source A
#define C_Timer_Fosc_256		0x0001		//
#define C_Timer_32768Hz			0x0002		//
#define C_Timer_8192Hz			0x0003		//
#define C_Timer_4096Hz			0x0004		//
#define C_Timer_A1				0x0005		//
#define C_Timer_A0				0x0006		//
#define C_Timer_Ext1			0x0007		//

#define C_Timer_2048Hz			0x0000		//b3--b5: clock of source B
#define C_Timer_1024Hz			0x0008		//
#define C_Timer_256Hz			0x0000		//
#define C_Timer_TMB1			0x0018		//
#define C_Timer_4Hz				0x0020		//
#define C_Timer_2Hz				0x0028		//
#define C_Timer_B1				0x0030		//
#define C_Timer_Ext2			0x0038		//

#define C_PWMO_Off				0x0000		//b6--b9: output pulse
#define C_PWMO_D1				0x0040		//
#define C_PWMO_D2				0x0080		//
#define C_PWMO_D3				0x00C0		//
#define C_PWMO_D4				0x0100		//
#define C_PWMO_D5				0x0140		//
#define C_PWMO_D6				0x0180		//
#define C_PWMO_D7				0x01C0		//
#define C_PWMO_D8				0x0200		//
#define C_PWMO_D9				0x0240		//
#define C_PWMO_D10				0x0280		//
#define C_PWMO_D11				0x02C0		//
#define C_PWMO_D12				0x0300		//
#define C_PWMO_D13				0x0340		//
#define C_PWMO_D14				0x0380		//
#define C_PWMO_Div_2			0x03C0		// 

// Define for P_SystemClock
#define C_Fcpu_24M				0x0000		// CPU clock is running at 24MHz
#define C_Fcpu_20M				0x0020		// CPU clock is running at 20MHz
#define C_Fcpu_32M				0x0040		// CPU clock is running at 32MHz
#define C_Fcpu_40M				0x0060		// CPU clock is running at 40MHz
#define C_Fcpu_49M				0x0080		// CPU clock is running at 49MHz

#define C_Fosc					0x0000		// b2..b0: frequency select 
#define C_Fosc_Div_2			0x0001		//
#define C_Fosc_Div_4			0x0002		//
#define C_Fosc_Div_8			0x0003		// (default)
#define C_Fosc_Div_16			0x0004		//
#define C_Fosc_Div_32			0x0005		//
#define C_Fosc_Div_64			0x0006		//
#define C_Sleep					0x0007		//

#define C_32K_Work				0x0010		// b4 = 1: at sleep mode,32.768k still work 
#define C_32K_Off				0x0000		// b4 = 0: at sleep mode,32.768k off 
#define C_StrongMode			0x0008		// b3 = 1: force strong mode
#define C_AutoWeakMode			0x0000		// b3 = 0: auto weak mode(default) 

#define C_PLL_Freq_24M			0x0000		//b5..b7: PLL frequency select
#define C_PLL_Freq_20M			0x0020		//
#define C_PLL_Freq_32M			0x0040		//
#define C_PLL_Freq_40M			0x0060		//
#define C_PLL_Freq_49M			0x0080		//

// Define for P_ADC_Ctrl
#define C_AD_Enable				0x0001		//b0=1: enable A/D converter
#define C_AD_Disable			0x0000		//b0=0: disable A/D converter
#define C_AD_Line_In			0x0002		//b1=1: microphone disable
#define C_AD_MIC_In				0x0000		//b1=0: microphone enable
#define C_AGC_Enable			0x0004		//b2=1: enable AGC function
#define C_AGC_Disable			0x0000		//b2=0: disable AGC function
#define C_AD_Sample				0x0004		//b3=1: sample the analog signal(manual mode)
#define C_AD_Hold				0x0000		//b3=0: hold(manual mode)
#define C_Auto_Mode				0x0010		//b4=1: A/D auto mode
#define C_Manual_Mode			0x0000		//b4=0: A/D manual mode
#define C_DAC_Current_2mA		0x0040		//b6=1: DAC current = 2mA @ vdd=3V(new option)
#define C_DAC_Current_3mA		0x0000		//b6=0: DAC current = 3mA @ vdd=3V(Default)
#define C_AD_Vref_VDD			0x0080		//b7=1: Vref is VDD
#define C_AD_Vref_VRTPAD		0x0000		//b7=0: Vref is from pin "VRTPAD"
#define C_AD_COMP				0x4000		//b14=1: output voltage of DAC0<Analog input signal
											//b14=0: output voltage of DAC0>Analog input signal
#define C_AD_RDY				0x8000		//b15=1: A/D digital data ready  0: not ready

// Define for P_DAC_Ctrl
#define C_DAC1_Direct			0x0000		// b8 b7: DAC1 latch
#define C_DAC1_LatchA			0x0080		// Latch data to DAC1 by TimerA 
#define C_DAC1_LatchB			0x0100		// Latch data to DAC1 by TimerB
#define C_DAC1_LatchAB			0x0180		// Latch data to DAC1 by TimerA or TimerB

#define C_DAC2_Direct			0x0000		// b6 b5: DAC2 latch
#define C_DAC2_LatchA			0x0020		// Latch data to DAC2 by TimerA
#define C_DAC2_LatchB			0x0040		// Latch data to DAC2 by TimerB
#define C_DAC2_LatchAB			0x0060		// Latch data to DAC2 by TimerA or TimerB

#define C_ADC_Direct			0x0000		// b4 b3: ADC latch
#define C_ADC_LatchA			0x0008		// Latch data to ADC by TimerA
#define C_ADC_LatchB			0x0010		// Latch data to ADC by TimerB
#define C_ADC_LatchAB			0x0018		// Latch data to ADC by TimerA or TimerB

#define C_DAC_Enable			0x0000
#define C_DAC_Disable			0x0002

// Define for P_LVD_Ctrl
#define C_LVD24V				0x0000		// LVD = 2.4V  b1b0 
#define C_LVD28V				0x0001		// LVD = 2.8V
#define C_LVD32V				0x0002		// LVD = 3.2V

#define C_LVD_Result			0x8000		// b15 = 1: below the selected LVD level

// GPCE061 flash operation instruction definition
#define C_EnableFlashAccess		0xAAAA
#define C_EraseFlashPage		0x5511
#define C_ProgramFlash			0x5533

//P_UART_Command1(W) constant definition
#define C_RX_INT_ENABLE			0x80		// 1:enable, 0:disable
#define C_TX_INT_ENABLE			0x40		// 1:enable, 0:disable
#define C_INTERNAL_RESET		0x20		// 1:reset, 0:non-reset
#define C_PARITY_CHECK			0x08		// 1:even, 0:odd
#define C_PARITY_ENABLE			0x04		// 1:enable, 0:disable
//P_UART_Command2(W) constant definition
#define C_RX_PIN_ENABLE			0x80
#define C_TX_PIN_ENABLE			0x40

//========================================================================================
// End of GPCE.h
//========================================================================================
#endif
