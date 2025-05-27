import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    id: mainContentScreen
    color: "#FFFFFF"

    property int counter: 0

    signal backRequested()
    signal showStats()

    FontLoader {
        id: montserratRegular
        source: "static/Montserrat-Regular.ttf"
    }
    FontLoader {
        id: montserratBold
        source: "static/Montserrat-Bold.ttf"
    }

    ColumnLayout {
        anchors.fill: parent
        spacing: 0

        RowLayout {
            Layout.fillWidth: true
            Layout.topMargin: 20
            Layout.leftMargin: 30
            Layout.rightMargin: 30
            Layout.preferredHeight: 47

            Button {
                text: "←"
                font.pixelSize: 24
                background: Rectangle { color: "transparent" }
                onClicked: mainContentScreen.backRequested()
            }

            Text {
                text: "Главная"
                font.family: montserratBold.name
                font.pixelSize: 34
                color: "#333333"
                Layout.alignment: Qt.AlignVCenter
                font.weight: Font.Bold
            }

            Item {
                Layout.fillWidth: true
            }

            Image {
                source: "images/minilogo.png"
                width: 47
                height: 47
                fillMode: Image.PreserveAspectFit
            }
        }

        Rectangle {
            width: 315
            height: 300
            radius: 8
            Layout.alignment: Qt.AlignHCenter
            Layout.topMargin: 30

            gradient: Gradient {
                GradientStop { position: 0.0; color: "#D0FDFF" }
                GradientStop { position: 1.0; color: "#00B1B9" }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: counter++
                cursorShape: Qt.PointingHandCursor
            }

            Text {
                text: counter.toString()
                font.family: montserratBold.name
                font.pixelSize: 80
                color: "#FFFFFF"
                font.weight: Font.Bold
                anchors.centerIn: parent
            }

            Text {
                text: "Дней без сигарет"
                font.family: montserratRegular.name
                font.pixelSize: 18
                color: "#FFFFFF"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 20
                font.weight: Font.Bold
            }
        }

        Rectangle {
            width: 315
            height: 50
            color: "#00B1B9"
            radius: 8
            Layout.alignment: Qt.AlignHCenter
            Layout.topMargin: 10

            Text {
                anchors.left: parent.left
                anchors.leftMargin: 20
                anchors.verticalCenter: parent.verticalCenter
                text: "Цель: 30 дней без сигарет"
                font.family: montserratBold.name
                font.pixelSize: 16
                color: "#FFFFFF"
                font.weight: Font.Bold
            }
        }

        Rectangle {
            width: 315
            height: 50
            color: "#00B1B9"
            radius: 8
            Layout.alignment: Qt.AlignHCenter
            Layout.topMargin: 10

            Text {
                anchors.left: parent.left
                anchors.leftMargin: 20
                anchors.verticalCenter: parent.verticalCenter
                text: "Сэкономлено: 1000₽"
                font.family: montserratBold.name
                font.pixelSize: 16
                color: "#FFFFFF"
                font.weight: Font.Bold
            }
        }

        Rectangle {
            width: 315
            height: 70
            color: "#00B1B9"
            radius: 8
            Layout.alignment: Qt.AlignHCenter
            Layout.topMargin: 10

            Text {
                anchors.left: parent.left
                anchors.leftMargin: 20
                anchors.verticalCenter: parent.verticalCenter
                text: "Через день риск сердечного\nприступа снижается!"
                font.family: montserratBold.name
                font.pixelSize: 16
                color: "#FFFFFF"
                wrapMode: Text.WordWrap
                font.weight: Font.Bold
            }
        }

        Button {
            id: btnFailure
            Layout.preferredWidth: 315
            Layout.preferredHeight: 60
            Layout.alignment: Qt.AlignHCenter
            Layout.topMargin: 20

            background: Rectangle {
                anchors.fill: parent
                radius: 8
                color: btnFailure.pressed ? Qt.darker("#B91900", 1.2) : "#B91900"
            }

            contentItem: Text {
                text: "Срыв"
                font.family: montserratBold.name
                font.pixelSize: 20
                color: "#FFFFFF"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.centerIn: parent
                font.weight: Font.Bold
            }

            onClicked: {
                console.log("Кнопка 'Срыв' нажата")
                counter = 0
            }
        }

        Rectangle {
            width: 315
            height: 3
            color: "#000000"
            radius: 1.5
            Layout.alignment: Qt.AlignHCenter
            Layout.topMargin: 20
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 60
            color: "#FFFFFF"
            Layout.topMargin: 10

            RowLayout {
                anchors.fill: parent
                spacing: 0
                Layout.margins: 0

                Button {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    padding: 0
                    background: Rectangle {
                        anchors.fill: parent
                        color: parent.pressed ? "#E0E0E0" : (parent.hovered ? "#F0F0F0" : "transparent")
                        radius: 0
                    }
                    contentItem: ColumnLayout {
                        anchors.centerIn: parent; spacing: 4
                        Image { source: "images/home.png"; width: 24; height: 24; fillMode: Image.PreserveAspectFit; Layout.alignment: Qt.AlignHCenter }
                        Text { text: "Главная"; font.family: montserratBold.name; font.pixelSize: 12; color: "#333333"; horizontalAlignment: Text.AlignHCenter; Layout.alignment: Qt.AlignHCenter; font.weight: Font.Bold }
                    }
                }

                Button {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    padding: 0
                    background: Rectangle { anchors.fill: parent; color: parent.pressed ? "#E0E0E0" : (parent.hovered ? "#F0F0F0" : "transparent"); radius: 0 }
                    contentItem: ColumnLayout {
                        anchors.centerIn: parent; spacing: 4
                        Image { source: "images/stats.png"; width: 24; height: 24; fillMode: Image.PreserveAspectFit; Layout.alignment: Qt.AlignHCenter }
                        Text { text: "Статистика"; font.family: montserratBold.name; font.pixelSize: 12; color: "#333333"; horizontalAlignment: Text.AlignHCenter; Layout.alignment: Qt.AlignHCenter; font.weight: Font.Bold }
                    }
                    onClicked: mainContentScreen.showStats()
                }
            }
        }
    }
}
