import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    signal nextClicked()

    Column {
        anchors.centerIn: parent
        spacing: 15

        Label { text: "Page 2" }

        Button {
            text: "Далее"
            onClicked: nextClicked()
        }
    }
}
