import QtQuick
import QtQuick.Controls

import "utils.js" as Utils


Button {
    property string label: "undef"
    property real topRadius: 0
    property real bottomRadius: 0
    property string img: ""

    FontLoader {
        id: primaryFont
        source: "Tienne.ttf"

        onStatusChanged: {
            if(primaryFont.status == FontLoader.Error) {
                console.log("Font Tienne has not been loaded!")
            }
        }
    }

    width: parent.width
    height: Utils.clamp(50, this.parent.height * 0.125, 80)

    checkable: true
    checked: false

    Row {
        anchors.verticalCenter: parent.verticalCenter
        spacing: 15

        Item {
            height: 1
            width: 1
        }
        Image {
            id: icon
            source: img
            height: 40
            width: 40
        }
        Text {
            anchors.verticalCenter: parent.verticalCenter
            text: label
            color: "#ffffff"
            font {
                pointSize: 20
                family: primaryFont.name
                weight: parent.parent.checked ? Font.Black : Font.Medium
            }
        }
    }

    background: Rectangle {
        anchors.fill: parent

        color: parent.checked ? color_active : color_backgroundSecondary
        topRightRadius: topRadius
        bottomRightRadius: bottomRadius
    }
}
