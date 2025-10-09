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

    property real navbar_minimumWidth: 230
    property real viewport_minimumWidth: 270

    title: "Scheduler"
    height: 700
    minimumHeight: 350
    width: 1200
    minimumWidth: navbar_minimumWidth + viewport_minimumWidth
    visible: true
    color: color_backgroundPrimary

    /* MAIN AREA VIEWPORTS */

    OverviewArea {
        id: mainArea_overview

        anchors.left: navbar.right
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.bottom: parent.bottom

        color: "#ffffff"

        visible: navbutton_overview.checked
    }
    RulesArea {
        id: mainArea_rules

        anchors.left: navbar.right
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.bottom: parent.bottom

        color: "#ff0000"

        visible: navbutton_rules.checked
    }
    SubjectsArea {
        id: mainArea_subjects

        anchors.left: navbar.right
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.bottom: parent.bottom

        color: "#0000ff"

        visible: navbutton_subjects.checked
    }
    TeachersArea {
        id: mainArea_teachers

        anchors.left: navbar.right
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.bottom: parent.bottom

        color: color_backgroundPrimary

        visible: navbutton_teachers.checked
    }

    /* LEFT BAR */

    RectangularShadow {
        anchors.fill: navbar
        radius: navbar.topRightRadius * 0.75
        offset.x: 5
        blur: 15
        spread: 5
        color: Qt.darker(navbar.color, 1.2)
    }

    Rectangle {
        // Left area (Tab Menu)

        id: navbar
        color: color_backgroundSecondary

        anchors.top: parent.top
        anchors.left: parent.left

        height: parent.height
        width: Utils.clamp(navbar_minimumWidth, parent.width * 0.2, 300)

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
                img: "icons/overview"
            }
            NavButton {
                id: navbutton_rules
                label: "Rules"
                onClicked: JS.onRulesClick()
                img: "icons/rules"
            }
            NavButton {
                id: navbutton_subjects
                label: "Subjects"
                onClicked: JS.onSubjectsClick()
                img: "icons/subjects"
            }
            NavButton {
                id: navbutton_teachers
                label: "Teachers"
                onClicked: JS.onTeachersClick()
                img: "icons/people"
            }
            Item {
                width: parent.width
                height: parent.height - (Utils.clamp(50, parent.height * 0.125, 80) * 4.75)
            }
        }
        IconButton {
            id: settingsButton

            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.margins: 20

            enabled: navbar.width >= 150
            visible: this.enabled
            src: "icons/settings"
            backgroundColor: color_backgroundSecondary
            height: 35
            width: 35
            onClicked: JS.onSettingsClick()
        }
        IconButton {
            id: navbarButton

            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.margins: 20

            src: "icons/arrow_left"
            backgroundColor: color_backgroundSecondary
            smooth: navbar.bottomRightRadius
            height: 35
            width: 35

            checkable: true
        }

        states: [
            State {
                name: "narrow"
                when: navbarButton.checked
                PropertyChanges {
                    target: navbar
                    width: 80
                }
            },
            State {
                name: "wide"
                when: !navbarButton.checked
                PropertyChanges {
                    target: navbar
                    width: Utils.clamp(navbar_minimumWidth, parent.width * 0.2, 300)
                }
            }
        ]
        transitions: [
            Transition {
                to: "narrow"
                SequentialAnimation {
                    PropertyAnimation {
                        target: navbar
                        property: "width"
                        duration: 250
                    }
                    PropertyAction {
                        target: navbarButton
                        property: "src"
                        value: "icons/arrow_right"
                    }
                }
            },
            Transition {
                to: "wide"
                SequentialAnimation {
                    PropertyAnimation {
                        target: navbar
                        property: "width"
                        duration: 250
                    }
                    PropertyAction {
                        target: navbarButton
                        property: "src"
                        value: "icons/arrow_left"
                    }
                }
            }
        ]
    }
}
