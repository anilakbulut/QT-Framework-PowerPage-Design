import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    visible: true
    width: 260
    height: 361
    color: "#1a1c48"
    title: "Spreying System"

    Rectangle {
        id: mainContainer
        width: 260
        height: 361
        color: "#00000000"

        FontLoader {
            id: lato
            source: "qrc:/Fonts/Lato/Lato-Regular.ttf"
        }

        Text {
            id: droneSettings
            x: 50
            y: 8
            width: 121
            height: 18
            color: "#9499c3"
            text: qsTr("Drone Settings")
            font.family: lato.name
            font.pixelSize: 18
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }

        Rectangle {
            id: spreyingSystemHolder
            x: 6
            y: 31
            width: 137
            height: 35
            color: "#00000000"

            Button {
                id: spreyingSystemBtn
                icon.name: "return-icon"
                icon.color: "white"
                icon.source:  "qrc:/Icons/Spreying System Icon.png"
                icon.height: 35
                icon.width: 35
                palette {
                    button: "transparent"
                }
                width: 35
                height: 35
                text: qsTr("")
                padding: 0
                rightPadding: 0
                bottomPadding: 0
                leftPadding: 0
                topPadding: 0
                display: AbstractButton.IconOnly
            }

            Text {
                id: spreyingSystem
                x: 50
                y: 7
                width: 87
                height: 12
                color: "#9499c3"
                text: qsTr("Spreying System")
                font.family: lato.name
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 12
            }
        }

        Image {
            id: line
            x: 0
            y: 79
            width: 262
            height: 1
            source: "Icons/Line 2.png"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: intelligentSpreying
            x: 4
            y: 96
            width: 110
            height: 10
            color: "#ffffff"
            text: qsTr("INTELLIGENT SPREYING")
            antialiasing: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.family: lato.name
            font.pixelSize: 10
        }

        Switch {
            id: intelligentSpreyingSwitch
            x: 133
            y: 86
            text: qsTr("")

            indicator: Rectangle {
                implicitWidth: 112.44
                implicitHeight: 23.33
                x: intelligentSpreyingSwitch.leftPadding
                y: parent.height / 2 - height / 2
                radius: 4.82959
                border.color: "#809499c3"
                border.width: 0.905548
                color: "#021a1c48"

                Rectangle {
                    x: intelligentSpreyingSwitch.checked ? parent.width - width : 0
                    y: -3.61
                    width: 59.17
                    height: 30
                    radius: 3.62219
                    color: "#ffffff"
                }
            }
        }

        Text {
            id: on
            x: 141
            y: 99
            width: 54.49
            height: 10
            color: intelligentSpreyingSwitch.checked ? "#ffffff" :"#1a1c48"
            text: qsTr("ON")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 10
            font.family: lato.name
        }

        Text {
            id: off
            x: 198
            y: 99
            width: 54.49
            height: 10
            color: intelligentSpreyingSwitch.checked ? "#1a1c48" :"#ffffff"
            text: qsTr("OFF")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 10
            font.family: lato.name
        }

        Text {
            id: intelligentSpreyMode
            x: 3
            y: 136
            width: 124
            height: 10
            color: "#ffffff"
            text: qsTr("INTELLIGENT SPREY MODE")
            font.family: lato.name
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 10
        }

        Switch {
            id: intelligentSpreyModeSwitch
            x: 133
            y: 126
            text: qsTr("")

            indicator: Rectangle {
                implicitWidth: 112.44
                implicitHeight: 23.33
                x: intelligentSpreyModeSwitch.leftPadding
                y: parent.height / 2 - height / 2
                radius: 4.82959
                border.color: "#809499c3"
                border.width: 0.905548
                color: "#021a1c48"

                Rectangle {
                    x: intelligentSpreyModeSwitch.checked ? parent.width - width : 0
                    y: -3.61
                    width: 59.17
                    height: 30
                    radius: 3.62219
                    color: "#ffffff"
                }
            }
        }

        Text {
            id: agresive
            x: 141
            y: 139
            width: 54.49
            height: 10
            color: intelligentSpreyModeSwitch.checked ? "#ffffff" :"#1a1c48"
            text: qsTr("AGRESIVE")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 10
            font.family: lato.name
        }

        Text {
            id: passive
            x: 198
            y: 139
            width: 54.49
            height: 10
            color: intelligentSpreyModeSwitch.checked ? "#1a1c48" :"#ffffff"
            text: qsTr("PASSIVE")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 10
            font.family: lato.name
        }

        Text {
            id: nozleModel
            x: 6
            y: 176
            width: 75
            height: 10
            color: "#ffffff"
            text: qsTr("NOZZLE MODEL")
            font.family: lato.name
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 10
        }

        Rectangle {
            id: modelNoHolder
            x: 153
            y: 173
            width: 99
            height: 17
            color: "#30ffffff"

            Text {
                id: modelNo
                x: 12
                y: 4
                width: 75
                height: 10
                color: "#ffffff"
                text: qsTr("TEEJET VF11015")
                font.family: "Arial"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 10
            }
        }
    }
}


