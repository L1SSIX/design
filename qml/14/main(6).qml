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

        ToolBar {
            Layout.fillWidth: true
            Label {
                id: headerText
                anchors.centerIn: parent
                text: "Header"
                font.bold: true
            }
        }

        Frame {
            Layout.fillWidth: true
            Layout.fillHeight: true
            padding: 10

            Label {
                id: contentText
                anchors.centerIn: parent
                text: "some content"
                wrapMode: Label.Wrap
            }
        }

        ToolBar {
            Layout.fillWidth: true

            RowLayout {
                anchors.fill: parent
                spacing: 4
                Repeater {
                    model: footerModel

                    delegate: Button {
                        Layout.fillWidth: true
                        text: model.label
                        opacity: selectedIndex === index || selectedIndex === -1 ? 1.0 : 0.4
                        onClicked: {
                            selectedIndex = index
                            headerText.text = model.header
                            contentText.text = model.content
                        }
                    }
                }
            }
        }
    }
}
