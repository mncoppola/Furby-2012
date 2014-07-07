
// Resource Table
// Created by IDE, Do not modify this table

.TEXT
.public _RES_Table;
.external __RES_T09A_A16_sa
.public _RES_T09A_A16_SA;
.external __RES_T09A_A16_ea;
.public _RES_T09A_A16_EA;
.external __RES_T09B_A16_sa
.public _RES_T09B_A16_SA;
.external __RES_T09B_A16_ea;
.public _RES_T09B_A16_EA;
.external __RES_T09C_A16_sa
.public _RES_T09C_A16_SA;
.external __RES_T09C_A16_ea;
.public _RES_T09C_A16_EA;


_RES_Table:

_RES_T09A_A16_SA:
	.DW offset __RES_T09A_A16_sa,seg __RES_T09A_A16_sa;
_RES_T09A_A16_EA:
	.DW offset __RES_T09A_A16_ea,seg __RES_T09A_A16_ea;

_RES_T09B_A16_SA:
	.DW offset __RES_T09B_A16_sa,seg __RES_T09B_A16_sa;
_RES_T09B_A16_EA:
	.DW offset __RES_T09B_A16_ea,seg __RES_T09B_A16_ea;

_RES_T09C_A16_SA:
	.DW offset __RES_T09C_A16_sa,seg __RES_T09C_A16_sa;
_RES_T09C_A16_EA:
	.DW offset __RES_T09C_A16_ea,seg __RES_T09C_A16_ea;


// End Table
//------------------------------------------------
// SACM A1601 Speech Table
// -- User nees to add in the song/speech 
//    for playback based on the _RES_Table above.
//------------------------------------------------
.public T_SACM_A1601_SpeechTable;
T_SACM_A1601_SpeechTable:	
//.dw _RES_MUSIC16K_A1601_SA;
//.dw _RES_MUSIC12K_A1601_SA;
//.dw _RES_S88B_A16_SA;
//.dw _RES_S88C_A16_SA;
//.dw _RES_S88D_A16_SA;
.dw _RES_T09A_A16_SA
.dw _RES_T09B_A16_SA
.dw _RES_T09C_A16_SA
