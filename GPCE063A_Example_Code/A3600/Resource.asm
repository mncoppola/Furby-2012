
// Resource Table
// Created by IDE, Do not modify this table

.TEXT
.public _RES_Table;
.external __RES_DUCK1_A36_sa
.public _RES_DUCK1_A36_SA;
.external __RES_DUCK1_A36_ea;
.public _RES_DUCK1_A36_EA;
.external __RES_DUCK2_A36_sa
.public _RES_DUCK2_A36_SA;
.external __RES_DUCK2_A36_ea;
.public _RES_DUCK2_A36_EA;


_RES_Table:

_RES_DUCK1_A36_SA:
	.DW offset __RES_DUCK1_A36_sa,seg __RES_DUCK1_A36_sa;
_RES_DUCK1_A36_EA:
	.DW offset __RES_DUCK1_A36_ea,seg __RES_DUCK1_A36_ea;

_RES_DUCK2_A36_SA:
	.DW offset __RES_DUCK2_A36_sa,seg __RES_DUCK2_A36_sa;
_RES_DUCK2_A36_EA:
	.DW offset __RES_DUCK2_A36_ea,seg __RES_DUCK2_A36_ea;


// End Table
//------------------------------------------------
// SACM A3600 Speech Table
// -- User nees to add in the song/speech 
//    for playback based on the _RES_Table above.
//------------------------------------------------
.public T_SACM_A3600_SpeechTable;
T_SACM_A3600_SpeechTable:
.dw _RES_DUCK2_A36_SA;
.dw _RES_DUCK1_A36_SA;
