set(CMAKE_SYSTEM_NAME "Linux")
set(CMAKE_SYSTEM_PROCESSOR "sparc64")

set(TOOLCHAIN_PREFIX "${CMAKE_SYSTEM_PROCESSOR}-linux-gnu")

set(CMAKE_C_COMPILER "${TOOLCHAIN_PREFIX}-gcc")
# set(CMAKE_CXX_COMPILER "${TOOLCHAIN_PREFIX}-g++")
set(CMAKE_AR "${TOOLCHAIN_PREFIX}-ar" CACHE FILEPATH "ar")
set(CMAKE_RANLIB "${TOOLCHAIN_PREFIX}-ranlib" CACHE FILEPATH "ranlib")
set(CMAKE_STRIP "${TOOLCHAIN_PREFIX}-strip" CACHE FILEPATH "strip")
set(CMAKE_OBJCOPY "${TOOLCHAIN_PREFIX}-objcopy" CACHE FILEPATH "objcopy")
set(CMAKE_NM "${TOOLCHAIN_PREFIX}-nm" CACHE FILEPATH "nm")

set(CMAKE_FIND_ROOT_PATH "/usr/${TOOLCHAIN_PREFIX}")
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
