import QtQuick
import QtQuick.Controls

import "utils.js" as Utils


Button {
    property string label: "undef"
    property real topRadius: 0
    property real bottomRadius: 0

    width: parent.width
    height: this.height

    checkable: true
    checked: false

    Text {
        anchors.fill: parent
        text: label
        color: "#ffffff"
        font {
            pointSize: 20
        }
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    background: Rectangle {
        anchors.fill: parent

        color: parent.checked ? color_active : color_backgroundSecondary
        topRightRadius: topRadius
        bottomRightRadius: bottomRadius
    }
}
