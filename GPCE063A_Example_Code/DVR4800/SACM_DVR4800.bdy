[EMULATOR]
EMUS=Default,nDefault.dll,FALSE;
EMUS=PortIO,PortIO.dll,TRUE;
EMUS=Input_Output,Input_Output.dll,TRUE;
EMUS=AD,AdSim.dll,TRUE;
EMUS=PWM,PwmSIm.dll,TRUE;

[Debug Menu]
BmpFile=FastWithOutDnld.BMP
DebugWithoutDownload=TRUE
Count=4
Menu1=Memory
Menu2=Register
Menu3=Command
Menu4=BreakPoints


[Memory]
Name=Memory
Type=2
Start=0
End=65535
ReadOnly=0
Bits=16
EnableFlag=3

[Register]
Name=RegisterWindow
Type=1
EnableFlag=3

[Command]
Name=CommandWindow
Type=1
EnableFlag=3

[BreakPoints]
Name = BreakPointsWindow
Type=1
EnableFlag=3

[ARCH]
BODY=GPCE063A_Flash;
SEC=RAM,0,7FF,W;
SEC=FLASH,8000,FBFF,F;
SEC=SysROM,FC00,FFF4,F;
SEC=Interrupt,FFF5,FFFF,F;
SEC=I/O,2000,2FFF,W;
BANK=1,FFFF;
CPUTYPE=unsp002;
DMAENABLE=1;
PCTR_EXIST=1;
PCTR_LDOP=1;
PCTR_CCLK=1;
PCTR_WEB_RDB=1;
DEFAULTISAVER=ISA13;
PESUDOINST=7fff;
TSMCPSUDOINST=26ff;
FLASHWORDPROGRAMINST=5533;
WORDPROGRAMDONEINST=FFFF;
MEMORYTYPE=UmcFlash;
FASTDOWN=1;
LOCATE=IRQVec,FFF5;
PRINTER_SLEEP=34;
DISABLEOUTPUTONLY=1;
USB_SCK_SEL=1;
DISABLEICESOFTBP = 1;
INFOBLOCKENABLE=1;
InfoBlockStart=8000;
MemForInfo=2700;
InfoBlockSize=1;
InfoDefault=0xFF00;
DISABLECOMPILEROPTIMIZE=1;
INFOBLKDLG=3;