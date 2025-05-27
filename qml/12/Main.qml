import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 300
    height: 500
    title: qsTr("Task_for_Layout")

    ColumnLayout {
        anchors.fill: parent
        spacing: 0
        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 50
            color: "#D3D3D3"
            Text {
                anchors.centerIn: parent
                text: "Header"
                font.bold: true
            }
        }
        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#F5F5F5"
            border.color: "gray"
            Text {
                anchors.centerIn: parent
                text: "Content"
            }
        }
        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 50
            color: "#D3D3D3"

            RowLayout {
                anchors.fill: parent
                spacing: 1

                Repeater {
                    model: 3
                    delegate: Rectangle {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        color: "#D3D3D3"
                        border.color: "#AAAAAA"
                        Text {
                            anchors.centerIn: parent
                            text: index + 1
                        }
                    }
                }
            }
        }
    }
}
