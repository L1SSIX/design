import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 300
    height: 500
    title: qsTr("Task_for_Layout")

    property int selectedIndex: -1

    ListModel {
        id: footerModel
        ListElement { label: "Item 1"; header: "Header 1"; content: "Item 1 content" }
        ListElement { label: "Item 2"; header: "Header 2"; content: "Item 2 content" }
        ListElement { label: "Item 3"; header: "Header 3"; content: "Item 3 content" }
    }

    ColumnLayout {
        anchors.fill: parent
        spacing: 0

        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 50
            color: "#D3D3D3"

            Text {
                id: headerText
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
                id: contentText
                anchors.centerIn: parent
                text: "Some content"
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
                    model: footerModel

                    delegate: Rectangle {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        color: "#D3D3D3"
                        border.color: "#AAAAAA"
                        opacity: selectedIndex === index || selectedIndex === -1 ? 1.0 : 0.4

                        MouseArea {
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                            onClicked: {
                                selectedIndex = index;
                                headerText.text = footerModel.get(index).header;
                                contentText.text = footerModel.get(index).content;
                            }
                        }

                        Text {
                            anchors.centerIn: parent
                            text: footerModel.get(index).label
                        }
                    }
                }
            }
        }
    }
}
