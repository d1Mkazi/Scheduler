import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Effects

import "main.js" as JS
import "utils.js" as Utils


Window {
    property string color_backgroundPrimary: "#38383a"
    property string color_backgroundSecondary: Qt.darker(color_backgroundPrimary, 1.15)
    property string color_active: "#44444a"

    title: "Scheduler"
    width: 1200
    minimumWidth: 230 // Tab menu minimum width + TODO: main area width
    height: 700
    visible: true
    color: color_backgroundPrimary

    /* MAIN AREA VIEWPORTS */

    // nothing lol

    /* LEFT BAR */

    RectangularShadow {
        anchors.fill: menuArea
        radius: menuArea.topRightRadius
        offset.x: 5
        blur: 15
        spread: 5
        color: Qt.darker(menuArea.color, 1.2)
    }

    Rectangle {
        // Left area (Tab Menu)

        id: menuArea
        color: color_backgroundSecondary

        anchors.top: parent
        anchors.left: parent

        height: parent.height
        width: Utils.clamp(230, parent.width * 0.2, 300)

        topRightRadius: 40
        bottomRightRadius: 40

        Column {
            anchors.fill: parent
            spacing: 0

            NavButton {
                id: navbutton_overview
                label: "Overview"
                topRadius: 40
                onClicked: JS.onOverviewClick()
                checked: true
                img: "qrc:/gui/assets/overview.svg"
            }
            NavButton {
                id: navbutton_rules
                label: "Rules"
                onClicked: JS.onRulesClick()
                img: "qrc:/gui/assets/rules.svg"
            }
            Item {
                width: parent.width
                height: parent.height - (Utils.clamp(50, parent.height * 0.125, 80) * 3)
            }
            NavButton {
                // TODO: change this to Row {}
                id: navbutton_settings
                label: "Settings"
                bottomRadius: 40
                img: "qrc:/gui/assets/settings.svg"
            }
        }
    }
}
