import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Window {
    id: mainWindow
    width: 360
    height: 640
    visible: true
    title: qsTr("dunno")
    property int defMargin: 8

    ListModel {
        id: my_model
        ListElement { name: "привет"; time: "14:01" }
        ListElement { name: "че каво"; time: "14:03" }
        ListElement { name: "пошли гулять"; time: "14:08" }
        ListElement { name: "пошли, куда?"; time: "14:15" }
        ListElement { name: "да так чисто по унику пройтись"; time: "14:17" }
        ListElement { name: "ну го"; time: "14:18" }
        ListElement { name: "выходи"; time: "14:22" }
    }

    ColumnLayout {
        anchors.fill: parent
        spacing: 0

        ListView {
            id: messageList
            Layout.fillWidth: true
            Layout.fillHeight: true
            model: my_model
            spacing: 5
            clip: true
            flickableDirection: Flickable.VerticalFlick

            onContentHeightChanged: {
                if (contentY + height >= contentHeight - 10) {
                    positionViewAtEnd();
                }
            }

            delegate: Rectangle {
                implicitHeight: messageContentLayout.implicitHeight + 2 * 10

                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width * 0.95

                border.color: "#cccccc"
                border.width: 1
                radius: 4

                ColumnLayout {
                    id: messageContentLayout
                    anchors.fill: parent
                    anchors.margins: 10
                    spacing: 5

                    Text {
                        text: name
                        font.bold: true
                        font.pixelSize: 15
                        wrapMode: Text.Wrap
                        color: "black"
                        Layout.fillWidth: true
                    }
                    Text {
                        text: "(" + time + ")"
                        color: "#666"
                        font.pixelSize: 12
                        Layout.alignment: Qt.AlignRight
                    }
                }
            }
            ScrollBar.vertical: ScrollBar {
                policy: ScrollBar.AsNeeded
            }
        }

        PageFooter {
            Layout.fillWidth: true
            onNewMessage: function(msg) {
                if (msg.trim() !== "") {
                    var newMsg = {
                        "name": msg,
                        "time": Qt.formatTime(new Date(), "hh:mm")
                    };
                    my_model.append(newMsg);
                    messageList.positionViewAtEnd();
                }
            }
        }
    }
}