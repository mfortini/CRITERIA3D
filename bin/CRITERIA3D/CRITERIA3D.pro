#-----------------------------------------------------
#
#   CRITERIA3D
#   3D soil water balance
#   This project is part of CRITERIA-3D distribution
#
#-----------------------------------------------------

QT       += core gui network widgets sql xml 3dcore 3drender 3dextras charts

TEMPLATE = app
TARGET = CRITERIA3D

CONFIG += debug_and_release
QMAKE_CXXFLAGS += -std=c++11

DEFINES += CRITERIA3D

INCLUDEPATH +=  ./shared  \
                ../../mapGraphics \
                ../../agrolib/soilFluxes3D/header  \
                ../../agrolib/crit3dDate ../../agrolib/mathFunctions \
                ../../agrolib/crop ../../agrolib/soil ../../agrolib/meteo ../../agrolib/gis \
                ../../agrolib/interpolation ../../agrolib/solarRadiation  \
                ../../agrolib/soilWidget ../../agrolib/utilities  \
                ../../agrolib/dbMeteoPoints ../../agrolib/dbMeteoGrid \
                ../../agrolib/project ../../agrolib/graphics  ../../agrolib/commonDialogs \
                ../../mapGraphics ../../agrolib/meteoWidget


CONFIG(debug, debug|release) {
    LIBS += -L../../agrolib/graphics/debug -lgraphics
    LIBS += -L../../mapGraphics/debug -lMapGraphics
    LIBS += -L../../agrolib/project/debug -lproject
    LIBS += -L../../agrolib/meteoWidget/debug -lmeteoWidget
    LIBS += -L../../agrolib/commonDialogs/debug -lcommonDialogs
    LIBS += -L../../agrolib/dbMeteoGrid/debug -ldbMeteoGrid
    LIBS += -L../../agrolib/dbMeteoPoints/debug -ldbMeteoPoints
    LIBS += -L../../agrolib/soilWidget/debug -lsoilWidget
    LIBS += -L../../agrolib/crop/debug -lcrop
    LIBS += -L../../agrolib/soil/debug -lsoil
    LIBS += -L../../agrolib/utilities/debug -lutilities
    LIBS += -L../../agrolib/solarRadiation/debug -lsolarRadiation
    LIBS += -L../../agrolib/interpolation/debug -linterpolation
    LIBS += -L../../agrolib/meteo/debug -lmeteo
    LIBS += -L../../agrolib/gis/debug -lgis
    LIBS += -L../../agrolib/soilFluxes3D/debug -lsoilFluxes3D
    LIBS += -L../../agrolib/mathFunctions/debug -lmathFunctions
    LIBS += -L../../agrolib/crit3dDate/debug -lcrit3dDate

} else {
    LIBS += -L../../agrolib/graphics/release -lgraphics
    LIBS += -L../../mapGraphics/release -lMapGraphics
    LIBS += -L../../agrolib/project/release -lproject
    LIBS += -L../../agrolib/meteoWidget/release -lmeteoWidget
    LIBS += -L../../agrolib/commonDialogs/release -lcommonDialogs
    LIBS += -L../../agrolib/dbMeteoGrid/release -ldbMeteoGrid
    LIBS += -L../../agrolib/dbMeteoPoints/release -ldbMeteoPoints
    LIBS += -L../../agrolib/soilWidget/release -lsoilWidget
    LIBS += -L../../agrolib/crop/release -lcrop
    LIBS += -L../../agrolib/soil/release -lsoil
    LIBS += -L../../agrolib/utilities/release -lutilities
    LIBS += -L../../agrolib/solarRadiation/release -lsolarRadiation
    LIBS += -L../../agrolib/interpolation/release -linterpolation
    LIBS += -L../../agrolib/meteo/release -lmeteo
    LIBS += -L../../agrolib/gis/release -lgis
    LIBS += -L../../agrolib/soilFluxes3D/release -lsoilFluxes3D
    LIBS += -L../../agrolib/mathFunctions/release -lmathFunctions
    LIBS += -L../../agrolib/crit3dDate/release -lcrit3dDate
}


SOURCES += mainwindow.cpp \
    criteria3DProject.cpp \
    shared/project3D.cpp \
    viewer3d.cpp \
    main.cpp


HEADERS += mainwindow.h \
    criteria3DProject.h \
    shared/project3D.h \
    viewer3d.h


FORMS += mainwindow.ui

