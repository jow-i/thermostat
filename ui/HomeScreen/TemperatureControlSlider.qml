import QtQuick 2.15
import QtQuick.Controls.Basic



Slider {
    id:temperatureControlSlider
    from:55
    to: 85
    stepSize: 1
    orientation: Qt.Vertical
    onValueChanged: systemController.setTargetTemp( value )

    background: Rectangle{
        height: parent.height
        width: 3
        anchors.centerIn: parent
        implicitWidth: 10
        implicitHeight: 200

    }

    handle: Rectangle {
        y: temperatureControlSlider.visualPosition * (temperatureControlSlider.availableHeight - height)
        width: 60
        height: 60
        radius: width / 2
        color: "black"
        border.color:"white"
        border.width: 3
        anchors.horizontalCenter: parent.horizontalCenter

        Text {
            anchors.centerIn: parent
            color: "white"
            font.pixelSize: 30
            text: temperatureControlSlider.value
        }
    }
}

