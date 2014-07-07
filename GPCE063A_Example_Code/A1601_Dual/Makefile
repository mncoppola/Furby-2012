#####################################################################
#																	 
#	Created by u'nSP IDE		09:25:03	07/30/08
#
#####################################################################




APPDIR	= C:\PROGRA~1\GENERA~1\UNSPID~1.3

OUTDIR	= .\Debug

CC	= $(APPDIR)\toolchain\gcc

AS	= $(APPDIR)\toolchain\xasm16

LD	= $(APPDIR)\toolchain\xlink16

AR	= $(APPDIR)\toolchain\xlib16

RESC	= $(APPDIR)\toolchain\resc

RM	= $(APPDIR)\toolchain\rm -f

INCLUDES	= -I"D:/GPCE_Serial/GPCE063/SACM_N/A1601_Dual" -I"C:/Program Files/Generalplus/unSPIDE 3.0.3/library/include" -I"C:/Program Files/Generalplus/unSPIDE 3.0.3/library/include/sys" -I"../include"

BODY	= -body GPCE063A_Flash -nobdy -bfile "D:\GPCE_Serial\GPCE063\SACM_N\A1601_Dual\A1601_Dual.bdy"

BODYFILE	= "D:\GPCE_Serial\GPCE063\SACM_N\A1601_Dual\A1601_Dual.bdy" 

BINFILE	= "$(OUTDIR)\A1601_Dual.S37"

ARYFILE	= "$(OUTDIR)\A1601_Dual.ary"

SBMFILE	= "$(OUTDIR)\A1601_Dual.sbm"

OPT	= -S -gstabs -mglobal-var-iram

ASFLAGS	= -t5 -d

CASFLAGS	= -t5 -wpop

CFLAGS	= $(OPT) -B$(APPDIR)\toolchain\ $(INCLUDES) 

BINTYPE	= -as

LDFLAGS	= -listfile -infblk "D:\GPCE_Serial\GPCE063\SACM_N\A1601_Dual\A1601_Dual.inb"

EXTRAFLAGS	= 


OBJFILES	= \
	"$(OUTDIR)\t09a_a16.res" \
	"$(OUTDIR)\t09b_a16.res" \
	"$(OUTDIR)\t09c_a16.res" \
	"$(OUTDIR)\Resource.obj" \
	"$(OUTDIR)\main.obj" \
	"$(OUTDIR)\Isr.obj" \
	"$(OUTDIR)\SACM_A1601_CH2_User.obj" \
	"$(OUTDIR)\System.obj" \
	"$(OUTDIR)\SACM_A1601_User.obj" \
	"$(OUTDIR)\SPI_Flash_CE063.obj" 

"$(OUTDIR)\t09a_a16.res": "D:\GPCE_Serial\GPCE063\SACM_N\A1601_Dual\voice\t09a.a16"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\A1601_Dual\voice\t09a.a16" "$(OUTDIR)\t09a_a16.res" RES_T09A_A16 

"$(OUTDIR)\t09b_a16.res": "D:\GPCE_Serial\GPCE063\SACM_N\A1601_Dual\voice\t09b.a16"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\A1601_Dual\voice\t09b.a16" "$(OUTDIR)\t09b_a16.res" RES_T09B_A16 

"$(OUTDIR)\t09c_a16.res": "D:\GPCE_Serial\GPCE063\SACM_N\A1601_Dual\voice\t09c.a16"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\A1601_Dual\voice\t09c.a16" "$(OUTDIR)\t09c_a16.res" RES_T09C_A16 

"$(OUTDIR)\Resource.obj": "D:\GPCE_Serial\GPCE063\SACM_N\A1601_Dual\Resource.asm" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\Resource.lst" -o "$(OUTDIR)\Resource.obj" "D:\GPCE_Serial\GPCE063\SACM_N\A1601_Dual\Resource.asm" 

"$(OUTDIR)\main.asm": "D:\GPCE_Serial\GPCE063\SACM_N\A1601_Dual\main.c" 
	set PATH="$(APPDIR)\toolchain\";%PATH% & \
	$(CC) $(CFLAGS) -o "$(OUTDIR)/main.asm" "D:/GPCE_Serial/GPCE063/SACM_N/A1601_Dual/main.c" 

"$(OUTDIR)\main.obj": "$(OUTDIR)\main.asm"
	$(AS) $(CASFLAGS) $(INCLUDES) -l "$(OUTDIR)\main.lst" -o "$(OUTDIR)\main.obj" "$(OUTDIR)\main.asm" 

"$(OUTDIR)\Isr.obj": "D:\GPCE_Serial\GPCE063\SACM_N\A1601_Dual\Isr.asm" "..\include\GPCE063.inc" "..\include\A1601.inc" "..\include\A1601_CH2.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\Isr.lst" -o "$(OUTDIR)\Isr.obj" "D:\GPCE_Serial\GPCE063\SACM_N\A1601_Dual\Isr.asm" 

"$(OUTDIR)\SACM_A1601_CH2_User.obj": "D:\GPCE_Serial\GPCE063\SACM_N\include\SACM_A1601_CH2_User.asm" "D:\GPCE_Serial\GPCE063\SACM_N\include\GPCE063.inc" "D:\GPCE_Serial\GPCE063\SACM_N\include\A1601_CH2.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\SACM_A1601_CH2_User.lst" -o "$(OUTDIR)\SACM_A1601_CH2_User.obj" "D:\GPCE_Serial\GPCE063\SACM_N\include\SACM_A1601_CH2_User.asm" 

"$(OUTDIR)\System.obj": "D:\GPCE_Serial\GPCE063\SACM_N\include\System.asm" "D:\GPCE_Serial\GPCE063\SACM_N\include\GPCE063.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\System.lst" -o "$(OUTDIR)\System.obj" "D:\GPCE_Serial\GPCE063\SACM_N\include\System.asm" 

"$(OUTDIR)\SACM_A1601_User.obj": "D:\GPCE_Serial\GPCE063\SACM_N\include\SACM_A1601_User.asm" "D:\GPCE_Serial\GPCE063\SACM_N\include\GPCE063.inc" "D:\GPCE_Serial\GPCE063\SACM_N\include\A1601.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\SACM_A1601_User.lst" -o "$(OUTDIR)\SACM_A1601_User.obj" "D:\GPCE_Serial\GPCE063\SACM_N\include\SACM_A1601_User.asm" 

"$(OUTDIR)\SPI_Flash_CE063.obj": "D:\GPCE_Serial\GPCE063\SACM\include\SPI_Flash_CE063.asm" "D:\GPCE_Serial\GPCE063\SACM\include\GPCE063.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\SPI_Flash_CE063.lst" -o "$(OUTDIR)\SPI_Flash_CE063.obj" "D:\GPCE_Serial\GPCE063\SACM\include\SPI_Flash_CE063.asm" 


.SUFFIXES : .c .asm .obj .s37 .tsk .res

all :	 BEFOREBUILD "$(OUTDIR)" $(BINFILE)

BEFOREBUILD :

"$(OUTDIR)" :
	if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

$(BINFILE) : $(OBJFILES) 
	$(LD) $(BINTYPE) $(ARYFILE) $(BINFILE) $(LDFLAGS) $(BODY) $(EXTRAFLAGS)

compile :	 $(OBJFILES)

clean :
	$(RM) "$(OUTDIR)\t09a_a16.res" 
	$(RM) "$(OUTDIR)\t09b_a16.res" 
	$(RM) "$(OUTDIR)\t09c_a16.res" 
	$(RM) "$(OUTDIR)\Resource.obj" 
	$(RM) "$(OUTDIR)\Resource.lst" 
	$(RM) "$(OUTDIR)\main.obj" 
	$(RM) "$(OUTDIR)\main.lst" 
	$(RM) "$(OUTDIR)\main.asm" 
	$(RM) "$(OUTDIR)\Isr.obj" 
	$(RM) "$(OUTDIR)\Isr.lst" 
	$(RM) "$(OUTDIR)\SACM_A1601_CH2_User.obj" 
	$(RM) "$(OUTDIR)\SACM_A1601_CH2_User.lst" 
	$(RM) "$(OUTDIR)\System.obj" 
	$(RM) "$(OUTDIR)\System.lst" 
	$(RM) "$(OUTDIR)\SACM_A1601_User.obj" 
	$(RM) "$(OUTDIR)\SACM_A1601_User.lst" 
	$(RM) "$(OUTDIR)\SPI_Flash_CE063.obj" 
	$(RM) "$(OUTDIR)\SPI_Flash_CE063.lst" 
	$(RM) $(BINFILE) $(SBMFILE) 

.c.asm:
	$(CC) $(CFLAGS) $(INCLUDES) -o "$(OUTDIR)/$@" $<

.asm.obj:
	$(AS) $(ASFLAGS) $(INCLUDES) -o "$(OUTDIR)/$@" $<

