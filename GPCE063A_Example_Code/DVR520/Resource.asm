
// Resource Table
// Created by IDE, Do not modify this table

.TEXT
.public _RES_Table;
.external __RES_MALE_BIN_sa
.public _RES_MALE_BIN_SA;
.external __RES_MALE_BIN_ea;
.public _RES_MALE_BIN_EA;
.external __RES_CHILD_BIN_sa
.public _RES_CHILD_BIN_SA;
.external __RES_CHILD_BIN_ea;
.public _RES_CHILD_BIN_EA;
.external __RES_0503B_BIN_sa
.public _RES_0503B_BIN_SA;
.external __RES_0503B_BIN_ea;
.public _RES_0503B_BIN_EA;


_RES_Table:

_RES_MALE_BIN_SA:
	.DW offset __RES_MALE_BIN_sa,seg __RES_MALE_BIN_sa;
_RES_MALE_BIN_EA:
	.DW offset __RES_MALE_BIN_ea,seg __RES_MALE_BIN_ea;

_RES_CHILD_BIN_SA:
	.DW offset __RES_CHILD_BIN_sa,seg __RES_CHILD_BIN_sa;
_RES_CHILD_BIN_EA:
	.DW offset __RES_CHILD_BIN_ea,seg __RES_CHILD_BIN_ea;

_RES_0503B_BIN_SA:
	.DW offset __RES_0503B_BIN_sa,seg __RES_0503B_BIN_sa;
_RES_0503B_BIN_EA:
	.DW offset __RES_0503B_BIN_ea,seg __RES_0503B_BIN_ea;


// End Table
//------------------------------------------------
// SACM DVR520 Speech Table
// -- User nees to add in the song/speech 
//    for playback based on the _RES_Table above.
//------------------------------------------------
.public T_SACM_DVR520_SpeechTable;
T_SACM_DVR520_SpeechTable:	
.dw _RES_MALE_BIN_SA;
.dw _RES_CHILD_BIN_SA;
.dw _RES_0503B_BIN_SA;
