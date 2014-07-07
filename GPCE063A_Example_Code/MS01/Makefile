#####################################################################
#																	 
#	Created by u'nSP IDE		09:42:01	07/30/08
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

INCLUDES	= -I"D:/GPCE_Serial/GPCE063/SACM_N/MS01" -I"C:/Program Files/Generalplus/unSPIDE 3.0.3/library/include" -I"C:/Program Files/Generalplus/unSPIDE 3.0.3/library/include/sys" -I"../include"

BODY	= -body GPCE063A_Flash -nobdy -bfile "D:\GPCE_Serial\GPCE063\SACM_N\MS01\SACM_MS01.bdy"

BODYFILE	= "D:\GPCE_Serial\GPCE063\SACM_N\MS01\SACM_MS01.bdy" 

BINFILE	= "$(OUTDIR)\SACM_MS01.S37"

ARYFILE	= "$(OUTDIR)\SACM_MS01.ary"

SBMFILE	= "$(OUTDIR)\SACM_MS01.sbm"

OPT	= -S -gstabs -Wall -mglobal-var-iram

ASFLAGS	= -t5 -d

CASFLAGS	= -t5 -wpop

CFLAGS	= $(OPT) -B$(APPDIR)\toolchain\ $(INCLUDES) 

BINTYPE	= -as

LDFLAGS	= -listfile -infblk "D:\GPCE_Serial\GPCE063\SACM_N\MS01\SACM_MS01.inb"

EXTRAFLAGS	= 


OBJFILES	= \
	"$(OUTDIR)\BD1_ADP.res" \
	"$(OUTDIR)\CBH_ADP.res" \
	"$(OUTDIR)\CBL_ADP.res" \
	"$(OUTDIR)\CC_ADP.res" \
	"$(OUTDIR)\CHT1_ADP.res" \
	"$(OUTDIR)\CYM1_ADP.res" \
	"$(OUTDIR)\HAP1_ADP.res" \
	"$(OUTDIR)\HB_ADP.res" \
	"$(OUTDIR)\HBQ_ADP.res" \
	"$(OUTDIR)\HFT_ADP.res" \
	"$(OUTDIR)\HT1_ADP.res" \
	"$(OUTDIR)\HTM_ADP.res" \
	"$(OUTDIR)\JB1_ADP.res" \
	"$(OUTDIR)\LB_ADP.res" \
	"$(OUTDIR)\LBQ_ADP.res" \
	"$(OUTDIR)\LFT_ADP.res" \
	"$(OUTDIR)\LT_ADP.res" \
	"$(OUTDIR)\OHT1_ADP.res" \
	"$(OUTDIR)\PHT1_ADP.res" \
	"$(OUTDIR)\SD1_ADP.res" \
	"$(OUTDIR)\1231_BIN.res" \
	"$(OUTDIR)\ALA1_BIN.res" \
	"$(OUTDIR)\ALAINS_BIN.res" \
	"$(OUTDIR)\DECK1_BIN.res" \
	"$(OUTDIR)\PP1_BIN.res" \
	"$(OUTDIR)\S31_BIN.res" \
	"$(OUTDIR)\TW1_BIN.res" \
	"$(OUTDIR)\main.obj" \
	"$(OUTDIR)\isr.obj" \
	"$(OUTDIR)\Resource.obj" \
	"$(OUTDIR)\System.obj" \
	"$(OUTDIR)\SACM_MS01_User.obj" \
	"$(OUTDIR)\SPI_Flash_CE063.obj" 

"$(OUTDIR)\BD1_ADP.res": "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\BD1.ADP"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\BD1.ADP" "$(OUTDIR)\BD1_ADP.res" RES_BD1_ADP 

"$(OUTDIR)\CBH_ADP.res": "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\CBH.ADP"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\CBH.ADP" "$(OUTDIR)\CBH_ADP.res" RES_CBH_ADP 

"$(OUTDIR)\CBL_ADP.res": "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\CBL.ADP"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\CBL.ADP" "$(OUTDIR)\CBL_ADP.res" RES_CBL_ADP 

"$(OUTDIR)\CC_ADP.res": "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\CC.ADP"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\CC.ADP" "$(OUTDIR)\CC_ADP.res" RES_CC_ADP 

"$(OUTDIR)\CHT1_ADP.res": "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\CHT1.ADP"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\CHT1.ADP" "$(OUTDIR)\CHT1_ADP.res" RES_CHT1_ADP 

"$(OUTDIR)\CYM1_ADP.res": "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\CYM1.ADP"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\CYM1.ADP" "$(OUTDIR)\CYM1_ADP.res" RES_CYM1_ADP 

"$(OUTDIR)\HAP1_ADP.res": "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\HAP1.ADP"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\HAP1.ADP" "$(OUTDIR)\HAP1_ADP.res" RES_HAP1_ADP 

"$(OUTDIR)\HB_ADP.res": "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\HB.ADP"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\HB.ADP" "$(OUTDIR)\HB_ADP.res" RES_HB_ADP 

"$(OUTDIR)\HBQ_ADP.res": "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\HBQ.ADP"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\HBQ.ADP" "$(OUTDIR)\HBQ_ADP.res" RES_HBQ_ADP 

"$(OUTDIR)\HFT_ADP.res": "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\HFT.ADP"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\HFT.ADP" "$(OUTDIR)\HFT_ADP.res" RES_HFT_ADP 

"$(OUTDIR)\HT1_ADP.res": "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\HT1.ADP"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\HT1.ADP" "$(OUTDIR)\HT1_ADP.res" RES_HT1_ADP 

"$(OUTDIR)\HTM_ADP.res": "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\HTM.ADP"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\HTM.ADP" "$(OUTDIR)\HTM_ADP.res" RES_HTM_ADP 

"$(OUTDIR)\JB1_ADP.res": "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\JB1.ADP"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\JB1.ADP" "$(OUTDIR)\JB1_ADP.res" RES_JB1_ADP 

"$(OUTDIR)\LB_ADP.res": "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\LB.ADP"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\LB.ADP" "$(OUTDIR)\LB_ADP.res" RES_LB_ADP 

"$(OUTDIR)\LBQ_ADP.res": "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\LBQ.ADP"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\LBQ.ADP" "$(OUTDIR)\LBQ_ADP.res" RES_LBQ_ADP 

"$(OUTDIR)\LFT_ADP.res": "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\LFT.ADP"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\LFT.ADP" "$(OUTDIR)\LFT_ADP.res" RES_LFT_ADP 

"$(OUTDIR)\LT_ADP.res": "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\LT.ADP"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\LT.ADP" "$(OUTDIR)\LT_ADP.res" RES_LT_ADP 

"$(OUTDIR)\OHT1_ADP.res": "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\OHT1.ADP"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\OHT1.ADP" "$(OUTDIR)\OHT1_ADP.res" RES_OHT1_ADP 

"$(OUTDIR)\PHT1_ADP.res": "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\PHT1.ADP"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\PHT1.ADP" "$(OUTDIR)\PHT1_ADP.res" RES_PHT1_ADP 

"$(OUTDIR)\SD1_ADP.res": "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\SD1.ADP"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\MS01\DRUM\SD1.ADP" "$(OUTDIR)\SD1_ADP.res" RES_SD1_ADP 

"$(OUTDIR)\1231_BIN.res": "D:\GPCE_Serial\GPCE063\SACM_N\MS01\SONG\1231.BIN"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\MS01\SONG\1231.BIN" "$(OUTDIR)\1231_BIN.res" RES_1231_BIN 

"$(OUTDIR)\ALA1_BIN.res": "D:\GPCE_Serial\GPCE063\SACM_N\MS01\SONG\ALA1.BIN"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\MS01\SONG\ALA1.BIN" "$(OUTDIR)\ALA1_BIN.res" RES_ALA1_BIN 

"$(OUTDIR)\ALAINS_BIN.res": "D:\GPCE_Serial\GPCE063\SACM_N\MS01\SONG\ALAINS.BIN"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\MS01\SONG\ALAINS.BIN" "$(OUTDIR)\ALAINS_BIN.res" RES_ALAINS_BIN 

"$(OUTDIR)\DECK1_BIN.res": "D:\GPCE_Serial\GPCE063\SACM_N\MS01\SONG\DECK1.BIN"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\MS01\SONG\DECK1.BIN" "$(OUTDIR)\DECK1_BIN.res" RES_DECK1_BIN 

"$(OUTDIR)\PP1_BIN.res": "D:\GPCE_Serial\GPCE063\SACM_N\MS01\SONG\PP1.BIN"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\MS01\SONG\PP1.BIN" "$(OUTDIR)\PP1_BIN.res" RES_PP1_BIN 

"$(OUTDIR)\S31_BIN.res": "D:\GPCE_Serial\GPCE063\SACM_N\MS01\SONG\S31.BIN"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\MS01\SONG\S31.BIN" "$(OUTDIR)\S31_BIN.res" RES_S31_BIN 

"$(OUTDIR)\TW1_BIN.res": "D:\GPCE_Serial\GPCE063\SACM_N\MS01\SONG\TW1.BIN"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\MS01\SONG\TW1.BIN" "$(OUTDIR)\TW1_BIN.res" RES_TW1_BIN 

"$(OUTDIR)\main.asm": "D:\GPCE_Serial\GPCE063\SACM_N\MS01\main.c" 
	set PATH="$(APPDIR)\toolchain\";%PATH% & \
	$(CC) $(CFLAGS) -o "$(OUTDIR)/main.asm" "D:/GPCE_Serial/GPCE063/SACM_N/MS01/main.c" 

"$(OUTDIR)\main.obj": "$(OUTDIR)\main.asm"
	$(AS) $(CASFLAGS) $(INCLUDES) -l "$(OUTDIR)\main.lst" -o "$(OUTDIR)\main.obj" "$(OUTDIR)\main.asm" 

"$(OUTDIR)\isr.obj": "D:\GPCE_Serial\GPCE063\SACM_N\MS01\isr.asm" "..\include\GPCE063.inc" "..\include\MS01.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\isr.lst" -o "$(OUTDIR)\isr.obj" "D:\GPCE_Serial\GPCE063\SACM_N\MS01\isr.asm" 

"$(OUTDIR)\Resource.obj": "D:\GPCE_Serial\GPCE063\SACM_N\MS01\Resource.asm" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\Resource.lst" -o "$(OUTDIR)\Resource.obj" "D:\GPCE_Serial\GPCE063\SACM_N\MS01\Resource.asm" 

"$(OUTDIR)\System.obj": "D:\GPCE_Serial\GPCE063\SACM_N\include\System.asm" "D:\GPCE_Serial\GPCE063\SACM_N\include\GPCE063.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\System.lst" -o "$(OUTDIR)\System.obj" "D:\GPCE_Serial\GPCE063\SACM_N\include\System.asm" 

"$(OUTDIR)\SACM_MS01_User.obj": "D:\GPCE_Serial\GPCE063\SACM_N\include\SACM_MS01_User.asm" "D:\GPCE_Serial\GPCE063\SACM_N\include\GPCE063.inc" "D:\GPCE_Serial\GPCE063\SACM_N\include\MS01.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\SACM_MS01_User.lst" -o "$(OUTDIR)\SACM_MS01_User.obj" "D:\GPCE_Serial\GPCE063\SACM_N\include\SACM_MS01_User.asm" 

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
	$(RM) "$(OUTDIR)\BD1_ADP.res" 
	$(RM) "$(OUTDIR)\CBH_ADP.res" 
	$(RM) "$(OUTDIR)\CBL_ADP.res" 
	$(RM) "$(OUTDIR)\CC_ADP.res" 
	$(RM) "$(OUTDIR)\CHT1_ADP.res" 
	$(RM) "$(OUTDIR)\CYM1_ADP.res" 
	$(RM) "$(OUTDIR)\HAP1_ADP.res" 
	$(RM) "$(OUTDIR)\HB_ADP.res" 
	$(RM) "$(OUTDIR)\HBQ_ADP.res" 
	$(RM) "$(OUTDIR)\HFT_ADP.res" 
	$(RM) "$(OUTDIR)\HT1_ADP.res" 
	$(RM) "$(OUTDIR)\HTM_ADP.res" 
	$(RM) "$(OUTDIR)\JB1_ADP.res" 
	$(RM) "$(OUTDIR)\LB_ADP.res" 
	$(RM) "$(OUTDIR)\LBQ_ADP.res" 
	$(RM) "$(OUTDIR)\LFT_ADP.res" 
	$(RM) "$(OUTDIR)\LT_ADP.res" 
	$(RM) "$(OUTDIR)\OHT1_ADP.res" 
	$(RM) "$(OUTDIR)\PHT1_ADP.res" 
	$(RM) "$(OUTDIR)\SD1_ADP.res" 
	$(RM) "$(OUTDIR)\1231_BIN.res" 
	$(RM) "$(OUTDIR)\ALA1_BIN.res" 
	$(RM) "$(OUTDIR)\ALAINS_BIN.res" 
	$(RM) "$(OUTDIR)\DECK1_BIN.res" 
	$(RM) "$(OUTDIR)\PP1_BIN.res" 
	$(RM) "$(OUTDIR)\S31_BIN.res" 
	$(RM) "$(OUTDIR)\TW1_BIN.res" 
	$(RM) "$(OUTDIR)\main.obj" 
	$(RM) "$(OUTDIR)\main.lst" 
	$(RM) "$(OUTDIR)\main.asm" 
	$(RM) "$(OUTDIR)\isr.obj" 
	$(RM) "$(OUTDIR)\isr.lst" 
	$(RM) "$(OUTDIR)\Resource.obj" 
	$(RM) "$(OUTDIR)\Resource.lst" 
	$(RM) "$(OUTDIR)\System.obj" 
	$(RM) "$(OUTDIR)\System.lst" 
	$(RM) "$(OUTDIR)\SACM_MS01_User.obj" 
	$(RM) "$(OUTDIR)\SACM_MS01_User.lst" 
	$(RM) "$(OUTDIR)\SPI_Flash_CE063.obj" 
	$(RM) "$(OUTDIR)\SPI_Flash_CE063.lst" 
	$(RM) $(BINFILE) $(SBMFILE) 

.c.asm:
	$(CC) $(CFLAGS) $(INCLUDES) -o "$(OUTDIR)/$@" $<

.asm.obj:
	$(AS) $(ASFLAGS) $(INCLUDES) -o "$(OUTDIR)/$@" $<

