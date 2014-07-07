
// Resource Table
// Created by IDE, Do not modify this table

.TEXT
.public _RES_Table;
.external __RES_M6_3360_BIN_sa
.public _RES_M6_3360_BIN_SA;
.external __RES_M6_3360_BIN_ea;
.public _RES_M6_3360_BIN_EA;
.external __RES_F2_3360_BIN_sa
.public _RES_F2_3360_BIN_SA;
.external __RES_F2_3360_BIN_ea;
.public _RES_F2_3360_BIN_EA;


_RES_Table:

_RES_M6_3360_BIN_SA:
	.DW offset __RES_M6_3360_BIN_sa,seg __RES_M6_3360_BIN_sa;
_RES_M6_3360_BIN_EA:
	.DW offset __RES_M6_3360_BIN_ea,seg __RES_M6_3360_BIN_ea;

_RES_F2_3360_BIN_SA:
	.DW offset __RES_F2_3360_BIN_sa,seg __RES_F2_3360_BIN_sa;
_RES_F2_3360_BIN_EA:
	.DW offset __RES_F2_3360_BIN_ea,seg __RES_F2_3360_BIN_ea;


// End Table
//------------------------------------------------
// SACM S200 Speech Table
// -- User nees to add in the song/speech 
//    for playback based on the _RES_Table above.
//------------------------------------------------
.public T_SACM_S200_SpeechTable;
T_SACM_S200_SpeechTable:	
.dw _RES_F2_3360_BIN_SA;
.dw _RES_M6_3360_BIN_SA;
