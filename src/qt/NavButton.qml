import QtQuick
import QtQuick.Controls


Button {
    property string label: "undef"
    property real topRadius: 0
    property real bottomRadius: 0
    property real _height: parent.height * 0.125

    width: parent.width
    height: _height

    checkable: true
    checked: false

    Text {
        anchors.fill: parent
        text: label
        color: "white"
        font {
            pointSize: 20
        }
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    background: Rectangle {
        anchors.fill: parent

        color: parent.checked ? color_backgroundPrimary : color_backgroundSecondary
        topRightRadius: topRadius
        bottomRightRadius: bottomRadius
    }
}
