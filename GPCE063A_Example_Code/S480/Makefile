#####################################################################
#																	 
#	Created by u'nSP IDE		14:17:10	05/20/09
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

INCLUDES	= -I"D:/WorkingFolder/Library_Release/SACMV41b_Beta/GPCE063A_Example_V41b/GPCE063A Example Code/S480" -I"C:/Program Files/Generalplus/unSPIDE 3.0.4/library/include" -I"C:/Program Files/Generalplus/unSPIDE 3.0.4/library/include/sys" -I"../include"

BODY	= -body GPCE063A_064A -nobdy -bfile "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\S480\SACM_S480.bdy"

BODYFILE	= "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\S480\SACM_S480.bdy" 

BINFILE	= "$(OUTDIR)\SACM_S480.S37"

ARYFILE	= "$(OUTDIR)\SACM_S480.ary"

SBMFILE	= "$(OUTDIR)\SACM_S480.sbm"

OPT	= -S -gstabs -mglobal-var-iram

ASFLAGS	= -t5 -d

CASFLAGS	= -t5 -wpop

CFLAGS	= $(OPT) -B$(APPDIR)\toolchain\ $(INCLUDES) 

BINTYPE	= -as

LDFLAGS	= -listfile -infblk "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\S480\SACM_S480.inb"

EXTRAFLAGS	= 


OBJFILES	= \
	"$(OUTDIR)\d2_s72.res" \
	"$(OUTDIR)\d1_s72.res" \
	"$(OUTDIR)\d2_s48.res" \
	"$(OUTDIR)\d1_s48.res" \
	"$(OUTDIR)\Resource.obj" \
	"$(OUTDIR)\Isr.obj" \
	"$(OUTDIR)\main.obj" \
	"$(OUTDIR)\System.obj" \
	"$(OUTDIR)\SACM_S480_User.obj" \
	"$(OUTDIR)\SPI_Flash_CE063.obj" 

"$(OUTDIR)\d2_s72.res": "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\S480\voice\d2.s72"
	$(RESC) "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\S480\voice\d2.s72" "$(OUTDIR)\d2_s72.res" RES_D2_S72 

"$(OUTDIR)\d1_s72.res": "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\S480\voice\d1.s72"
	$(RESC) "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\S480\voice\d1.s72" "$(OUTDIR)\d1_s72.res" RES_D1_S72 

"$(OUTDIR)\d2_s48.res": "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\S480\voice\d2.s48"
	$(RESC) "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\S480\voice\d2.s48" "$(OUTDIR)\d2_s48.res" RES_D2_S48 

"$(OUTDIR)\d1_s48.res": "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\S480\voice\d1.s48"
	$(RESC) "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\S480\voice\d1.s48" "$(OUTDIR)\d1_s48.res" RES_D1_S48 

"$(OUTDIR)\Resource.obj": "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\S480\Resource.asm" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\Resource.lst" -o "$(OUTDIR)\Resource.obj" "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\S480\Resource.asm" 

"$(OUTDIR)\Isr.obj": "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\S480\Isr.asm" "..\include\GPCE063.inc" "..\include\S480.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\Isr.lst" -o "$(OUTDIR)\Isr.obj" "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\S480\Isr.asm" 

"$(OUTDIR)\main.asm": "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\S480\main.c" 
	set PATH="$(APPDIR)\toolchain\";%PATH% & \
	$(CC) $(CFLAGS) -o "$(OUTDIR)/main.asm" "D:/WorkingFolder/Library_Release/SACMV41b_Beta/GPCE063A_Example_V41b/GPCE063A Example Code/S480/main.c" 

"$(OUTDIR)\main.obj": "$(OUTDIR)\main.asm"
	$(AS) $(CASFLAGS) $(INCLUDES) -l "$(OUTDIR)\main.lst" -o "$(OUTDIR)\main.obj" "$(OUTDIR)\main.asm" 

"$(OUTDIR)\System.obj": "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\include\System.asm" "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\include\GPCE063.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\System.lst" -o "$(OUTDIR)\System.obj" "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\include\System.asm" 

"$(OUTDIR)\SACM_S480_User.obj": "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\include\SACM_S480_User.asm" "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\include\GPCE063.inc" "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\include\S480.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\SACM_S480_User.lst" -o "$(OUTDIR)\SACM_S480_User.obj" "D:\WorkingFolder\Library_Release\SACMV41b_Beta\GPCE063A_Example_V41b\GPCE063A Example Code\include\SACM_S480_User.asm" 

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
	$(RM) "$(OUTDIR)\d2_s72.res" 
	$(RM) "$(OUTDIR)\d1_s72.res" 
	$(RM) "$(OUTDIR)\d2_s48.res" 
	$(RM) "$(OUTDIR)\d1_s48.res" 
	$(RM) "$(OUTDIR)\Resource.obj" 
	$(RM) "$(OUTDIR)\Resource.lst" 
	$(RM) "$(OUTDIR)\Isr.obj" 
	$(RM) "$(OUTDIR)\Isr.lst" 
	$(RM) "$(OUTDIR)\main.obj" 
	$(RM) "$(OUTDIR)\main.lst" 
	$(RM) "$(OUTDIR)\main.asm" 
	$(RM) "$(OUTDIR)\System.obj" 
	$(RM) "$(OUTDIR)\System.lst" 
	$(RM) "$(OUTDIR)\SACM_S480_User.obj" 
	$(RM) "$(OUTDIR)\SACM_S480_User.lst" 
	$(RM) "$(OUTDIR)\SPI_Flash_CE063.obj" 
	$(RM) "$(OUTDIR)\SPI_Flash_CE063.lst" 
	$(RM) $(BINFILE) $(SBMFILE) 

.c.asm:
	$(CC) $(CFLAGS) $(INCLUDES) -o "$(OUTDIR)/$@" $<

.asm.obj:
	$(AS) $(ASFLAGS) $(INCLUDES) -o "$(OUTDIR)/$@" $<

