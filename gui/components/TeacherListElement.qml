import QtQuick
import QtQuick.Layouts
import QtQuick.Controls


Rectangle {
    id: element

    property QtObject surnameField: surname_field
    property QtObject firstnameField: firstname_field
    property QtObject middlenameField: middlename_field

    //Layout.fillWidth: true
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

        TextLine {
            id: surname_field

            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 250

            color: editable ? "black" : "gray"
            placeholderText: "Surname"
            editable: edit_button.checked
        }
        TextLine {
            id: firstname_field

            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 250

            color: editable ? "black" : "gray"
            placeholderText: "First name"
            editable: edit_button.checked
        }
        TextLine {
            id: middlename_field

            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 250

            color: editable ? "black" : "gray"
            placeholderText: "Second name"
            editable: edit_button.checked
        }
        IconButton {
            id: edit_button

            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.minimumWidth: height
            Layout.maximumWidth: height
            src: this.checked ? "icons/confirm" : "icons/edit"
            backgroundColor: color_backgroundSecondary
            checkable: true
            onClicked: console.log("Edit:", element)
        }
        IconButton {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.minimumWidth: height
            Layout.maximumWidth: height
            src: "icons/remove"
            backgroundColor: color_backgroundSecondary
            enabled: !edit_button.checked
            onClicked: element.destroy()
        }
    }

    Shortcut {
        enabled: edit_button.checked
        sequence: "Return"
        onActivated: edit_button.click()
    }
}
