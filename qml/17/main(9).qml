import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 300
    height: 500
    title: qsTr("Task_for_Login_Page")
    color: "#f5f5f5"

    property string password: ""

    ColumnLayout {
        anchors.centerIn: parent
        width: parent.width * 0.8
        spacing: 20

        Text {
            text: "Enter your password:"
            font.pixelSize: 16
            Layout.alignment: Qt.AlignHCenter
        }

        Rectangle {
            width: parent.width
            height: 60
            color: "white"
            border.width: 1
            border.color: "gray"
            radius: 4
            Layout.alignment: Qt.AlignHCenter

            Row {
                anchors.centerIn: parent
                spacing: 10

                Repeater {
                    model: 6
                    delegate: Text {
                        text: index < password.length ? "*" : "*"
                        font.pixelSize: 42
                        color: index < password.length ? "black" : "#cccccc"
                    }
                }
            }
        }

        GridLayout {
            columns: 3
            rowSpacing: 10
            columnSpacing: 10
            Layout.alignment: Qt.AlignHCenter

            Repeater {
                model: [
                    "1", "2", "3",
                    "4", "5", "6",
                    "7", "8", "9",
                    "0", "Clear"
                ]

                delegate: Button {
                    text: modelData
                    font.pixelSize: 16
                    width: 70
                    height: 40

                    onClicked: {
                        if (text === "Clear") {
                            password = ""
                        } else if (password.length < 6) {
                            password += text
                        }
                    }
                    Layout.fillWidth: true
                }
            }
        }

        Button {
            text: "Log In"
            font.pixelSize: 16
            height: 40
            Layout.fillWidth: true
            onClicked: {
                console.log("Entered password:", password)
            }
        }
    }
}
