TEMPLATE = app
CONFIG += qt c++17
CONFIG -= app_bundle

# Project Name
TARGET = telephone_book

# Output Directories
DESTDIR = ./bin
OBJECTS_DIR = ./obj

# Source files
SOURCES += \
    main.cpp \
    mainwindow.cpp \
    search.cpp \
    tablewidgetitem.cpp \
    telephone_book.cpp \
    contact.cpp

# Header files
HEADERS += \
    mainwindow.h \
    search.h \
    tablewidgetitem.h \
    telephone_book.h \
    contact.h

# UI Files
FORMS += \
    mainwindow.ui \
    search.ui \
    telephone_book.ui \
    dialog.ui

# Qt Resource files (if any)
#RESOURCES += my_resources.qrc

# Qt Modules (widgets is default, add others if needed)
QT += widgets

# Compiler flags
QMAKE_CXXFLAGS += -Wall -Wextra -Werror -g #-O2  # Enable all warnings, treat warnings as errors, and enable debug info, remove -g and add -O2 for release build
QMAKE_CXXFLAGS += -I. # Include current directory to compile

# Linker Flags (if necessary)
# QMAKE_LFLAGS +=

# Custom build steps, if needed
# PRE_TARGETDEPS +=

# Deployment steps (if necessary)
# INSTALLS +=

# C++ standard
CONFIG(debug, debug|release) {
    QMAKE_CXXFLAGS += -DDEBUG # Add -DDEBUG for debug builds
}

# Operating system specific settings
unix {
    QMAKE_CXXFLAGS += -pthread #For posix systems
}

# Windows specific settings
win32{
    #Additional settings if necessary
}
