import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    id: rootFooter
    height: 80
    width: parent.width
    color: "lightgray"

    signal newMessage(string msg)

    RowLayout {
        anchors.fill: parent
        anchors.margins: 8
        spacing: 8

        TextField {
            id: edtText
            Layout.fillWidth: true
            Layout.fillHeight: true
            placeholderText: "Write a message..."
            font.pointSize: 12
            color: "black"

            Keys.onReturnPressed: {
                if (edtText.text.trim() !== "") { 
                    rootFooter.newMessage(edtText.text);
                    edtText.clear();
                }
            }
        }

        Button {
            id: btnAddItem
            Layout.preferredWidth: 80
            Layout.fillHeight: true 
            text: "Send"
            font.pixelSize: 16
            onClicked: {
                if (edtText.text.trim() !== "") { 
                    rootFooter.newMessage(edtText.text);
                    edtText.clear();
                }
            }
        }
    }
}