import QtQuick
import QtQuick.Controls


AbstractButton {
    id: primaryButton

    // constants
    property string primaryButtonColorTransparent: "#cc729e2f"
    property string primaryButtonColor: "#729e2f"

    property string img: ""

    height: this.height
    width: this.width

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
        onClicked: primaryButton.click()
    }

    Rectangle {
        id: background
        anchors.fill: parent
        radius: 15
        color: "transparent"
        border.color: primaryButtonColor
        border.width: 5

        Text {
            id: buttonLabel
            anchors.centerIn: parent
            text: primaryButton.text
            color: "white"

            font {
                family: "Arial"
                pointSize: 16
            }
        }
        Image {
            id: icon
            anchors.centerIn: parent
            height: Math.min(parent.width * 0.8, parent.height * 0.8)
            width: Math.min(parent.width * 0.8, parent.height * 0.8)
            source: img
        }
    }

    states: [
        State {
            name: "hover"
            when: primaryButton.hovered && !(mouseArea.pressed || primaryButton.checked)
            PropertyChanges {
                background.color: primaryButtonColorTransparent
                //buttonLabel.color: "white"
            }
        },
        State {
            name: "pressed"
            when: mouseArea.pressed || primaryButton.checked
            extend: "hover"
            PropertyChanges {
                background.color: Qt.lighter(primaryButtonColorTransparent, 1.25)
            }
        },
        State {
            name: "off"
            when: !primaryButton.pressed && !primaryButton.checked && !primaryButton.hovered
            PropertyChanges {
                background.color: "transparent"
            }
        }
    ]

    transitions: [
        Transition {
            from: "off"
            to: "hover"
            PropertyAnimation {
                property: "color"
                duration: 150
            }
        },
        Transition {
            from: "hover"
            to: "off"
            PropertyAnimation {
                property: "color"
                duration: 150
            }
        }
    ]
}
