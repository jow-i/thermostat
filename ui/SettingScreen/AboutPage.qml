import QtQuick 2.15



    Rectangle{
        id: aboutPageBackground
        width: parent.width * .7
        height: parent.height * .7
        anchors.centerIn: parent
        radius: 10
        color: "black"
        border.width: 2
        border.color: "white"

        Text{
            anchors{
                top:parent.top
                left:  parent.left
                leftMargin: 40
                topMargin: 60
            }

            color: "white"
            font.pixelSize: 30
            text: "Made by:<br> JOWI<br><br>Developed using QT/QML"
        }
    }



