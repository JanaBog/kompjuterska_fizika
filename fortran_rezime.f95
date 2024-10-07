! ===============================
! Fortran 95 Rezime 
! ===============================

PROGRAM fortran_rezime
    IMPLICIT NONE

    ! Variables
    REAL(KIND=8) :: a, b, result
    REAL, DIMENSION(5) :: vector = (/ 1.0, 2.0, 3.0, 4.0, 5.0 /)
    INTEGER :: i
    REAL(KIND=8) :: s, single_precision, double_precision
    REAL(KIND=8) :: x, y

    ! 1. Basic Syntax and Arithmetic Operations
    PRINT*, "1. Basic Syntax and Arithmetic"
    a = 3.0D0
    b = 4.0D0
    result = SQRT(a**2 + b**2)
    PRINT*, "Result of Pythagoras theorem (3^2 + 4^2 = c^2): ", result

    ! 2. Arrays and Array Operations
    PRINT*, "2. Array Operations"
    PRINT*, "Vector: ", vector
    PRINT*, "Sum of the vector: ", SUM(vector)

    ! 3. Loops and Control Structures
    PRINT*, "3. Loops and Summation Series"
    s = 0.0D0
    DO i = 1, 100
        s = s + 1.0D0 / REAL(i, KIND=8)
    END DO
    PRINT*, "Sum of series 1 + 1/2 + 1/3 + ... + 1/100: ", s

    ! 4. Precision and Numerical Stability
    PRINT*, "4. Precision Demonstration"
    single_precision = 1.0E-7
    double_precision = 1.0D-7
    PRINT*, "Single precision: ", single_precision
    PRINT*, "Double precision: ", double_precision

    ! 5. Subroutines and Functions
    PRINT*, "5. Subroutines and Functions"
    x = 5.0D0
    y = 10.0D0
    CALL compute_sum(x, y, result)
    PRINT*, "Sum from subroutine (5 + 10): ", result

CONTAINS

    ! Subroutine to compute sum
    SUBROUTINE compute_sum(a, b, s)
        REAL(KIND=8), INTENT(IN) :: a, b
        REAL(KIND=8), INTENT(OUT) :: s
        s = a + b
    END SUBROUTINE compute_sum

END PROGRAM fortran_rezime
