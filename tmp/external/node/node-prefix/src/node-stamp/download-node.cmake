message(STATUS "downloading...
     src='http://nodejs.org/dist/v0.10.21/node-v0.10.21.tar.gz'
     dst='/Users/e/Documents/shiny-server/tmp/external/node/download/node-v0.10.21.tar.gz'
     timeout='none'")




file(DOWNLOAD
  "http://nodejs.org/dist/v0.10.21/node-v0.10.21.tar.gz"
  "/Users/e/Documents/shiny-server/tmp/external/node/download/node-v0.10.21.tar.gz"
  SHOW_PROGRESS
  EXPECTED_HASH;SHA1=b7fd2a3660635af40e3719ca0db49280d10359b2
  # no TIMEOUT
  STATUS status
  LOG log)

list(GET status 0 status_code)
list(GET status 1 status_string)

if(NOT status_code EQUAL 0)
  message(FATAL_ERROR "error: downloading 'http://nodejs.org/dist/v0.10.21/node-v0.10.21.tar.gz' failed
  status_code: ${status_code}
  status_string: ${status_string}
  log: ${log}
")
endif()

message(STATUS "downloading... done")
