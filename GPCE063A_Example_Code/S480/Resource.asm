
// Resource Table
// Created by IDE, Do not modify this table

.TEXT
.public _RES_Table;
.external __RES_D2_S72_sa
.public _RES_D2_S72_SA;
.external __RES_D2_S72_ea;
.public _RES_D2_S72_EA;
.external __RES_D1_S72_sa
.public _RES_D1_S72_SA;
.external __RES_D1_S72_ea;
.public _RES_D1_S72_EA;
.external __RES_D2_S48_sa
.public _RES_D2_S48_SA;
.external __RES_D2_S48_ea;
.public _RES_D2_S48_EA;
.external __RES_D1_S48_sa
.public _RES_D1_S48_SA;
.external __RES_D1_S48_ea;
.public _RES_D1_S48_EA;


_RES_Table:

_RES_D2_S72_SA:
	.DW offset __RES_D2_S72_sa,seg __RES_D2_S72_sa;
_RES_D2_S72_EA:
	.DW offset __RES_D2_S72_ea,seg __RES_D2_S72_ea;

_RES_D1_S72_SA:
	.DW offset __RES_D1_S72_sa,seg __RES_D1_S72_sa;
_RES_D1_S72_EA:
	.DW offset __RES_D1_S72_ea,seg __RES_D1_S72_ea;

_RES_D2_S48_SA:
	.DW offset __RES_D2_S48_sa,seg __RES_D2_S48_sa;
_RES_D2_S48_EA:
	.DW offset __RES_D2_S48_ea,seg __RES_D2_S48_ea;

_RES_D1_S48_SA:
	.DW offset __RES_D1_S48_sa,seg __RES_D1_S48_sa;
_RES_D1_S48_EA:
	.DW offset __RES_D1_S48_ea,seg __RES_D1_S48_ea;


// End Table
//------------------------------------------------
// SACM S480 Speech Table
// -- User nees to add in the song/speech 
//    for playback based on the _RES_Table above.
//------------------------------------------------
.public T_SACM_S480_SpeechTable;
T_SACM_S480_SpeechTable:	
.dw _RES_D1_S72_SA;
.dw _RES_D2_S72_SA;
.dw _RES_D1_S48_SA;
.dw _RES_D2_S48_SA;
