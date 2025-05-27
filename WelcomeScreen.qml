import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    id: welcomeScreen
    color: "#FFFFFF"

    signal choice(string mode)

    FontLoader {
        id: montserratRegular
        source: "static/Montserrat-Regular.ttf"
    }
    FontLoader {
        id: montserratBold
        source: "static/Montserrat-Bold.ttf"
    }

    ColumnLayout {
        anchors.top: parent.top
        anchors.topMargin: 30
        anchors.horizontalCenter: parent.horizontalCenter

        Text {
            text: "Начните свой путь с"
            font.pixelSize: 30
            font.family: montserratBold.name
            font.bold: true
            color: "#333333"
            horizontalAlignment: Text.AlignHCenter
            Layout.alignment: Qt.AlignHCenter
        }

        Text {
            text: "Quitly"
            font.pixelSize: 52
            font.family: montserratBold.name
            font.bold: true
            color: "#02B9C3"
            horizontalAlignment: Text.AlignHCenter
            Layout.alignment: Qt.AlignHCenter
            Layout.topMargin: 5
        }

        Image {
            source: "images/logo.png"
            width: 120
            height: 120
            fillMode: Image.PreserveAspectFit
            Layout.alignment: Qt.AlignHCenter
            Layout.topMargin: 30
        }

        Button {
            Layout.preferredWidth: 300
            Layout.preferredHeight: 60
            background: Rectangle { radius: 10; color: "#00B1B9" }
            contentItem: Text {
                text: "Бросить сразу"
                color: "#FFFFFF"
                font.pixelSize: 22
                font.bold: true
                font.family: montserratBold.name
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.centerIn: parent
            }
            onClicked: choice("instant")
            Layout.alignment: Qt.AlignHCenter
            Layout.topMargin: 60
        }

        Button {
            Layout.preferredWidth: 300
            Layout.preferredHeight: 60
            background: Rectangle { radius: 10; color: "#00B1B9" }
            contentItem: Text {
                text: "Бросать постепенно"
                color: "#FFFFFF"
                font.pixelSize: 22
                font.bold: true
                font.family: montserratBold.name
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.centerIn: parent
            }
            onClicked: choice("gradual")
            Layout.alignment: Qt.AlignHCenter
            Layout.topMargin: 20
        }
    }
}
