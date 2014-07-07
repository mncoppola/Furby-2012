
// Resource Table
// Created by IDE, Do not modify this table

.TEXT
.public _RES_Table;
.external __RES_M6_A32_sa
.public _RES_M6_A32_SA;
.external __RES_M6_A32_ea;
.public _RES_M6_A32_EA;
.external __RES_F2_A32_sa
.public _RES_F2_A32_SA;
.external __RES_F2_A32_ea;
.public _RES_F2_A32_EA;


_RES_Table:

_RES_M6_A32_SA:
	.DW offset __RES_M6_A32_sa,seg __RES_M6_A32_sa;
_RES_M6_A32_EA:
	.DW offset __RES_M6_A32_ea,seg __RES_M6_A32_ea;

_RES_F2_A32_SA:
	.DW offset __RES_F2_A32_sa,seg __RES_F2_A32_sa;
_RES_F2_A32_EA:
	.DW offset __RES_F2_A32_ea,seg __RES_F2_A32_ea;


// End Table
//------------------------------------------------
// SACM DVR3200 Speech Table
// -- User nees to add in the song/speech 
//    for playback based on the _RES_Table above.
//------------------------------------------------
.public T_SACM_DVR3200_SpeechTable;
T_SACM_DVR3200_SpeechTable:	
.dw _RES_F2_A32_SA;
.dw _RES_M6_A32_SA;
