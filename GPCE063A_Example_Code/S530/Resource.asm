
// Resource Table
// Created by IDE, Do not modify this table

.TEXT
.public _RES_Table;
.external __RES_D2_S53_sa
.public _RES_D2_S53_SA;
.external __RES_D2_S53_ea;
.public _RES_D2_S53_EA;
.external __RES_D1_S53_sa
.public _RES_D1_S53_SA;
.external __RES_D1_S53_ea;
.public _RES_D1_S53_EA;


_RES_Table:

_RES_D2_S53_SA:
	.DW offset __RES_D2_S53_sa,seg __RES_D2_S53_sa;
_RES_D2_S53_EA:
	.DW offset __RES_D2_S53_ea,seg __RES_D2_S53_ea;

_RES_D1_S53_SA:
	.DW offset __RES_D1_S53_sa,seg __RES_D1_S53_sa;
_RES_D1_S53_EA:
	.DW offset __RES_D1_S53_ea,seg __RES_D1_S53_ea;


// End Table
//------------------------------------------------
// SACM S530 Speech Table
// -- User nees to add in the song/speech 
//    for playback based on the _RES_Table above.
//------------------------------------------------
.public T_SACM_S530_SpeechTable;
T_SACM_S530_SpeechTable:	
.dw _RES_D1_S53_SA;
.dw _RES_D2_S53_SA;
