import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Effects


import "teachers.js" as Script


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

                TextField {
                    id: field_surname
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    placeholderText: "Surname"
                }
                TextField {
                    id: field_firstname
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    placeholderText: "First name"
                }
                TextField {
                    id: field_secondname
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    placeholderText: "Second name"
                }
                PrimaryButton {
                    Layout.fillWidth: true
                    Layout.minimumWidth: 50
                    Layout.maximumWidth: 150
                    Layout.fillHeight: true

                    img: "icons/people"
                    onClicked: Script.addTeacher(field_surname.text, field_firstname.text, field_secondname.text)
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
