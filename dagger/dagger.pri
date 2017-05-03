QT  +=

win32{
LIBS += -L"E:/openssl/win32/lib" -llibeay32
INCLUDEPATH += $$quote(E:/openssl/win32/include)
}

INCLUDEPATH +=  $$PWD

HEADERS += \
    $$PWD/loadlibeay32.h \
    $$PWD/vimafile.h

SOURCES += \
    $$PWD/loadlibeay32.cpp \
    $$PWD/vimafile.cpp
