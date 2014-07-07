// GCC for GeneralPlus u'nSP version 1.1.0.3
// Command: C:\PROGRA~1\GENERA~1\UNSPID~1.4\toolchain\cc1.exe C:\DOCUME~1\raycheng\LOCALS~1\Temp\ccXW7NSZ.i -fkeep-inline-functions -quiet -dumpbase main.c -mglobal-var-iram -gstabs -o .\Debug/main.asm
	.external __sn_func_ptr_sec

// gcc2_compiled.:

.debug
	.dw '.stabs "D:/WorkingFolder/Library_Release/SACMV41b_Beta/GPCE063A_Example_V41b/GPCE063A Example Code/A1601/",0x64,0,3,',0,0,offset Ltext0,seg Ltext0,0x0d,0x0a
.code
.debug
	.dw '.stabs "D:/WorkingFolder/Library_Release/SACMV41b_Beta/GPCE063A_Example_V41b/GPCE063A Example Code/A1601/main.c",0x64,0,3,',0,0,offset Ltext0,seg Ltext0,0x0d,0x0a
.code
.code
Ltext0:
.debug
	.dw '.stabs "int:t1=r1;-32768;32767;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "char:t2=r2;0;127;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "long int:t3=r3;-2147483648;2147483647;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "unsigned int:t4=r4;0;65535;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "long unsigned int:t5=r5;0;4294967295;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "long long int:t6=r6;-2147483648;2147483647;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "long long unsigned int:t7=r7;0;4294967295;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "short int:t8=r8;-32768;32767;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "short unsigned int:t9=r9;0;65535;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "signed char:t10=r10;-32768;32767;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "unsigned char:t11=r11;0;65535;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "float:t12=r1;2;0;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "double:t13=r1;2;0;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "long double:t14=r1;2;0;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "complex int:t15=s2real:1,0,16;imag:1,16,16;;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "complex float:t16=r16;2;0;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "complex double:t17=r17;2;0;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "complex long double:t18=r18;2;0;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "void:t19=19",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "Key:G4",32,0,0,',0,0,offset _Key,seg _Key,0x0d,0x0a
.CODE
.debug
	.dw '.stabs "SpeechIndex:G4",32,0,0,',0,0,offset _SpeechIndex,seg _SpeechIndex,0x0d,0x0a
.CODE
.debug
	.dw '.stabs "VolumeIndex:G4",32,0,0,',0,0,offset _VolumeIndex,seg _VolumeIndex,0x0d,0x0a
.CODE
.debug
	.dw '.stabs "DAC_FIR_Type:G4",32,0,0,',0,0,offset _DAC_FIR_Type,seg _DAC_FIR_Type,0x0d,0x0a
.CODE
.debug
	.dw '.stabs "PauseFlag:G4",32,0,0,',0,0,offset _PauseFlag,seg _PauseFlag,0x0d,0x0a
.CODE
.debug
	.dw '.stabs "PlayCon:G4",32,0,0,',0,0,offset _PlayCon,seg _PlayCon,0x0d,0x0a
.CODE
.code
.debug
	.dw '.stabs "main:F1",36,0,0,',0,0,offset _main,seg _main,0x0d,0x0a
.CODE
.public _main
_main:	.proc
.debug
	.dw '.stabn 0x44,0,77,',0,0
	.dd LM1-_main
	.dw 0x0d,0x0a
.code
LM1:
	// total=1, vars=1
	// frame_pointer_needed: 1
.debug
	.dw '.stabn 0xa6,0,0,1',0x0d, 0x0a
.code
	PUSH BP to [SP]
	SP-=1
	BP=SP+1

	R1=BP+4
	[BP]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,78,',0,0
	.dd LM2-_main
	.dw 0x0d,0x0a
.code
LM2:
LBB2:
	R1=0	// QImode move
	[_Key]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,79,',0,0
	.dd LM3-_main
	.dw 0x0d,0x0a
.code
LM3:
	R1=0	// QImode move
	[_SpeechIndex]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,80,',0,0
	.dd LM4-_main
	.dw 0x0d,0x0a
.code
LM4:
	R1=9	// QImode move
	[_VolumeIndex]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,81,',0,0
	.dd LM5-_main
	.dw 0x0d,0x0a
.code
LM5:
	R1=0	// QImode move
	[_PauseFlag]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,82,',0,0
	.dd LM6-_main
	.dw 0x0d,0x0a
.code
LM6:
	R1=2	// QImode move
	[_DAC_FIR_Type]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,83,',0,0
	.dd LM7-_main
	.dw 0x0d,0x0a
.code
LM7:
	R1=0	// QImode move
	[_PlayCon]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,85,',0,0
	.dd LM8-_main
	.dw 0x0d,0x0a
.code
LM8:
	CALL _System_Initial	// call without return value
.debug
	.dw '.stabn 0x44,0,86,',0,0
	.dd LM9-_main
	.dw 0x0d,0x0a
.code
LM9:
	CALL _SPI_Initial	// call with return value
.debug
	.dw '.stabn 0x44,0,87,',0,0
	.dd LM10-_main
	.dw 0x0d,0x0a
.code
LM10:
	CALL _SACM_A1601_Initial	// call without return value
.debug
	.dw '.stabn 0x44,0,88,',0,0
	.dd LM11-_main
	.dw 0x0d,0x0a
.code
LM11:
	R1=3	// QImode move
	[SP--]=R1	// QImode move
	R1=3	// QImode move
	[SP--]=R1	// QImode move
	R1=[_SpeechIndex]	// QImode move
	[SP--]=R1	// QImode move
	CALL _SACM_A1601_Play	// call without return value
	SP = SP + 3	//SP
.debug
	.dw '.stabn 0x44,0,89,',0,0
	.dd LM12-_main
	.dw 0x0d,0x0a
.code
LM12:
L3:
	PC=L5	// jump
	PC=L4	// jump
L5:
.debug
	.dw '.stabn 0x44,0,91,',0,0
	.dd LM13-_main
	.dw 0x0d,0x0a
.code
LM13:
	CALL _SP_GetCh	// call with return value
	[_Key]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,92,',0,0
	.dd LM14-_main
	.dw 0x0d,0x0a
.code
LM14:
	R1=[_Key]	// QImode move
	CMP R1,8	// QImode compare
	NSJZ L11	//QImode EQ
	CMP R1,8	// QImode compare
	NSJA L21	//QImode GTU
	CMP R1,1	// QImode compare
	NSJZ L8	//QImode EQ
	CMP R1,1	// QImode compare
	NSJB L7	//QImode LTU
	CMP R1,2	// QImode compare
	NSJZ L9	//QImode EQ
	CMP R1,4	// QImode compare
	NSJZ L10	//QImode EQ
	PC=L19	// jump
L21:
	CMP R1,32	// QImode compare
	NSJZ L14	//QImode EQ
	CMP R1,32	// QImode compare
	NSJA L22	//QImode GTU
	CMP R1,16	// QImode compare
	NSJZ L12	//QImode EQ
	PC=L19	// jump
L22:
	CMP R1,64	// QImode compare
	NSJZ L16	//QImode EQ
	CMP R1,128	// QImode compare
	NSJZ L18	//QImode EQ
	PC=L19	// jump
LBB3:
L7:
.debug
	.dw '.stabn 0x44,0,95,',0,0
	.dd LM15-_main
	.dw 0x0d,0x0a
.code
LM15:
	PC=L6	// jump
L8:
.debug
	.dw '.stabn 0x44,0,98,',0,0
	.dd LM16-_main
	.dw 0x0d,0x0a
.code
LM16:
	R1=0	// QImode move
	[_PlayCon]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,99,',0,0
	.dd LM17-_main
	.dw 0x0d,0x0a
.code
LM17:
	R1=3	// QImode move
	[SP--]=R1	// QImode move
	R1=3	// QImode move
	[SP--]=R1	// QImode move
	R1=[_SpeechIndex]	// QImode move
	[SP--]=R1	// QImode move
	CALL _SACM_A1601_Play	// call without return value
	SP = SP + 3	//SP
.debug
	.dw '.stabn 0x44,0,100,',0,0
	.dd LM18-_main
	.dw 0x0d,0x0a
.code
LM18:
	PC=L6	// jump
L9:
.debug
	.dw '.stabn 0x44,0,103,',0,0
	.dd LM19-_main
	.dw 0x0d,0x0a
.code
LM19:
	R1=0	// QImode move
	[_PlayCon]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,104,',0,0
	.dd LM20-_main
	.dw 0x0d,0x0a
.code
LM20:
	CALL _SACM_A1601_Stop	// call without return value
.debug
	.dw '.stabn 0x44,0,105,',0,0
	.dd LM21-_main
	.dw 0x0d,0x0a
.code
LM21:
	PC=L6	// jump
L10:
.debug
	.dw '.stabn 0x44,0,108,',0,0
	.dd LM22-_main
	.dw 0x0d,0x0a
.code
LM22:
	CALL _SACM_A1601_Pause	// call without return value
.debug
	.dw '.stabn 0x44,0,109,',0,0
	.dd LM23-_main
	.dw 0x0d,0x0a
.code
LM23:
	PC=L6	// jump
L11:
.debug
	.dw '.stabn 0x44,0,112,',0,0
	.dd LM24-_main
	.dw 0x0d,0x0a
.code
LM24:
	CALL _SACM_A1601_Resume	// call without return value
.debug
	.dw '.stabn 0x44,0,113,',0,0
	.dd LM25-_main
	.dw 0x0d,0x0a
.code
LM25:
	PC=L6	// jump
L12:
.debug
	.dw '.stabn 0x44,0,116,',0,0
	.dd LM26-_main
	.dw 0x0d,0x0a
.code
LM26:
	R2=[_SpeechIndex]	// QImode move
	R1=R2+1
	R2=R1	// QImode move
	[_SpeechIndex]=R2	// QImode move
	CMP R2,2	// QImode compare
	NSJNA L13	//QImode LEU
.debug
	.dw '.stabn 0x44,0,117,',0,0
	.dd LM27-_main
	.dw 0x0d,0x0a
.code
LM27:
	R1=0	// QImode move
	[_SpeechIndex]=R1	// QImode move
L13:
.debug
	.dw '.stabn 0x44,0,118,',0,0
	.dd LM28-_main
	.dw 0x0d,0x0a
.code
LM28:
	R1=0	// QImode move
	[_PlayCon]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,119,',0,0
	.dd LM29-_main
	.dw 0x0d,0x0a
.code
LM29:
	R1=3	// QImode move
	[SP--]=R1	// QImode move
	R1=3	// QImode move
	[SP--]=R1	// QImode move
	R1=[_SpeechIndex]	// QImode move
	[SP--]=R1	// QImode move
	CALL _SACM_A1601_Play	// call without return value
	SP = SP + 3	//SP
.debug
	.dw '.stabn 0x44,0,120,',0,0
	.dd LM30-_main
	.dw 0x0d,0x0a
.code
LM30:
	PC=L6	// jump
L14:
.debug
	.dw '.stabn 0x44,0,123,',0,0
	.dd LM31-_main
	.dw 0x0d,0x0a
.code
LM31:
	R2=[_VolumeIndex]	// QImode move
	R1=R2+1
	R2=R1	// QImode move
	[_VolumeIndex]=R2	// QImode move
	CMP R2,15	// QImode compare
	NSJNA L15	//QImode LEU
.debug
	.dw '.stabn 0x44,0,124,',0,0
	.dd LM32-_main
	.dw 0x0d,0x0a
.code
LM32:
	R1=0	// QImode move
	[_VolumeIndex]=R1	// QImode move
L15:
.debug
	.dw '.stabn 0x44,0,125,',0,0
	.dd LM33-_main
	.dw 0x0d,0x0a
.code
LM33:
	R1=[_VolumeIndex]	// QImode move
	[SP--]=R1	// QImode move
	CALL _USER_A1601_Volume	// call without return value
	SP = SP + 1	//SP
.debug
	.dw '.stabn 0x44,0,126,',0,0
	.dd LM34-_main
	.dw 0x0d,0x0a
.code
LM34:
	PC=L6	// jump
L16:
.debug
	.dw '.stabn 0x44,0,129,',0,0
	.dd LM35-_main
	.dw 0x0d,0x0a
.code
LM35:
	R2=[_DAC_FIR_Type]	// QImode move
	R1=R2+1
	R2=R1	// QImode move
	[_DAC_FIR_Type]=R2	// QImode move
	CMP R2,3	// QImode compare
	NSJNA L17	//QImode LEU
.debug
	.dw '.stabn 0x44,0,130,',0,0
	.dd LM36-_main
	.dw 0x0d,0x0a
.code
LM36:
	R1=0	// QImode move
	[_DAC_FIR_Type]=R1	// QImode move
L17:
.debug
	.dw '.stabn 0x44,0,131,',0,0
	.dd LM37-_main
	.dw 0x0d,0x0a
.code
LM37:
	R1=[_DAC_FIR_Type]	// QImode move
	[SP--]=R1	// QImode move
	CALL _SACM_A1601_DA_FIRType	// call without return value
	SP = SP + 1	//SP
.debug
	.dw '.stabn 0x44,0,132,',0,0
	.dd LM38-_main
	.dw 0x0d,0x0a
.code
LM38:
	PC=L6	// jump
L18:
.debug
	.dw '.stabn 0x44,0,135,',0,0
	.dd LM39-_main
	.dw 0x0d,0x0a
.code
LM39:
	R1=1	// QImode move
	[_PlayCon]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,136,',0,0
	.dd LM40-_main
	.dw 0x0d,0x0a
.code
LM40:
	R1=0	// QImode move
	[_SpeechIndex]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,137,',0,0
	.dd LM41-_main
	.dw 0x0d,0x0a
.code
LM41:
	R1=[_SpeechIndex]	// QImode move
	[SP--]=R1	// QImode move
	CALL _USER_A1601_SetStartAddr	// call with return value
	SP = SP + 1	//SP
.debug
	.dw '.stabn 0x44,0,138,',0,0
	.dd LM42-_main
	.dw 0x0d,0x0a
.code
LM42:
	R1=1	// QImode move
	[SP--]=R1	// QImode move
	R1=3	// QImode move
	[SP--]=R1	// QImode move
	R1=(-1)	// QImode move
	[SP--]=R1	// QImode move
	CALL _SACM_A1601_Play	// call without return value
	SP = SP + 3	//SP
.debug
	.dw '.stabn 0x44,0,139,',0,0
	.dd LM43-_main
	.dw 0x0d,0x0a
.code
LM43:
	PC=L6	// jump
L19:
.debug
	.dw '.stabn 0x44,0,142,',0,0
	.dd LM44-_main
	.dw 0x0d,0x0a
.code
LM44:
	PC=L6	// jump
.debug
	.dw '.stabn 0x44,0,143,',0,0
	.dd LM45-_main
	.dw 0x0d,0x0a
.code
LM45:
LBE3:
L6:
.debug
	.dw '.stabn 0x44,0,144,',0,0
	.dd LM46-_main
	.dw 0x0d,0x0a
.code
LM46:
	R1=[_PlayCon]	// QImode move
	CMP R1,0	// QImode test
	NSJZ L23	//QImode EQ
.debug
	.dw '.stabn 0x44,0,146,',0,0
	.dd LM47-_main
	.dw 0x0d,0x0a
.code
LM47:
	CALL _SACM_A1601_Check_Con	// call with return value
	CMP R1,(-1)	// QImode compare
	NSJNZ L23	//QImode NE
.debug
	.dw '.stabn 0x44,0,148,',0,0
	.dd LM48-_main
	.dw 0x0d,0x0a
.code
LM48:
LBB4:
	R2=[_SpeechIndex]	// QImode move
	R1=R2+1
	R2=R1	// QImode move
	[_SpeechIndex]=R2	// QImode move
	CMP R2,2	// QImode compare
	NSJNA L25	//QImode LEU
.debug
	.dw '.stabn 0x44,0,149,',0,0
	.dd LM49-_main
	.dw 0x0d,0x0a
.code
LM49:
	R1=0	// QImode move
	[_SpeechIndex]=R1	// QImode move
L25:
.debug
	.dw '.stabn 0x44,0,150,',0,0
	.dd LM50-_main
	.dw 0x0d,0x0a
.code
LM50:
	R1=[_SpeechIndex]	// QImode move
	[SP--]=R1	// QImode move
	CALL _USER_A1601_SetStartAddr_Con	// call with return value
	SP = SP + 1	//SP
.debug
	.dw '.stabn 0x44,0,151,',0,0
	.dd LM51-_main
	.dw 0x0d,0x0a
.code
LM51:
	R1=2	// QImode move
	[SP--]=R1	// QImode move
	R1=3	// QImode move
	[SP--]=R1	// QImode move
	R1=(-1)	// QImode move
	[SP--]=R1	// QImode move
	CALL _SACM_A1601_Play_Con	// call without return value
	SP = SP + 3	//SP
.debug
	.dw '.stabn 0x44,0,152,',0,0
	.dd LM52-_main
	.dw 0x0d,0x0a
.code
LM52:
LBE4:
L24:
L23:
.debug
	.dw '.stabn 0x44,0,155,',0,0
	.dd LM53-_main
	.dw 0x0d,0x0a
.code
LM53:
	CALL _SACM_A1601_ServiceLoop	// call without return value
L26:
.debug
	.dw '.stabn 0x44,0,156,',0,0
	.dd LM54-_main
	.dw 0x0d,0x0a
.code
LM54:
	CALL _System_ServiceLoop	// call without return value
.debug
	.dw '.stabn 0x44,0,157,',0,0
	.dd LM55-_main
	.dw 0x0d,0x0a
.code
LM55:
	PC=L3	// jump
L4:
.debug
	.dw '.stabn 0x44,0,158,',0,0
	.dd LM56-_main
	.dw 0x0d,0x0a
.code
LM56:
	R1=0	// QImode move
	PC=L2	// jump
.debug
	.dw '.stabn 0x44,0,159,',0,0
	.dd LM57-_main
	.dw 0x0d,0x0a
.code
LM57:
LBE2:
.debug
	.dw '.stabn 0x44,0,159,',0,0
	.dd LM58-_main
	.dw 0x0d,0x0a
.code
LM58:
L2:

	SP+=1
	POP BP from [SP]
	RETF
	.endp	// end of main

.debug
	.dw '.stabn 0xc0,0,0,',0,0
	.dd LBB2-_main
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabn 0xc0,0,0,',0,0
	.dd LBB3-_main
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabn 0xe0,0,0,',0,0
	.dd LBE3-_main
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabn 0xc0,0,0,',0,0
	.dd LBB4-_main
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabn 0xe0,0,0,',0,0
	.dd LBE4-_main
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabn 0xe0,0,0,',0,0
	.dd LBE2-_main
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabf ',0,0
	.dd LME1-_main
	.dw 0x0d,0x0a
.code
LME1:
.iram
.public _Key
_Key:
	.dw 0
.iram
.public _SpeechIndex
_SpeechIndex:
	.dw 0
.iram
.public _VolumeIndex
_VolumeIndex:
	.dw 0
.iram
.public _DAC_FIR_Type
_DAC_FIR_Type:
	.dw 0
.iram
.public _PauseFlag
_PauseFlag:
	.dw 0
.iram
.public _PlayCon
_PlayCon:
	.dw 0
.external _System_ServiceLoop
.external _SACM_A1601_ServiceLoop
.external _SACM_A1601_Play_Con
.external _USER_A1601_SetStartAddr_Con
.external _SACM_A1601_Check_Con
.external _USER_A1601_SetStartAddr
.external _SACM_A1601_DA_FIRType
.external _USER_A1601_Volume
.external _SACM_A1601_Resume
.external _SACM_A1601_Pause
.external _SACM_A1601_Stop
.external _SP_GetCh
.external _SACM_A1601_Play
.external _SACM_A1601_Initial
.external _SPI_Initial
.external _System_Initial
	.end
