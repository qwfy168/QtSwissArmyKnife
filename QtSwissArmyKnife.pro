#-------------------------------------------------
#
# Project created by QtCreator 2018-07-06T22:57:33
#
#-------------------------------------------------

QT       += core gui xml

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets network

TARGET = QtSwissArmyKnife
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        src/main.cpp \
        src/ui/mainwindow.cpp \
    src/SAKApplication.cpp \
    src/comment/SAKIODeviceWidget.cpp \
    src/comment/SAKIODevice.cpp \
    src/comment/SAKIODeviceControler.cpp \
    src/UdpClient/UdpSAKIODevice.cpp \
    src/UdpClient/UdpSAKIODeviceControler.cpp \
    src/UdpClient/UdpSAKIODeviceWidget.cpp \
    src/TcpClient/TcpSAKIODevice.cpp \
    src/TcpClient/TcpSAKIODeviceControler.cpp \
    src/TcpClient/TcpSAKIODeviceWidget.cpp \
    src/TcpServer/TcpServerSAKIODevice.cpp \
    src/TcpServer/TcpServerSAKIODeviceControler.cpp \
    src/TcpServer/TcpServerSAKIODeviceWidget.cpp \
    src/comment/SAKSettings.cpp \
    src/comment/AutoResponseItem.cpp \
    src/comment/AutoResponseSettingPanel.cpp \
    src/ui/SAKVersion.cpp



HEADERS += \
        src/ui/mainwindow.h \
    src/SAKApplication.h \
    src/comment/SAKIODeviceWidget.h \
    src/comment/SAKIODevice.h \
    src/comment/SAKIODeviceControler.h \
    src/UdpClient/UdpSAKIODevice.h \
    src/UdpClient/UdpSAKIODeviceControler.h \
    src/UdpClient/UdpSAKIODeviceWidget.h \
    src/TcpClient/TcpSAKIODevice.h \
    src/TcpClient/TcpSAKIODeviceControler.h \
    src/TcpClient/TcpSAKIODeviceWidget.h \
    src/TcpServer/TcpServerSAKIODevice.h \
    src/TcpServer/TcpServerSAKIODeviceControler.h \
    src/TcpServer/TcpServerSAKIODeviceWidget.h \
    src/comment/SAKSettings.h \
    src/comment/AutoResponseItem.h \
    src/comment/AutoResponseSettingPanel.h \
    src/ui/SAKVersion.h

FORMS += \
        src/ui/mainwindow.ui \
    src/comment/SAKIODeviceWidget.ui \
    src/UdpClient/UdpSAKIODeviceControler.ui \
    src/TcpClient/TcpSAKIODeviceControler.ui \
    src/TcpServer/TcpServerSAKIODeviceControler.ui \
    src/comment/AutoResponseItem.ui \
    src/comment/AutoResponseSettingPanel.ui \
    src/ui/SAKVersion.ui

INCLUDEPATH += \
    src \
    src/ui \
    src/ui/common \
    src/UdpClient \
    src/TcpClient \
    src/TcpServer \
    src/console \
    src/comment

RESOURCES += \
    resource/images.qrc

win32{
    RC_ICONS = resource/icon/window.ico
}

#--------------------------------------------------------------------------------------------
#编译目录配置
MOC_DIR             = $$OUT_PWD/moc
OBJECTS_DIR         = $$OUT_PWD/obj
RCC_DIR             = $$OUT_PWD/resource
UI_DIR              = $$OUT_PWD/ui

#--------------------------------------------------------------------------------------------
# 子项目
include(QtSwissArmyKnifeSetup.pri)
include(SAKTools.pri)

# 取消该宏的定义可以将串口模块屏蔽
winrt || linux-arm{
    DEFINES += SAK_NO_SERIALPORT_ASSISTANT
    message( "该版本Qt可能不包含串口模块，已经忽略串口模块！（串口助手功能被屏蔽！）" )
}else {
    include(src/SerialPort/SAKSerialportAssistant.pri)
}


