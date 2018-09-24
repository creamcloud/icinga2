FIND_PATH (ASIO_INCLUDE asio.hpp HINTS "${PROJECT_SOURCE_DIR}/third-party/asio/include")

if (ASIO_INCLUDE)
  set (ASIO_FOUND TRUE)
  set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DASIO_STANDALONE=YES")

  message(STATUS "Found ASIO header includes in path '${ASIO_INCLUDE}'." )
else ()
  message(FATAL_ERROR "Unable to include asio.hpp")
endif ()
