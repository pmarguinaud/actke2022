SUBROUTINE POSNAM(KULNAM,CDNAML)

!**** *POSNAM* - position namelist file for reading

!     Purpose.
!     --------
!     To position namelist file at correct place for reading
!     namelist CDNAML. Replaces use of Cray specific ability
!     to skip to the correct namelist.

!**   Interface.
!     ----------
!        *CALL* *POSNAM*(..)

!        Explicit arguments :     KULNAM - file unit number (input)
!        --------------------     CDNAML - namelist name    (input)

!        Implicit arguments :     None
!        --------------------

!     Method.
!     -------
!        See documentation

!     Externals.   None
!     ----------

!     Reference.
!     ----------
!        ECMWF Research Department documentation of the IFS

!     Author.
!     -------
!        Mats Hamrud *ECMWF*

!     Modifications.
!     --------------
!        Original : 93-06-22
!        M.Hamrud      01-Oct-2003 CY28 Cleaning
!        M.Hamrud      01-Dec-2003 CY28R1 Cleaning
!      R. El Khatib 04-08-10 Apply norms + proper abort if namelist is missing
!      P. Marguinaud   Proxy to POSNAME
!     --------------------------------------------------------------

USE PARKIND1  ,ONLY : JPIM     ,JPRB
USE YOMHOOK   ,ONLY : LHOOK,   DR_HOOK

IMPLICIT NONE

INTEGER(KIND=JPIM),INTENT(IN)    :: KULNAM 
CHARACTER(LEN=*)  ,INTENT(IN)    :: CDNAML 


INTEGER(KIND=JPIM) :: ISTAT
REAL(KIND=JPRB)    :: ZHOOK_HANDLE

#include "abor1.intfb.h"
#include "posname.intfb.h"

IF (LHOOK) CALL DR_HOOK('POSNAM',0,ZHOOK_HANDLE)

CALL POSNAME (KULNAM, CDNAML, ISTAT)

SELECT CASE (ISTAT)
  CASE (0)
  CASE (1)
    CALL ABOR1 ('POSNAM:CANNOT LOCATE '//CDNAML//' ')
  CASE DEFAULT
    CALL ABOR1 ('POSNAM:READ ERROR IN NAMELIST FILE')
END SELECT

IF (LHOOK) CALL DR_HOOK('POSNAM',1,ZHOOK_HANDLE)
END SUBROUTINE POSNAM

