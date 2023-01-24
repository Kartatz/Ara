set(CMAKE_SYSTEM_NAME Haiku)
set(TOOLCHAIN_PREFIX x86_64-unknown-haiku)

set(TOOLCHAIN_PATH $ENV{HAIKU_TOOLCHAIN})

set(CMAKE_C_COMPILER ${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX}-gcc -lnetwork)

set(CMAKE_FIND_ROOT_PATH ${TOOLCHAIN_PATH}/${TOOLCHAIN_PREFIX})
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

add_compile_definitions(__Haiku__)