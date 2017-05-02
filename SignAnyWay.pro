#-------------------------------------------------
#
# Project created by QtCreator 2017-04-26T11:07:42
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = SignAnyWay
TEMPLATE = app

win32{
LIBS += -L"E:/openssl/win32/lib" -llibeay32
INCLUDEPATH += $$quote(E:/openssl/win32/include)
}

include($$PWD/dagger/dagger.pri)

SOURCES += main.cpp\
        mainwindow.cpp \
    p1signaction.cpp

HEADERS  += mainwindow.h \
    p1signaction.h

DISTFILES += \
    dagger/dagger.pri
