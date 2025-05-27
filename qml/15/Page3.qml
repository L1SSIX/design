import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    Column {
        anchors.centerIn: parent
        spacing: 15

        Label { text: "Page 3." }

        Button {
            text: "Завершить"
            onClicked: Qt.quit()
        }
    }
}
