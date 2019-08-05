
#include "mifu.h"

module test_module1
  use mifu_asserts

  contains

  subroutine test_dummyABFail()
    implicit none
    real*8 :: a
    real*8 :: b
    ! ----------------------------------
    a = 1.0
    b = 1.4
    MIFU_ASSERT_REAL_EQUAL(a, b, 1.0e-10)
  end subroutine test_dummyABFail

  subroutine test_dummyABPass()
    implicit none
    real*8 :: a
    real*8 :: b
    ! ----------------------------------
    a = 1.41
    b = 1.4
    MIFU_ASSERT_REAL_EQUAL(a, b, 1.0e-1)
  end subroutine test_dummyABPass

  subroutine test_dyABFailInt()
    implicit none
    Integer :: a
    Integer :: b
    ! ----------------------------------
    a = 1
    b = 1
    MIFU_ASSERT_INTEGER_EQUAL(a, b)
  end subroutine test_dyABFailInt

  subroutine test_dyABPassInt()
    implicit none
    integer :: a
    integer :: b
    ! ----------------------------------
    a = 1
    b = 4
    MIFU_ASSERT_INTEGER_EQUAL(a, b)
  end subroutine test_dyABPassInt

  subroutine test_dyABFailDbl()
    implicit none
    double precision :: a
    double precision :: b
    ! ----------------------------------
    a = 1.0d0
    b = 1.1d0
    MIFU_ASSERT_DOUBLE_EQUAL(a, b, 1.0d-1)
  end subroutine test_dyABFailDbl

  subroutine test_dyABPassDbl()
    implicit none
    double precision :: a
    double precision :: b
    ! ----------------------------------
    a = 1.0d0
    b = 1.01d0
    MIFU_ASSERT_DOUBLE_EQUAL(a, b, 1.0d-1)
  end subroutine test_dyABPassDbl

end module test_module1
