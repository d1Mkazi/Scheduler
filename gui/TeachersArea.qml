import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Effects


import "overview.js" as Script


Rectangle {
    anchors.margins: 15

    ColumnLayout {
        anchors.fill: parent
        spacing: 15
        Rectangle {
            id: header
            Layout.fillWidth: true
            Layout.preferredHeight: 50

            color: color_backgroundSecondary

            PrimaryButton {
                anchors.fill: parent

                img: "icons/people"
            }
        }
    }
}
