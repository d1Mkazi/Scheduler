cmake_minimum_required(VERSION 3.16)

project(Scheduler VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS
    Widgets
    Quick
    Core
    Qml
)

qt_standard_project_setup(REQUIRES 6.8)

qt_policy(SET QTP0004 NEW)

# DIRECTORY: /src/ #
qt_add_executable(${PROJECT_NAME}
    src/cpp/main.cpp
    src/cpp/shortcuts.cpp
)

# DIRECTORY: /src/qt/ #
set(WORKING_DIR src/qt)
qt_add_qml_module(${PROJECT_NAME}
    URI gui
    VERSION 1.0
    QML_FILES
        src/qt/main.qml
        src/qt/NavButton.qml
        src/qt/main.js
        src/qt/utils.js
)
#######################

target_include_directories(${PROJECT_NAME} PRIVATE src/cpp/inc)
target_link_libraries(${PROJECT_NAME} PRIVATE Qt6::Widgets Qt6::Quick Qt6::Core Qt6::Qml)

set_target_properties(${PROJECT_NAME} PROPERTIES WIN32_EXECUTABLE ON)
####################

include(GNUInstallDirs)
install(TARGETS ${PROJECT_NAME}
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
