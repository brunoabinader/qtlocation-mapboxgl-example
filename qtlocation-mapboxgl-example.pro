TARGET = qtlocation-mapboxgl-example
TEMPLATE = app

QT += \
    qml \
    network \
    quick \
    positioning \
    location \
    sql \
    opengl

CONFIG += \
    c++11

SOURCES += \
    main.cpp

RESOURCES += \
    qml.qrc

INSTALLS += \
    target
