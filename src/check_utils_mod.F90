MODULE CHECK_UTILS_MOD

USE PARKIND1, ONLY : JPRB
USE IEEE_ARITHMETIC

CONTAINS

SUBROUTINE COUNT_ZEROES_NAN (ARRAY, LENGTH)

IMPLICIT NONE

REAL(KIND=JPRB) :: ARRAY(1:LENGTH)

INTEGER :: I, LENGTH, NON_ZEROES, NANS


NON_ZEROES = 0
NANS = 0

DO I = 1, LENGTH
  IF (ieee_is_nan(ARRAY(I))) THEN
  	NANS = NANS + 1
  ELSE IF (ARRAY(I) /= 0.0_JPRB) THEN 
  	NON_ZEROES = NON_ZEROES + 1
  END IF
END DO

WRITE(*,*) NON_ZEROES, " non-zero elements and ", NANS,  " NaNs on a total of ", LENGTH
END SUBROUTINE COUNT_ZEROES_NAN


SUBROUTINE COMPARE_VALUES (ARRAY1, ARRAY2, LENGTH)

IMPLICIT NONE

REAL(KIND=JPRB) :: ARRAY1(1:LENGTH), ARRAY2(1:LENGTH)
REAL(KIND=JPRB) :: minAbs, maxAbs, sumAbs, minRel, maxRel, sumRel

INTEGER :: I, LENGTH, NON_ZEROES, NANS

minAbs = HUGE(0.0)
maxAbs = -HUGE(0.0)
sumAbs = 0.0
minRel = HUGE(0.0)
maxRel = -HUGE(0.0)
sumRel = 0.0

DO I = 1, LENGTH
  minAbs = MIN(minAbs, ABS(array2(I) - array1(I)))
  maxAbs = MAX(maxAbs, ABS(array2(I) - array1(I)))
  sumAbs = sumAbs + ABS(array2(I) - array1(I))

  IF(array1(I) /= 0.0) THEN
    minRel = MIN(minRel, ABS((array2(I) - array1(I)) / array1(I) ) )
    maxRel = MAX(maxRel, ABS((array2(I) - array1(I)) / array1(I) ) )
    sumRel = sumRel + ABS((array2(I) - array1(I)) / array1(I) ) 
  END IF
END DO

WRITE(*,'(T4,A, E16.9, A, E16.9, A, E16.9)') "Absolute diff : min = ", minAbs, "    max = ", maxAbs, "   mean = ", sumAbs/LENGTH
WRITE(*,'(T4,A, E16.9, A, E16.9, A, E16.9)') "Relative diff : min = ", minRel, "    max = ", maxRel, "   mean = ", sumRel/LENGTH

END SUBROUTINE COMPARE_VALUES



END MODULE CHECK_UTILS_MOD
