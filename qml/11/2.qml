import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15

Window {
    id: root
    visible: true
    width: 800
    height: 600
    title: "Музыкальный плеер"

    Rectangle {
        id: player
        anchors.fill: parent
        color: "#202020"

        Column {
            id: layout
            anchors.centerIn: parent
            spacing: root.height * 0.05
            width: root.width * 0.6

            Rectangle {
                id: cover
                width: layout.width
                height: layout.width
                color: "#404040"
                radius: 10
                Image {
                    anchors.fill: parent
                    anchors.margins: 10
                    source: "https://i.scdn.co/image/ab67616d0000b273072e9faef2ef7b6db63834a3"
                    fillMode: Image.PreserveAspectCrop
                }
            }

            Text {
                text: "Travis Scott — STARGAZING"
                color: "white"
                font.pixelSize: 28
              	font.family: "Arial"
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Rectangle {
                id: progressBar
                width: layout.width
                height: root.height * 0.02
                color: "#555"
                radius: height / 2

                Rectangle {
                    width: progressBar.width * 0.3
                    height: progressBar.height
                    color: "#1db954"
                    radius: height / 2
                }
            }

            Row {
                spacing: layout.width * 0.1
                anchors.horizontalCenter: parent.horizontalCenter

                Rectangle {
                    width: root.width * 0.1
                    height: width
                    color: "#333"
                    radius: width / 2
                    Text {
                        anchors.centerIn: parent
                        text: "⏮"
                        font.pixelSize: parent.width * 0.4
                        color: "white"
                    }
                }

                Rectangle {
                    width: root.width * 0.12
                    height: width
                    color: "#1db954"
                    radius: width / 2
                    Text {
                        anchors.centerIn: parent
                        text: "▶"
                        font.pixelSize: parent.width * 0.4
                        color: "white"
                    }
                }

                Rectangle {
                    width: root.width * 0.1
                    height: width
                    color: "#333"
                    radius: width / 2
                    Text {
                        anchors.centerIn: parent
                        text: "⏭"
                        font.pixelSize: parent.width * 0.4
                        color: "white"
                    }
                }
            }
        }
    }
}
