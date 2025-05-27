import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
    signal startClicked()

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 20

        Label {
            text: "3 page app"
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            Layout.alignment: Qt.AlignHCenter
        }

        Button {
            text: "Начать"
            onClicked: startClicked()
        }
    }
}
