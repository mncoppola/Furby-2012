
// Resource Table
// Created by IDE, Do not modify this table

.TEXT
.public _RES_Table;
.external __RES_CHIMEA_5_A48_sa
.public _RES_CHIMEA_5_A48_SA;
.external __RES_CHIMEA_5_A48_ea;
.public _RES_CHIMEA_5_A48_EA;
.external __RES_CHIMEA_4_A48_sa
.public _RES_CHIMEA_4_A48_SA;
.external __RES_CHIMEA_4_A48_ea;
.public _RES_CHIMEA_4_A48_EA;


_RES_Table:

_RES_CHIMEA_5_A48_SA:
	.DW offset __RES_CHIMEA_5_A48_sa,seg __RES_CHIMEA_5_A48_sa;
_RES_CHIMEA_5_A48_EA:
	.DW offset __RES_CHIMEA_5_A48_ea,seg __RES_CHIMEA_5_A48_ea;

_RES_CHIMEA_4_A48_SA:
	.DW offset __RES_CHIMEA_4_A48_sa,seg __RES_CHIMEA_4_A48_sa;
_RES_CHIMEA_4_A48_EA:
	.DW offset __RES_CHIMEA_4_A48_ea,seg __RES_CHIMEA_4_A48_ea;


// End Table
//------------------------------------------------
// SACM DVR4800 Speech Table
// -- User nees to add in the song/speech 
//    for playback based on the _RES_Table above.
//------------------------------------------------
.public T_SACM_DVR4800_SpeechTable;
T_SACM_DVR4800_SpeechTable:	
.dw _RES_CHIMEA_4_A48_SA
.dw _RES_CHIMEA_5_A48_SA
