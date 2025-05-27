import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 400
    height: 600
    title: "Навигация по страницам"

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: StartPage {
            onStartClicked: {
                var page1 = Qt.createComponent("Page1.qml").createObject(stackView)
                page1.nextClicked.connect(function() {
                    var page2 = Qt.createComponent("Page2.qml").createObject(stackView)
                    page2.nextClicked.connect(function() {
                        stackView.push("Page3.qml")
                    })
                    stackView.push(page2)
                })
                stackView.push(page1)
            }
        }
    }
}
