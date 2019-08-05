! Include the macros.
#include "mifu.h"

! The main routine for the test suite.
program mifu_run

  ! Use the test module(s) here.
  use test_module1

  ! Register each test here.
  MIFU_REGISTER_TEST(test_dummyABFail)
  MIFU_REGISTER_TEST(test_dummyABPass)
  MIFU_REGISTER_TEST(test_dyABFailInt)
  MIFU_REGISTER_TEST(test_dyABPassInt)
  MIFU_REGISTER_TEST(test_dyABFailDbl)
  MIFU_REGISTER_TEST(test_dyABPassDbl)

  ! End the tests.
  MIFU_END()

end program mifu_run
