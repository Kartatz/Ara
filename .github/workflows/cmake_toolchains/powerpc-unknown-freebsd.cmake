set(CMAKE_SYSTEM_NAME "FreeBSD")
set(CMAKE_SYSTEM_PROCESSOR "powerpc")

set(TOOLCHAIN_PREFIX "${CMAKE_SYSTEM_PROCESSOR}-unknown-freebsd12.3")

set(TOOLCHAIN_PATH "$ENV{FREEBSD_TOOLCHAIN}")

set(CMAKE_C_COMPILER "${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX}-gcc" CACHE FILEPATH "cc")
set(CMAKE_CXX_COMPILER "${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX}-g++" "-static-libstdc++")
set(CMAKE_AR "${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX}-ar" CACHE FILEPATH "ar")
set(CMAKE_RANLIB "${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX}-ranlib" CACHE FILEPATH "ranlib")
set(CMAKE_NM "${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX}-nm" CACHE FILEPATH "nm")

set(CMAKE_FIND_ROOT_PATH "${TOOLCHAIN_PATH}/${TOOLCHAIN_PREFIX}")
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
