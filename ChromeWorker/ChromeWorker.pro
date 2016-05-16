TEMPLATE = app
CONFIG += windows
CONFIG -= app_bundle
CONFIG -= qt

DEFINES+=CURL_STATICLIB
SOURCES += main.cpp \
    mainapp.cpp \
    mainhandler.cpp \
    pipesclient.cpp \
    log.cpp \
    commandparser.cpp \
    proxydata.cpp \
    xml_encoder.cpp \
    devtoolshandler.cpp \
    cookievisitor.cpp \
    converter.cpp \
    match.cpp \
    base64.cpp \
    browserdata.cpp \
    v8handler.cpp \
    javascriptextensions.cpp \
    elementcommand.cpp \
    browsereventsemulator.cpp \
    toolboxhandler.cpp \
    mainlayout.cpp \
    scenariohandler.cpp \
    toolboxv8handler.cpp \
    scenariov8handler.cpp \
    inspectresult.cpp \
    variablesextractor.cpp \
    extract_functions.cpp \
    png/lodepng.cpp \
    settings.cpp \
    translate.cpp \
    curlresourcehandler.cpp \
    trim.cpp \
    split.cpp \
    readallfile.cpp \
    replace.cpp \
    multithreading.cpp

INCLUDEPATH += $(BAS_PATH_WORKER)/include

LIBS += -L$(BAS_PATH_WORKER)/lib -llibcef -lcef_sandbox -llibcef_dll_wrapper -lAdvapi32 -luser32 -lPsapi -lshell32 -lDbgHelp -lgdi32 -llibcurl -llibeay32 -lssleay32 -lnetwork-uri
QMAKE_CXXFLAGS_RELEASE += /MT

QMAKE_CXXFLAGS_DEBUG += /MTd /FS

HEADERS += \
    mainapp.h \
    mainhandler.h \
    pipesclient.h \
    log.h \
    commandparser.h \
    processcheck.h \
    proxydata.h \
    xml_encoder.h \
    devtoolshandler.h \
    cookievisitor.h \
    converter.h \
    json/picojson.h \
    match.h \
    base64.h \
    browserdata.h \
    v8handler.h \
    elementcommand.h \
    javascriptextensions.h \
    browsereventsemulator.h \
    resource.h \
    toolboxhandler.h \
    mainlayout.h \
    scenariohandler.h \
    toolboxv8handler.h \
    scenariov8handler.h \
    inspectresult.h \
    variablesextractor.h \
    extract_functions.h \
    png/lodepng.h \
    settings.h \
    translate.h \
    curlresourcehandler.h \
    opensslmultithreaded.h \
    trim.h \
    split.h \
    readallfile.h \
    replace.h \
    refcountpublic.h \
    multithreading.h

INCLUDEPATH += xml json png

win32:RC_FILE = main.rc

DISTFILES += \
    main.rc

QMAKE_LFLAGS_WINDOWS = /SUBSYSTEM:WINDOWS,5.01