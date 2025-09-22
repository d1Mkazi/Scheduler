qt_add_executable(${PROJECT_NAME}
    cpp/main.cpp
    cpp/shortcuts.cpp
)

add_subdirectory(qt)

target_include_directories(${PROJECT_NAME} PRIVATE cpp/inc)
target_link_libraries(${PROJECT_NAME} PRIVATE Qt6::Widgets Qt6::Quick Qt6::Core Qt6::Qml)

set_target_properties(${PROJECT_NAME} PROPERTIES WIN32_EXECUTABLE ON)
