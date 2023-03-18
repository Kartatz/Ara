set(CMAKE_SYSTEM_NAME "Windows")
set(CMAKE_SYSTEM_PROCESSOR "armv7")

set(TOOLCHAIN_PREFIX "${CMAKE_SYSTEM_PROCESSOR}-w64-mingw32")

set(TOOLCHAIN_PATH "$ENV{LLVM_MINGW_HOME}")

set(CMAKE_C_COMPILER "${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX}-gcc")
set(CMAKE_CXX_COMPILER "${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX}-g++")
set(CMAKE_RC_COMPILER "${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX}-windres")
set(CMAKE_AR "${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX}-ar" CACHE FILEPATH "ar")
set(CMAKE_RANLIB "${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX}-ranlib" CACHE FILEPATH "ranlib")

set(CMAKE_FIND_ROOT_PATH "${TOOLCHAIN_PATH}/${TOOLCHAIN_PREFIX}")
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
