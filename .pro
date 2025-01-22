TEMPLATE = app
CONFIG += qt c++17
CONFIG -= app_bundle

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

# Application name
TARGET = telephone_book

# Qt resources
QT += widgets
