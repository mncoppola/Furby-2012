#####################################################################
#																	 
#	Created by u'nSP IDE		15:53:19	06/03/09
#
#####################################################################




APPDIR	= C:\PROGRA~1\GENERA~1\UNSPID~1.4

OUTDIR	= .\Debug

CC	= $(APPDIR)\toolchain\gcc

AS	= $(APPDIR)\toolchain\xasm16

LD	= $(APPDIR)\toolchain\xlink16

AR	= $(APPDIR)\toolchain\xlib16

RESC	= $(APPDIR)\toolchain\resc

RM	= $(APPDIR)\toolchain\rm -f

INCLUDES	= -I"D:/WorkingFolder/Library_Release/SACMV41b_Beta/GPCE063A_Example_V41b/GPCE063A Example Code/DVR520" -I"C:/Program Files/Generalplus/unSPIDE 3.0.4/library/include" -I"C:/Program Files/Generalplus/unSPIDE 3.0.4/library/include/sys" -I"../include"

BODY	= -body GPCE063A_064A -nobdy -bfile "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\DVR520\SACM_DVR520.bdy"

BODYFILE	= "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\DVR520\SACM_DVR520.bdy" 

BINFILE	= "$(OUTDIR)\SACM_DVR520.S37"

ARYFILE	= "$(OUTDIR)\SACM_DVR520.ary"

SBMFILE	= "$(OUTDIR)\SACM_DVR520.sbm"

OPT	= -S -gstabs -mglobal-var-iram

ASFLAGS	= -t5 -d

CASFLAGS	= -t5 -wpop

CFLAGS	= $(OPT) -B$(APPDIR)\toolchain\ $(INCLUDES) 

BINTYPE	= -as

LDFLAGS	= -listfile -infblk "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\DVR520\SACM_DVR520.inb"

EXTRAFLAGS	= 


OBJFILES	= \
	"$(OUTDIR)\male_bin.res" \
	"$(OUTDIR)\child_bin.res" \
	"$(OUTDIR)\0503b_bin.res" \
	"$(OUTDIR)\Resource.obj" \
	"$(OUTDIR)\Isr.obj" \
	"$(OUTDIR)\main.obj" \
	"$(OUTDIR)\System.obj" \
	"$(OUTDIR)\SACM_DVR520_User.obj" \
	"$(OUTDIR)\SPI_Flash_CE063.obj" 

"$(OUTDIR)\male_bin.res": "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\DVR520\voice\male.bin"
	$(RESC) "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\DVR520\voice\male.bin" "$(OUTDIR)\male_bin.res" RES_MALE_BIN 

"$(OUTDIR)\child_bin.res": "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\DVR520\voice\child.bin"
	$(RESC) "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\DVR520\voice\child.bin" "$(OUTDIR)\child_bin.res" RES_CHILD_BIN 

"$(OUTDIR)\0503b_bin.res": "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\DVR520\voice\0503b.bin"
	$(RESC) "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\DVR520\voice\0503b.bin" "$(OUTDIR)\0503b_bin.res" RES_0503B_BIN 

"$(OUTDIR)\Resource.obj": "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\DVR520\Resource.asm" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\Resource.lst" -o "$(OUTDIR)\Resource.obj" "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\DVR520\Resource.asm" 

"$(OUTDIR)\Isr.obj": "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\DVR520\Isr.asm" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\Isr.lst" -o "$(OUTDIR)\Isr.obj" "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\DVR520\Isr.asm" 

"$(OUTDIR)\main.asm": "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\DVR520\main.c" 
	set PATH="$(APPDIR)\toolchain\";%PATH% & \
	$(CC) $(CFLAGS) -o "$(OUTDIR)/main.asm" "D:/WorkingFolder/Library_Release/SACMV41b_Beta/GPCE063A_Example_V41b/GPCE063A Example Code/DVR520/main.c" 

"$(OUTDIR)\main.obj": "$(OUTDIR)\main.asm"
	$(AS) $(CASFLAGS) $(INCLUDES) -l "$(OUTDIR)\main.lst" -o "$(OUTDIR)\main.obj" "$(OUTDIR)\main.asm" 

"$(OUTDIR)\System.obj": "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\include\System.asm" "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\include\GPCE063.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\System.lst" -o "$(OUTDIR)\System.obj" "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\include\System.asm" 

"$(OUTDIR)\SACM_DVR520_User.obj": "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\include\SACM_DVR520_User.asm" "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\include\GPCE063.inc" "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\include\DVR520.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\SACM_DVR520_User.lst" -o "$(OUTDIR)\SACM_DVR520_User.obj" "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\include\SACM_DVR520_User.asm" 

"$(OUTDIR)\SPI_Flash_CE063.obj": "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\include\SPI_Flash_CE063.asm" "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\include\GPCE063.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\SPI_Flash_CE063.lst" -o "$(OUTDIR)\SPI_Flash_CE063.obj" "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\include\SPI_Flash_CE063.asm" 


.SUFFIXES : .c .asm .obj .s37 .tsk .res

all :	 BEFOREBUILD "$(OUTDIR)" $(BINFILE)

BEFOREBUILD :

"$(OUTDIR)" :
	if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

$(BINFILE) : $(OBJFILES) 
	$(LD) $(BINTYPE) $(ARYFILE) $(BINFILE) $(LDFLAGS) $(BODY) $(EXTRAFLAGS)

compile :	 $(OBJFILES)

clean :
	$(RM) "$(OUTDIR)\male_bin.res" 
	$(RM) "$(OUTDIR)\child_bin.res" 
	$(RM) "$(OUTDIR)\0503b_bin.res" 
	$(RM) "$(OUTDIR)\Resource.obj" 
	$(RM) "$(OUTDIR)\Resource.lst" 
	$(RM) "$(OUTDIR)\Isr.obj" 
	$(RM) "$(OUTDIR)\Isr.lst" 
	$(RM) "$(OUTDIR)\main.obj" 
	$(RM) "$(OUTDIR)\main.lst" 
	$(RM) "$(OUTDIR)\main.asm" 
	$(RM) "$(OUTDIR)\System.obj" 
	$(RM) "$(OUTDIR)\System.lst" 
	$(RM) "$(OUTDIR)\SACM_DVR520_User.obj" 
	$(RM) "$(OUTDIR)\SACM_DVR520_User.lst" 
	$(RM) "$(OUTDIR)\SPI_Flash_CE063.obj" 
	$(RM) "$(OUTDIR)\SPI_Flash_CE063.lst" 
	$(RM) $(BINFILE) $(SBMFILE) 

.c.asm:
	$(CC) $(CFLAGS) $(INCLUDES) -o "$(OUTDIR)/$@" $<

.asm.obj:
	$(AS) $(ASFLAGS) $(INCLUDES) -o "$(OUTDIR)/$@" $<

