import QtQuick
import QtQuick.Controls

import "utils.js" as Utils


AbstractButton {
    property string src: ""
    property string backgroundColor: ""
    property real smooth: 0

    height: this.height
    width: this.width

    //checkable: true
    checked: false
    onClicked: this.onClicked

    Rectangle {
        anchors.fill: parent
        color: backgroundColor
        radius: smooth
    }
    Image {
        anchors.fill: parent
        source: src
    }
}
