import QtQuick
import QtQuick.Layouts
import QtQuick.Controls


Rectangle {
    id: element

    property QtObject surnameField: surname_field
    property QtObject firstnameField: firstname_field
    property QtObject secondnameField: secondname_field

    Layout.fillWidth: true
    height: 40

    radius: 10
    color: color_backgroundSecondary

    border.color: Qt.darker(this.color, 1.2)

    RowLayout {
        anchors.fill: parent
        anchors.leftMargin: 10
        anchors.topMargin: 5
        anchors.rightMargin: anchors.leftMargin
        anchors.bottomMargin: anchors.topMargin

        TextField {
            id: surname_field

            Layout.fillHeight: true
            Layout.fillWidth: true

            color: "gray"
            placeholderText: "Surname"
            enabled: edit_button.checked
        }
        TextField {
            id: firstname_field

            Layout.fillHeight: true
            Layout.fillWidth: true

            color: "gray"
            placeholderText: "First name"
            enabled: edit_button.checked
        }
        TextField {
            id: secondname_field

            Layout.fillHeight: true
            Layout.fillWidth: true

            color: "gray"
            placeholderText: "Second name"
            enabled: edit_button.checked
        }
        IconButton {
            id: edit_button

            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.minimumWidth: 20
            Layout.maximumWidth: height
            src: this.checked ? "icons/confirm" : "icons/edit"
            backgroundColor: color_backgroundSecondary
            checkable: true
            onClicked: console.log(element)
        }
        IconButton {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.minimumWidth: 20
            Layout.maximumWidth: height
            src: "icons/remove"
            backgroundColor: color_backgroundSecondary
            enabled: !edit_button.checked
            onClicked: console.log(element)
        }
    }
}
