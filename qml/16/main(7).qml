import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 300
    height: 500
    title: "Прокручиваемый светофор"

    SwipeView {
        id: swipeView
        anchors.fill: parent
        interactive: true

        Rectangle {
            color: "red"
            Label {
                text: "Red"
                anchors.centerIn: parent
                font.pixelSize: 30
                color: "white"
            }
        }

        Rectangle {
            color: "yellow"
            Label {
                text: "Yellow"
                anchors.centerIn: parent
                font.pixelSize: 30
                color: "black"
            }
        }

        Rectangle {
            color: "green"
            Label {
                text: "Green"
                anchors.centerIn: parent
                font.pixelSize: 30
                color: "white"
            }
        }
    }

    PageIndicator {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        count: swipeView.count
        currentIndex: swipeView.currentIndex
        interactive: true
    }
}
