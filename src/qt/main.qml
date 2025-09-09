import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

import "main.js" as JS
import "utils.js" as Utils


Window {
    property string color_backgroundPrimary: "#474444"
    property string color_backgroundSecondary: "#373838"

    title: "Scheduler"
    width: 1200
    height: 700
    visible: true
    color: color_backgroundPrimary

    RowLayout {
        anchors.fill: parent
        spacing: 0

        Rectangle {
            // Left area

            color: color_backgroundSecondary

            Layout.preferredWidth: parent.width * 0.2 // 20%
            Layout.maximumWidth: 300
            Layout.fillHeight: true

            topRightRadius: 40
            bottomRightRadius: 40

            Column {
                anchors.fill: parent
                spacing: 0

                NavButton {
                    id: navbutton_main

                    label: "Main"
                    topRadius: 40
                    _height: Utils.clamp(50, parent.height * 0.125, 100)

                    onClicked: JS.onPrimaryClick()
                    checked: true
                }
                NavButton {
                    id: navbutton_secondary

                    label: "Second"
                    _height: Utils.clamp(50, parent.height * 0.125, 100)

                    onClicked: JS.onSecondaryClick()
                }
            }
        }
        Rectangle {
            // Main (right) area

            color: color_backgroundPrimary

            Layout.fillWidth: true
            Layout.fillHeight: true

            padding: Utils.clamp(5, wi
        }
    }
}
