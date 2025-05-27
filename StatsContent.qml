import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    id: statsContent
    color: "#FFFFFF"

    signal backRequested()

    FontLoader { id: montserratRegular; source: "static/Montserrat-Regular.ttf" }
    FontLoader { id: montserratBold; source: "static/Montserrat-Bold.ttf" }

    ColumnLayout {
        anchors.fill: parent

        RowLayout {
            Layout.fillWidth: true
            Layout.topMargin: 20
            Layout.leftMargin: 30
            Layout.rightMargin: 30
            Layout.preferredHeight: 47

            Text {
                text: "Статистика"
                font.family: montserratBold.name
                font.pixelSize: 34
                color: "#333333"
                Layout.alignment: Qt.AlignVCenter
                font.weight: Font.Bold
            }

            Item { Layout.fillWidth: true }

            Image {
                source: "images/minilogo.png"
                width: 47
                height: 47
                fillMode: Image.PreserveAspectFit
            }
        }

        Rectangle {
            width: 315
            height: 70
            color: "#00B1B9"
            radius: 8
            Layout.alignment: Qt.AlignHCenter
            Layout.topMargin: 30

            Text {
                anchors.left: parent.left
                anchors.leftMargin: 20
                anchors.verticalCenter: parent.verticalCenter
                text: "Дней потребовалось чтобы\nбросить курить: 15"
                font.family: montserratBold.name
                font.pixelSize: 16
                color: "#FFFFFF"
                horizontalAlignment: Text.AlignLeft
                wrapMode: Text.WordWrap
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
                text: "Общее время без сигарет:\n28д 6ч"
                font.family: montserratBold.name
                font.pixelSize: 16
                color: "#FFFFFF"
                horizontalAlignment: Text.AlignLeft
                wrapMode: Text.WordWrap
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
                text: "Всего сэкономлено:\n5000₽"
                font.family: montserratBold.name
                font.pixelSize: 16
                color: "#FFFFFF"
                horizontalAlignment: Text.AlignLeft
                wrapMode: Text.WordWrap
                font.weight: Font.Bold
            }
        }

        Item {
            Layout.fillHeight: true
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
                    onClicked: statsContent.backRequested()
                }

                Button {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    padding: 0
                    background: Rectangle { anchors.fill: parent; color: "#F0F0F0"; radius: 0 }
                    contentItem: ColumnLayout {
                        anchors.centerIn: parent; spacing: 4
                        Image { source: "images/stats.png"; width: 24; height: 24; fillMode: Image.PreserveAspectFit; Layout.alignment: Qt.AlignHCenter }
                        Text { text: "Статистика"; font.family: montserratBold.name; font.pixelSize: 12; color: "#00B1B9"; horizontalAlignment: Text.AlignHCenter; Layout.alignment: Qt.AlignHCenter; font.weight: Font.Bold }
                    }
                    enabled: false
                }
            }
        }
    }
}
