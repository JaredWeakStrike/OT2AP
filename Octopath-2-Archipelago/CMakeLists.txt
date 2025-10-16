cmake_minimum_required(VERSION 3.18)

set(TARGET OT2AP)
project(${TARGET})

# Gather all source files
file(GLOB SRC_FILES
    "${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp"
    "${CMAKE_CURRENT_SOURCE_DIR}/src/*.h"
)

add_library(${TARGET} SHARED ${SRC_FILES} "dllmain.cpp")

# Include directories
target_include_directories(${TARGET}
    PRIVATE
        "${CMAKE_CURRENT_SOURCE_DIR}/src"
        "${CMAKE_CURRENT_SOURCE_DIR}"
    SYSTEM PRIVATE
        "${CMAKE_CURRENT_SOURCE_DIR}/include"
)

# Link libraries
target_link_libraries(${TARGET} PUBLIC UE4SS)

# ✅ Post-build command (copies DLL after building)
add_custom_command(TARGET ${TARGET} POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy
        "$<TARGET_FILE:${TARGET}>"
        "C:/Program Files (x86)/Steam/steamapps/common/Octopath_Traveler2/Octopath_Traveler2/Binaries/Win64/Mods/OT2AP/dlls/main.dll"
    COMMENT "Copying ${TARGET} DLL to Octopath Traveler 2 Mods folder..."
)
