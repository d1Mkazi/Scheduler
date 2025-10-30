import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Effects


import "teachers.js" as Script
import backend


Rectangle {
    anchors.margins: 10

    ColumnLayout {
        anchors.fill: parent
        spacing: 15

        Rectangle {
            id: header
            Layout.fillWidth: true
            Layout.minimumHeight: 35
            Layout.preferredHeight: 50
            Layout.maximumHeight: 50

            color: color_backgroundSecondary
            radius: 10

            RowLayout {
                anchors.fill: parent
                anchors.leftMargin: 10
                anchors.topMargin: 5
                anchors.rightMargin: anchors.leftMargin
                anchors.bottomMargin: anchors.topMargin
                spacing: 10

                TextLine {
                    id: field_surname
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    placeholderText: "Surname"
                }
                TextLine {
                    id: field_firstname
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    placeholderText: "First name"
                }
                TextLine {
                    id: field_middlename
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    placeholderText: "Middle name"
                }
                IconButton {
                    id: button_addTeacher
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Layout.maximumWidth: height
                    Layout.minimumWidth: height

                    backgroundColor: color_backgroundSecondary
                    src: "icons/add"
                    onClicked: {
                        let err = Backend.addTeacher(field_surname.text, field_firstname.text, field_middlename.text)
                        if(err) {
                            console.log("Error when adding a new teacher:", err)
                            return;
                        }

                        Script.addTeacher(field_surname.text, field_firstname.text, field_middlename.text)
                    }
                }

                Shortcut {
                    enabled: (field_surname.focus || field_firstname.focus || field_middlename.focus) && button_addTeacher.enabled
                    sequence: "Return"
                    onActivated: button_addTeacher.click()
                }
            }
        }

        ScrollView {
            Layout.fillWidth: true
            Layout.fillHeight: true

            contentWidth: availableWidth

            ColumnLayout {
                id: teacherList
                anchors.fill: parent
            }
        }
    }
}
