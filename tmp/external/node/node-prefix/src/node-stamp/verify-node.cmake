set(file "/Users/e/Documents/shiny-server/tmp/external/node/download/node-v0.10.21.tar.gz")
message(STATUS "verifying file...
     file='${file}'")
set(expect_value "b7fd2a3660635af40e3719ca0db49280d10359b2")
file(SHA1 "${file}" actual_value)
if("${actual_value}" STREQUAL "${expect_value}")
  message(STATUS "verifying file... done")
else()
  message(FATAL_ERROR "error: SHA1 hash of
  ${file}
does not match expected value
  expected: ${expect_value}
    actual: ${actual_value}
")
endif()
