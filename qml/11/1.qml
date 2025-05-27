import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: "Робот"
    color: "#E0E0E0"

    property color bodyColor: "#4682B4"
    property color headColor: "#6A5ACD"
    property color limbColor: "#778899"
    property color eyeColor: "#FFFF00"
    property color antennaColor: "#A9A9A9"

    Rectangle {
        id: robotContainer
        width: 250
        height: 350
        color: "transparent"
        anchors.centerIn: parent

        Rectangle {
            id: robotBody
            width: parent.width * 0.8
            height: parent.height * 0.5
            color: bodyColor
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 50
        }

        Rectangle {
            id: robotHead
            width: robotBody.width * 0.7
            height: robotBody.height * 0.6
            color: headColor
            anchors.horizontalCenter: robotBody.horizontalCenter
            anchors.bottom: robotBody.top
            anchors.bottomMargin: 10
        }

        Rectangle {
            id: leftEye
            width: robotHead.width * 0.2
            height: robotHead.height * 0.2
            color: eyeColor
            anchors.left: robotHead.left
            anchors.leftMargin: robotHead.width * 0.15
            anchors.verticalCenter: robotHead.verticalCenter
            anchors.verticalCenterOffset: -robotHead.height * 0.1
        }

        Rectangle {
            id: rightEye
            width: leftEye.width
            height: leftEye.height
            color: eyeColor
            anchors.right: robotHead.right
            anchors.rightMargin: robotHead.width * 0.15
            anchors.verticalCenter: leftEye.verticalCenter
        }

        Rectangle {
            id: antennaLeft
            width: robotHead.width * 0.08
            height: robotHead.height * 0.3
            color: antennaColor
            anchors.bottom: robotHead.top
            anchors.left: robotHead.left
            anchors.leftMargin: robotHead.width * 0.2
        }

        Rectangle {
            id: antennaRight
            width: antennaLeft.width
            height: antennaLeft.height
            color: antennaColor
            anchors.bottom: robotHead.top
            anchors.right: robotHead.right
            anchors.rightMargin: robotHead.width * 0.2
        }

        Rectangle {
            id: leftArm
            width: robotBody.width * 0.2
            height: robotBody.height * 0.8
            color: limbColor
            anchors.right: robotBody.left
            anchors.verticalCenter: robotBody.verticalCenter
            anchors.verticalCenterOffset: -robotBody.height * 0.1
            transformOrigin: Item.Right
        }

        Rectangle {
            id: rightArm
            width: leftArm.width
            height: leftArm.height
            color: limbColor
            anchors.left: robotBody.right
            anchors.verticalCenter: leftArm.verticalCenter
            transformOrigin: Item.Left
        }

        Rectangle {
            id: leftLeg
            width: robotBody.width * 0.3
            height: robotBody.height * 0.4
            color: limbColor
            anchors.top: robotBody.bottom
            anchors.left: robotBody.left
            anchors.leftMargin: robotBody.width * 0.1
        }

        Rectangle {
            id: rightLeg
            width: leftLeg.width
            height: leftLeg.height
            color: limbColor
            anchors.top: robotBody.bottom
            anchors.right: robotBody.right
            anchors.rightMargin: robotBody.width * 0.1
        }
    }
}