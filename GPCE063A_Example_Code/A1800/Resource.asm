
// Resource Table
// Created by IDE, Do not modify this table

.TEXT
.public _RES_Table;
.external __RES_E316K_A18_sa
.public _RES_E316K_A18_SA;
.external __RES_E316K_A18_ea;
.public _RES_E316K_A18_EA;


_RES_Table:

_RES_E316K_A18_SA:
	.DW offset __RES_E316K_A18_sa,seg __RES_E316K_A18_sa;
_RES_E316K_A18_EA:
	.DW offset __RES_E316K_A18_ea,seg __RES_E316K_A18_ea;


// End Table
//------------------------------------------------
// SACM A1800 Speech Table
// -- User nees to add in the song/speech 
//    for playback based on the _RES_Table above.
//------------------------------------------------
.public T_SACM_A1800_SpeechTable;
T_SACM_A1800_SpeechTable:	
.dw _RES_E316K_A18_SA
