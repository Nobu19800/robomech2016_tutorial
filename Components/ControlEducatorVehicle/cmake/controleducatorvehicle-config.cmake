# ControlEducatorVehicle CMake config file
#
# This file sets the following variables:
# ControlEducatorVehicle_FOUND - Always TRUE.
# ControlEducatorVehicle_INCLUDE_DIRS - Directories containing the ControlEducatorVehicle include files.
# ControlEducatorVehicle_IDL_DIRS - Directories containing the ControlEducatorVehicle IDL files.
# ControlEducatorVehicle_LIBRARIES - Libraries needed to use ControlEducatorVehicle.
# ControlEducatorVehicle_DEFINITIONS - Compiler flags for ControlEducatorVehicle.
# ControlEducatorVehicle_VERSION - The version of ControlEducatorVehicle found.
# ControlEducatorVehicle_VERSION_MAJOR - The major version of ControlEducatorVehicle found.
# ControlEducatorVehicle_VERSION_MINOR - The minor version of ControlEducatorVehicle found.
# ControlEducatorVehicle_VERSION_REVISION - The revision version of ControlEducatorVehicle found.
# ControlEducatorVehicle_VERSION_CANDIDATE - The candidate version of ControlEducatorVehicle found.

message(STATUS "Found ControlEducatorVehicle-1.0.0")
set(ControlEducatorVehicle_FOUND TRUE)

find_package(<dependency> REQUIRED)

#set(ControlEducatorVehicle_INCLUDE_DIRS
#    "/usr/local/include/controleducatorvehicle-1"
#    ${<dependency>_INCLUDE_DIRS}
#    )
#
#set(ControlEducatorVehicle_IDL_DIRS
#    "/usr/local/include/controleducatorvehicle-1/idl")
set(ControlEducatorVehicle_INCLUDE_DIRS
    "/usr/local/include/"
    ${<dependency>_INCLUDE_DIRS}
    )
set(ControlEducatorVehicle_IDL_DIRS
    "/usr/local/include//idl")


if(WIN32)
    set(ControlEducatorVehicle_LIBRARIES
        "/usr/local/components/lib/libcontroleducatorvehicle.a"
        ${<dependency>_LIBRARIES}
        )
else(WIN32)
    set(ControlEducatorVehicle_LIBRARIES
        "/usr/local/components/lib/libcontroleducatorvehicle.so"
        ${<dependency>_LIBRARIES}
        )
endif(WIN32)

set(ControlEducatorVehicle_DEFINITIONS ${<dependency>_DEFINITIONS})

set(ControlEducatorVehicle_VERSION 1.0.0)
set(ControlEducatorVehicle_VERSION_MAJOR 1)
set(ControlEducatorVehicle_VERSION_MINOR 0)
set(ControlEducatorVehicle_VERSION_REVISION 0)
set(ControlEducatorVehicle_VERSION_CANDIDATE )

