#####################################################################
#																	 
#	Created by u'nSP IDE		16:09:27	01/22/10
#
#####################################################################




APPDIR	= C:\PROGRA~1\GENERA~1\UNSPID~1.1

OUTDIR	= .\Debug

CC	= $(APPDIR)\toolchain\gcc

AS	= $(APPDIR)\toolchain\xasm16

LD	= $(APPDIR)\toolchain\xlink16

AR	= $(APPDIR)\toolchain\xlib16

RESC	= $(APPDIR)\toolchain\resc

RM	= $(APPDIR)\toolchain\rm -f

INCLUDES	= -I"V:/svn/Library/16-bit/SACM_Library/Example Code/SACM Example Code/GPCE063A Example Code/DVR4800" -I"C:/Program Files/Generalplus/unSPIDE 3.0.3.1/library/include" -I"C:/Program Files/Generalplus/unSPIDE 3.0.3.1/library/include/sys" -I"../include"

BODY	= -body GPCE063A_Flash -nobdy -bfile "V:\svn\Library\16-bit\SACM_Library\Example Code\SACM Example Code\GPCE063A Example Code\DVR4800\SACM_DVR4800.bdy"

BODYFILE	= "V:\svn\Library\16-bit\SACM_Library\Example Code\SACM Example Code\GPCE063A Example Code\DVR4800\SACM_DVR4800.bdy" 

BINFILE	= "$(OUTDIR)\SACM_DVR4800.S37"

ARYFILE	= "$(OUTDIR)\SACM_DVR4800.ary"

SBMFILE	= "$(OUTDIR)\SACM_DVR4800.sbm"

OPT	= -S -gstabs -mglobal-var-iram

ASFLAGS	= -t5 -d

CASFLAGS	= -t5 -wpop

CFLAGS	= $(OPT) -B$(APPDIR)\toolchain\ $(INCLUDES) 

BINTYPE	= -as

LDFLAGS	= -listfile -infblk "V:\svn\Library\16-bit\SACM_Library\Example Code\SACM Example Code\GPCE063A Example Code\DVR4800\SACM_DVR4800.inb"

EXTRAFLAGS	= 


OBJFILES	= \
	"$(OUTDIR)\chimeA_5_A48.res" \
	"$(OUTDIR)\chimeA_4_A48.res" \
	"$(OUTDIR)\Resource.obj" \
	"$(OUTDIR)\Isr.obj" \
	"$(OUTDIR)\main.obj" \
	"$(OUTDIR)\System.obj" \
	"$(OUTDIR)\SACM_DVR4800_User.obj" \
	"$(OUTDIR)\SPI_Flash_CE063.obj" 

"$(OUTDIR)\chimeA_5_A48.res": "V:\svn\Library\16-bit\SACM_Library\Example Code\SACM Example Code\GPCE063A Example Code\DVR4800\voice\chimeA_5.A48"
	$(RESC) "V:\svn\Library\16-bit\SACM_Library\Example Code\SACM Example Code\GPCE063A Example Code\DVR4800\voice\chimeA_5.A48" "$(OUTDIR)\chimeA_5_A48.res" RES_CHIMEA_5_A48 

"$(OUTDIR)\chimeA_4_A48.res": "V:\svn\Library\16-bit\SACM_Library\Example Code\SACM Example Code\GPCE063A Example Code\DVR4800\voice\chimeA_4.A48"
	$(RESC) "V:\svn\Library\16-bit\SACM_Library\Example Code\SACM Example Code\GPCE063A Example Code\DVR4800\voice\chimeA_4.A48" "$(OUTDIR)\chimeA_4_A48.res" RES_CHIMEA_4_A48 

"$(OUTDIR)\Resource.obj": "V:\svn\Library\16-bit\SACM_Library\Example Code\SACM Example Code\GPCE063A Example Code\DVR4800\Resource.asm" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\Resource.lst" -o "$(OUTDIR)\Resource.obj" "V:\svn\Library\16-bit\SACM_Library\Example Code\SACM Example Code\GPCE063A Example Code\DVR4800\Resource.asm" 

"$(OUTDIR)\Isr.obj": "V:\svn\Library\16-bit\SACM_Library\Example Code\SACM Example Code\GPCE063A Example Code\DVR4800\Isr.asm" "..\include\GPCE063.inc" "..\include\DVR4800.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\Isr.lst" -o "$(OUTDIR)\Isr.obj" "V:\svn\Library\16-bit\SACM_Library\Example Code\SACM Example Code\GPCE063A Example Code\DVR4800\Isr.asm" 

"$(OUTDIR)\main.asm": "V:\svn\Library\16-bit\SACM_Library\Example Code\SACM Example Code\GPCE063A Example Code\DVR4800\main.c" 
	set PATH="$(APPDIR)\toolchain\";%PATH% & \
	$(CC) $(CFLAGS) -o "$(OUTDIR)/main.asm" "V:/svn/Library/16-bit/SACM_Library/Example Code/SACM Example Code/GPCE063A Example Code/DVR4800/main.c" 

"$(OUTDIR)\main.obj": "$(OUTDIR)\main.asm"
	$(AS) $(CASFLAGS) $(INCLUDES) -l "$(OUTDIR)\main.lst" -o "$(OUTDIR)\main.obj" "$(OUTDIR)\main.asm" 

"$(OUTDIR)\System.obj": "V:\svn\Library\16-bit\SACM_Library\Example Code\SACM Example Code\GPCE063A Example Code\include\System.asm" "V:\svn\Library\16-bit\SACM_Library\Example Code\SACM Example Code\GPCE063A Example Code\include\GPCE063.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\System.lst" -o "$(OUTDIR)\System.obj" "V:\svn\Library\16-bit\SACM_Library\Example Code\SACM Example Code\GPCE063A Example Code\include\System.asm" 

"$(OUTDIR)\SACM_DVR4800_User.obj": "V:\svn\Library\16-bit\SACM_Library\Example Code\SACM Example Code\GPCE063A Example Code\include\SACM_DVR4800_User.asm" "V:\svn\Library\16-bit\SACM_Library\Example Code\SACM Example Code\GPCE063A Example Code\include\GPCE063.inc" "V:\svn\Library\16-bit\SACM_Library\Example Code\SACM Example Code\GPCE063A Example Code\include\DVR4800.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\SACM_DVR4800_User.lst" -o "$(OUTDIR)\SACM_DVR4800_User.obj" "V:\svn\Library\16-bit\SACM_Library\Example Code\SACM Example Code\GPCE063A Example Code\include\SACM_DVR4800_User.asm" 

"$(OUTDIR)\SPI_Flash_CE063.obj": "V:\svn\Library\16-bit\SACM_Library\Example Code\SACM Example Code\GPCE063A Example Code\include\SPI_Flash_CE063.asm" "V:\svn\Library\16-bit\SACM_Library\Example Code\SACM Example Code\GPCE063A Example Code\include\GPCE063.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\SPI_Flash_CE063.lst" -o "$(OUTDIR)\SPI_Flash_CE063.obj" "V:\svn\Library\16-bit\SACM_Library\Example Code\SACM Example Code\GPCE063A Example Code\include\SPI_Flash_CE063.asm" 


.SUFFIXES : .c .asm .obj .s37 .tsk .res

all :	 BEFOREBUILD "$(OUTDIR)" $(BINFILE)

BEFOREBUILD :

"$(OUTDIR)" :
	if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

$(BINFILE) : $(OBJFILES) 
	$(LD) $(BINTYPE) $(ARYFILE) $(BINFILE) $(LDFLAGS) $(BODY) $(EXTRAFLAGS)

compile :	 $(OBJFILES)

clean :
	$(RM) "$(OUTDIR)\chimeA_5_A48.res" 
	$(RM) "$(OUTDIR)\chimeA_4_A48.res" 
	$(RM) "$(OUTDIR)\Resource.obj" 
	$(RM) "$(OUTDIR)\Resource.lst" 
	$(RM) "$(OUTDIR)\Isr.obj" 
	$(RM) "$(OUTDIR)\Isr.lst" 
	$(RM) "$(OUTDIR)\main.obj" 
	$(RM) "$(OUTDIR)\main.lst" 
	$(RM) "$(OUTDIR)\main.asm" 
	$(RM) "$(OUTDIR)\System.obj" 
	$(RM) "$(OUTDIR)\System.lst" 
	$(RM) "$(OUTDIR)\SACM_DVR4800_User.obj" 
	$(RM) "$(OUTDIR)\SACM_DVR4800_User.lst" 
	$(RM) "$(OUTDIR)\SPI_Flash_CE063.obj" 
	$(RM) "$(OUTDIR)\SPI_Flash_CE063.lst" 
	$(RM) $(BINFILE) $(SBMFILE) 

.c.asm:
	$(CC) $(CFLAGS) $(INCLUDES) -o "$(OUTDIR)/$@" $<

.asm.obj:
	$(AS) $(ASFLAGS) $(INCLUDES) -o "$(OUTDIR)/$@" $<

