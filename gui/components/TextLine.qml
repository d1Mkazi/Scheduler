import QtQuick
import QtQuick.Controls


TextField {
    property bool editable: true

    background: Rectangle {
        color: editable ? color_textField_active : color_textField
        radius: 10
    }

    font {
        family: "Noto Sans"
        pointSize: parent.height * 0.25
        //color: "white"
    }

    readOnly: !editable
}
