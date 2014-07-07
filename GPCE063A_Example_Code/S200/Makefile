#####################################################################
#																	 
#	Created by u'nSP IDE		09:51:51	07/30/08
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

INCLUDES	= -I"D:/GPCE_Serial/GPCE063/SACM_N/S200" -I"C:/Program Files/Generalplus/unSPIDE 3.0.3/library/include" -I"C:/Program Files/Generalplus/unSPIDE 3.0.3/library/include/sys" -I"../include"

BODY	= -body GPCE063A_Flash -nobdy -bfile "D:\GPCE_Serial\GPCE063\SACM_N\S200\SACM_S200.bdy"

BODYFILE	= "D:\GPCE_Serial\GPCE063\SACM_N\S200\SACM_S200.bdy" 

BINFILE	= "$(OUTDIR)\SACM_S200.S37"

ARYFILE	= "$(OUTDIR)\SACM_S200.ary"

SBMFILE	= "$(OUTDIR)\SACM_S200.sbm"

OPT	= -S -gstabs -mglobal-var-iram

ASFLAGS	= -t5 -d

CASFLAGS	= -t5 -wpop

CFLAGS	= $(OPT) -B$(APPDIR)\toolchain\ $(INCLUDES) 

BINTYPE	= -as

LDFLAGS	= -listfile -infblk "D:\GPCE_Serial\GPCE063\SACM_N\S200\SACM_S200.inb"

EXTRAFLAGS	= 


OBJFILES	= \
	"$(OUTDIR)\m6_3360_bin.res" \
	"$(OUTDIR)\f2_3360_bin.res" \
	"$(OUTDIR)\Resource.obj" \
	"$(OUTDIR)\Isr.obj" \
	"$(OUTDIR)\main.obj" \
	"$(OUTDIR)\System.obj" \
	"$(OUTDIR)\SACM_S200_User.obj" \
	"$(OUTDIR)\SPI_Flash_CE063.obj" 

"$(OUTDIR)\m6_3360_bin.res": "D:\GPCE_Serial\GPCE063\SACM_N\S200\voice\m6_3360.bin"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\S200\voice\m6_3360.bin" "$(OUTDIR)\m6_3360_bin.res" RES_M6_3360_BIN 

"$(OUTDIR)\f2_3360_bin.res": "D:\GPCE_Serial\GPCE063\SACM_N\S200\voice\f2_3360.bin"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\S200\voice\f2_3360.bin" "$(OUTDIR)\f2_3360_bin.res" RES_F2_3360_BIN 

"$(OUTDIR)\Resource.obj": "D:\GPCE_Serial\GPCE063\SACM_N\S200\Resource.asm" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\Resource.lst" -o "$(OUTDIR)\Resource.obj" "D:\GPCE_Serial\GPCE063\SACM_N\S200\Resource.asm" 

"$(OUTDIR)\Isr.obj": "D:\GPCE_Serial\GPCE063\SACM_N\S200\Isr.asm" "..\include\GPCE063.inc" "..\include\S200.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\Isr.lst" -o "$(OUTDIR)\Isr.obj" "D:\GPCE_Serial\GPCE063\SACM_N\S200\Isr.asm" 

"$(OUTDIR)\main.asm": "D:\GPCE_Serial\GPCE063\SACM_N\S200\main.c" 
	set PATH="$(APPDIR)\toolchain\";%PATH% & \
	$(CC) $(CFLAGS) -o "$(OUTDIR)/main.asm" "D:/GPCE_Serial/GPCE063/SACM_N/S200/main.c" 

"$(OUTDIR)\main.obj": "$(OUTDIR)\main.asm"
	$(AS) $(CASFLAGS) $(INCLUDES) -l "$(OUTDIR)\main.lst" -o "$(OUTDIR)\main.obj" "$(OUTDIR)\main.asm" 

"$(OUTDIR)\System.obj": "D:\GPCE_Serial\GPCE063\SACM_N\include\System.asm" "D:\GPCE_Serial\GPCE063\SACM_N\include\GPCE063.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\System.lst" -o "$(OUTDIR)\System.obj" "D:\GPCE_Serial\GPCE063\SACM_N\include\System.asm" 

"$(OUTDIR)\SACM_S200_User.obj": "D:\GPCE_Serial\GPCE063\SACM_N\include\SACM_S200_User.asm" "D:\GPCE_Serial\GPCE063\SACM_N\include\GPCE063.inc" "D:\GPCE_Serial\GPCE063\SACM_N\include\S200.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\SACM_S200_User.lst" -o "$(OUTDIR)\SACM_S200_User.obj" "D:\GPCE_Serial\GPCE063\SACM_N\include\SACM_S200_User.asm" 

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
	$(RM) "$(OUTDIR)\m6_3360_bin.res" 
	$(RM) "$(OUTDIR)\f2_3360_bin.res" 
	$(RM) "$(OUTDIR)\Resource.obj" 
	$(RM) "$(OUTDIR)\Resource.lst" 
	$(RM) "$(OUTDIR)\Isr.obj" 
	$(RM) "$(OUTDIR)\Isr.lst" 
	$(RM) "$(OUTDIR)\main.obj" 
	$(RM) "$(OUTDIR)\main.lst" 
	$(RM) "$(OUTDIR)\main.asm" 
	$(RM) "$(OUTDIR)\System.obj" 
	$(RM) "$(OUTDIR)\System.lst" 
	$(RM) "$(OUTDIR)\SACM_S200_User.obj" 
	$(RM) "$(OUTDIR)\SACM_S200_User.lst" 
	$(RM) "$(OUTDIR)\SPI_Flash_CE063.obj" 
	$(RM) "$(OUTDIR)\SPI_Flash_CE063.lst" 
	$(RM) $(BINFILE) $(SBMFILE) 

.c.asm:
	$(CC) $(CFLAGS) $(INCLUDES) -o "$(OUTDIR)/$@" $<

.asm.obj:
	$(AS) $(ASFLAGS) $(INCLUDES) -o "$(OUTDIR)/$@" $<

