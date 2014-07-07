
// Resource Table
// Created by IDE, Do not modify this table

.TEXT
.public _RES_Table;
.public _MIDI_Table;
.external __RES_LAPUTA_1_BIN_sa
.public _RES_LAPUTA_1_BIN_SA;
.external __RES_LAPUTA_1_BIN_ea;
.public _RES_LAPUTA_1_BIN_EA;
.external __RES_JOYSONG_1_BIN_sa
.public _RES_JOYSONG_1_BIN_SA;
.external __RES_JOYSONG_1_BIN_ea;
.public _RES_JOYSONG_1_BIN_EA;
.public _ToneColor_Table;
.external __RES_MS02_GPF8_LIB_sa
.public _RES_MS02_GPF8_LIB_SA;
.external __RES_MS02_GPF8_LIB_ea;
.public _RES_MS02_GPF8_LIB_EA;


_RES_Table:


_MIDI_Table:

_RES_LAPUTA_1_BIN_SA:
	.DW offset __RES_LAPUTA_1_BIN_sa,seg __RES_LAPUTA_1_BIN_sa;
_RES_LAPUTA_1_BIN_EA:
	.DW offset __RES_LAPUTA_1_BIN_ea,seg __RES_LAPUTA_1_BIN_ea;

_RES_JOYSONG_1_BIN_SA:
	.DW offset __RES_JOYSONG_1_BIN_sa,seg __RES_JOYSONG_1_BIN_sa;
_RES_JOYSONG_1_BIN_EA:
	.DW offset __RES_JOYSONG_1_BIN_ea,seg __RES_JOYSONG_1_BIN_ea;


_ToneColor_Table:

_RES_MS02_GPF8_LIB_SA:
	.DW offset __RES_MS02_GPF8_LIB_sa,seg __RES_MS02_GPF8_LIB_sa;
_RES_MS02_GPF8_LIB_EA:
	.DW offset __RES_MS02_GPF8_LIB_ea,seg __RES_MS02_GPF8_LIB_ea;


// End Table
//------------------------------------------------
// SACM MS02 MIDI Table
// -- User nees to add in the song/MIDI 
//    for playback based on the _RES_Table above.
//------------------------------------------------
.public T_SACM_MS02_MIDITable;
//.public T_SACM_MS02_SongTable;
T_SACM_MS02_MIDITable:
//T_SACM_MS02_SongTable:
.dw _RES_LAPUTA_1_BIN_SA;
.dw _RES_JOYSONG_1_BIN_SA;
//
//------------------------------------------------
// SACM MS02 Instrument Set Table
// -- User can incorporate multiple tone color set
//    and change tone color at run time if necessary.
//------------------------------------------------
.public T_SACM_MS02_InstrumentSet;
T_SACM_MS02_InstrumentSet:
.dw _RES_MS02_GPF8_LIB_SA;
