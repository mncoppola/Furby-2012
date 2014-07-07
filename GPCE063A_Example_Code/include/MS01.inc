//==========================================================================
// File Name   : MS01.inc
// Description : SACM MS01 API declaration
// Written by  : Ray Cheng
// Last modified date:
//              2005/12/26
//==========================================================================
.ifndef __MS01_INC__
.define __MS01_INC__

.external F_SACM_MS01_Initial
.external F_SACM_MS01_Play
.external F_SACM_MS01_Stop
.external F_SACM_MS01_Volume
.external F_SACM_MS01_Pause
.external F_SACM_MS01_Resume
.external F_SACM_MS01_Status
.external F_SACM_MS01_ServiceLoop         // Service Loop for foreground
.external F_SACM_MS01_ServiceLoop_ISR     // Service Loop for background
.external F_ISR_Service_SACM_MS01      // ISR service for foreground

.endif
//========================================================================================        
// End of SACM_MS01.inc
//========================================================================================