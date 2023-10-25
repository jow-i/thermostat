import QtQuick 2.15
import QtQuick.Controls.Basic
Rectangle {
    id: settingScreen
    color: "black"
    anchors.fill: parent

    Image {
        id: backButton
        anchors {
            left: parent.left
            top: parent.top
            margins: 10
        }
        width: 30
        height: 30
        source: "qrc:/ui/Assets/previous.png"

        MouseArea {
            anchors.fill:parent
            onClicked:{
                if( settingsStackView.depth >= 2)
                    settingsStackView.pop()
                else
                    mainLoader.source ="qrc:/ui/HomeScreen/HomeScreen.qml"
            }
        }
    }

    StackView {
        id: settingsStackView
        anchors.fill: parent
        initialItem: "SettingsMainMenu.qml"
        clip: true
    }

}
