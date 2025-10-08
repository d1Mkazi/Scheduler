import QtQuick
import QtQuick.Controls

import "utils.js" as Utils


AbstractButton {
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

    MouseArea {
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
        onClicked: parent.click()
    }

    width: parent.width
    height: Utils.clamp(50, this.parent.height * 0.125, 80)

    //checkable: true
    checked: false

    Rectangle {
        id: mainBackground
        anchors.fill: parent

        color: parent.checked ? color_active : color_backgroundSecondary
        topRightRadius: topRadius
        bottomRightRadius: bottomRadius
    }
    Rectangle {
        id: fillerBackground
        anchors.top: mainBackground.top
        anchors.left: mainBackground.left

        height: mainBackground.height
        width: 0

        topRightRadius: mainBackground.topRightRadius
        bottomRightRadius: mainBackground.bottomRightRadius

        color: Qt.darker(color_active, 1.15)

        states: [
            State {
                name: "hover"
                when: fillerBackground.parent.hovered && !fillerBackground.parent.checked
                PropertyChanges {
                    target: fillerBackground
                    width: 0
                }
            },
            State {
                name: "off"
                when: !fillerBackground.parent.checked
            },
            State {
                name: "on"
                when: fillerBackground.parent.checked
            }
        ]
        transitions: [
            Transition {
                to: "hover"
                PropertyAnimation {
                    target: fillerBackground
                    property: "width"
                    from: 0
                    to: mainBackground.width
                    duration: 150
                }
            },
            Transition {
                to: "off"
                PropertyAnimation {
                    target: fillerBackground
                    property: "width"
                    from: fillerBackground.width
                    to: 0
                    duration: 100
                }
            },
            Transition {
                to: "on"
                PropertyAction {
                    target: mainBackground
                    property: "color"
                    value: color_active
                }
                PropertyAction {
                    target: fillerBackground
                    property: "width"
                    value: 0
                }
            }
        ]
    }

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
            text: parent.parent.width >= navbar_minimumWidth ? label : ""
            color: "#ffffff"
            font {
                pointSize: 20
                family: primaryFont.name
                weight: parent.parent.checked ? Font.Black : Font.Medium
            }
        }
    }
}
