import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Window 2.15
import "."

ApplicationWindow {
    id: appWindow
    visible: true
    width: 375
    height: 812
    title: "Quitly"
    color: "#FFFFFF"

    FontLoader {
        id: montserratRegular
        source: "static/Montserrat-Regular.ttf"
    }
    FontLoader {
        id: montserratBold
        source: "static/Montserrat-Bold.ttf"
    }

    StackView {
        id: appStackView
        anchors.fill: parent

        initialItem: welcomeScreenComponent

        Component {
            id: welcomeScreenComponent
            WelcomeScreen {
                onChoice: function(mode) {
                    console.log("Выбран режим:", mode)
                    if (mode === "instant") {
                        appStackView.push(mainContentComponent)
                    } else if (mode === "gradual") {
                        appStackView.push(gradualContentComponent)
                    }
                }
            }
        }

        Component {
            id: mainContentComponent
            MainContent {
                onBackRequested: appStackView.pop()
                onShowStats: appStackView.push(statsContentComponent)
            }
        }

        Component {
            id: gradualContentComponent
            GradualContent {
                onBackRequested: appStackView.pop()
                onShowStats: appStackView.push(statsContentComponent)
            }
        }

        Component {
            id: statsContentComponent
            StatsContent {
                onBackRequested: appStackView.pop()
            }
        }
    }
}
