#####################################################################
#																	 
#	Created by u'nSP IDE		15:00:21	07/29/08
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

INCLUDES	= -I"D:/GPCE_Serial/GPCE063/SACM/MS02" -I"C:/Program Files/Generalplus/unSPIDE 3.0.3/library/include" -I"C:/Program Files/Generalplus/unSPIDE 3.0.3/library/include/sys" -I"../include"

BODY	= -body GPCE063A_Flash -nobdy -bfile "D:\GPCE_Serial\GPCE063\SACM\MS02\SACM_MS02.bdy"

BODYFILE	= "D:\GPCE_Serial\GPCE063\SACM\MS02\SACM_MS02.bdy" 

BINFILE	= "$(OUTDIR)\SACM_MS02.S37"

ARYFILE	= "$(OUTDIR)\SACM_MS02.ary"

SBMFILE	= "$(OUTDIR)\SACM_MS02.sbm"

OPT	= -S -gstabs -mglobal-var-iram

ASFLAGS	= -t5 -d

CASFLAGS	= -t5 -wpop

CFLAGS	= $(OPT) -B$(APPDIR)\toolchain\ $(INCLUDES) 

BINTYPE	= -as

LDFLAGS	= -listfile -infblk "D:\GPCE_Serial\GPCE063\SACM\MS02\SACM_MS02.inb"

EXTRAFLAGS	= 


OBJFILES	= \
	"$(OUTDIR)\LAPUTA_1_bin.res" \
	"$(OUTDIR)\joysong_1_bin.res" \
	"$(OUTDIR)\MS02_GPF8_lib.res" \
	"$(OUTDIR)\Resource.obj" \
	"$(OUTDIR)\Isr.obj" \
	"$(OUTDIR)\main.obj" \
	"$(OUTDIR)\System.obj" \
	"$(OUTDIR)\SACM_MS02_User.obj" \
	"$(OUTDIR)\SPI_Flash_CE063.obj" 

"$(OUTDIR)\LAPUTA_1_bin.res": "D:\GPCE_Serial\GPCE063\SACM\MS02\voice\LAPUTA_1.bin"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM\MS02\voice\LAPUTA_1.bin" "$(OUTDIR)\LAPUTA_1_bin.res" RES_LAPUTA_1_BIN 

"$(OUTDIR)\joysong_1_bin.res": "D:\GPCE_Serial\GPCE063\SACM\MS02\voice\joysong_1.bin"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM\MS02\voice\joysong_1.bin" "$(OUTDIR)\joysong_1_bin.res" RES_JOYSONG_1_BIN 

"$(OUTDIR)\MS02_GPF8_lib.res": "D:\GPCE_Serial\GPCE063\SACM\MS02\voice\MS02_GPF8.lib"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM\MS02\voice\MS02_GPF8.lib" "$(OUTDIR)\MS02_GPF8_lib.res" RES_MS02_GPF8_LIB 

"$(OUTDIR)\Resource.obj": "D:\GPCE_Serial\GPCE063\SACM\MS02\Resource.asm" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\Resource.lst" -o "$(OUTDIR)\Resource.obj" "D:\GPCE_Serial\GPCE063\SACM\MS02\Resource.asm" 

"$(OUTDIR)\Isr.obj": "D:\GPCE_Serial\GPCE063\SACM\MS02\Isr.asm" "..\include\GPCE063.inc" "..\include\MS02.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\Isr.lst" -o "$(OUTDIR)\Isr.obj" "D:\GPCE_Serial\GPCE063\SACM\MS02\Isr.asm" 

"$(OUTDIR)\main.asm": "D:\GPCE_Serial\GPCE063\SACM\MS02\main.c" 
	set PATH="$(APPDIR)\toolchain\";%PATH% & \
	$(CC) $(CFLAGS) -o "$(OUTDIR)/main.asm" "D:/GPCE_Serial/GPCE063/SACM/MS02/main.c" 

"$(OUTDIR)\main.obj": "$(OUTDIR)\main.asm"
	$(AS) $(CASFLAGS) $(INCLUDES) -l "$(OUTDIR)\main.lst" -o "$(OUTDIR)\main.obj" "$(OUTDIR)\main.asm" 

"$(OUTDIR)\System.obj": "D:\GPCE_Serial\GPCE063\SACM\include\System.asm" "D:\GPCE_Serial\GPCE063\SACM\include\GPCE063.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\System.lst" -o "$(OUTDIR)\System.obj" "D:\GPCE_Serial\GPCE063\SACM\include\System.asm" 

"$(OUTDIR)\SACM_MS02_User.obj": "D:\GPCE_Serial\GPCE063\SACM\include\SACM_MS02_User.asm" "D:\GPCE_Serial\GPCE063\SACM\include\GPCE063.inc" "D:\GPCE_Serial\GPCE063\SACM\include\MS02.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\SACM_MS02_User.lst" -o "$(OUTDIR)\SACM_MS02_User.obj" "D:\GPCE_Serial\GPCE063\SACM\include\SACM_MS02_User.asm" 

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
	$(RM) "$(OUTDIR)\LAPUTA_1_bin.res" 
	$(RM) "$(OUTDIR)\joysong_1_bin.res" 
	$(RM) "$(OUTDIR)\MS02_GPF8_lib.res" 
	$(RM) "$(OUTDIR)\Resource.obj" 
	$(RM) "$(OUTDIR)\Resource.lst" 
	$(RM) "$(OUTDIR)\Isr.obj" 
	$(RM) "$(OUTDIR)\Isr.lst" 
	$(RM) "$(OUTDIR)\main.obj" 
	$(RM) "$(OUTDIR)\main.lst" 
	$(RM) "$(OUTDIR)\main.asm" 
	$(RM) "$(OUTDIR)\System.obj" 
	$(RM) "$(OUTDIR)\System.lst" 
	$(RM) "$(OUTDIR)\SACM_MS02_User.obj" 
	$(RM) "$(OUTDIR)\SACM_MS02_User.lst" 
	$(RM) "$(OUTDIR)\SPI_Flash_CE063.obj" 
	$(RM) "$(OUTDIR)\SPI_Flash_CE063.lst" 
	$(RM) $(BINFILE) $(SBMFILE) 

.c.asm:
	$(CC) $(CFLAGS) $(INCLUDES) -o "$(OUTDIR)/$@" $<

.asm.obj:
	$(AS) $(ASFLAGS) $(INCLUDES) -o "$(OUTDIR)/$@" $<

