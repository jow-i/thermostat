import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls
import QtQuick.Controls.Basic
import Monty 1.0

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Thermostat")

    SystemController {
        id: systemController
    }

    Loader{
        id: mainLoader
        anchors.fill: parent
        source: "./ui/HomeScreen/HomeScreen.qml"
    }
}
