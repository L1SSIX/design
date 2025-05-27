import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 300
    height: 500
    title: qsTr("Task_for_Login_Page")
    color: "#f0f0f0"

    ColumnLayout {
        anchors.centerIn: parent
        width: parent.width * 0.8
        spacing: 15

        TextField {
            id: usernameField
            Layout.fillWidth: true
            placeholderText: "Username"
            font.pixelSize: 16
            padding: 10
        }

        TextField {
            id: passwordField
            Layout.fillWidth: true
            placeholderText: "Password"
            echoMode: TextInput.Password
            font.pixelSize: 16
            padding: 10
        }

        RowLayout {
            Layout.fillWidth: true
            spacing: 10

            Button {
                Layout.fillWidth: true
                text: "Log In"
                font.pixelSize: 16
                height: 40
                onClicked: {
                    console.log("Log In clicked!")
                    console.log("Username:", usernameField.text)
                    console.log("Password:", passwordField.text)
                }
            }

            Button {
                Layout.fillWidth: true
                text: "Clear"
                font.pixelSize: 16
                height: 40
                onClicked: {
                    usernameField.text = ""
                    passwordField.text = ""
                    usernameField.forceActiveFocus()
                }
            }
        }
    }
}
