import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: mainWindow
    visible: true
    width: 895
    height: 419
    title: qsTr("Settings Main")

    Image {
        id: background
        x: 0
        y: 0
        width: 895
        height: 419
        source: "image/Background.png"
        fillMode: Image.PreserveAspectFit
    }
    Rectangle {
        id: leftmenu
        width: 1
        height: 1
        color: "#00ffffff"


        Text {
            id: allsystemschecktext
            x: 56
            y: 23
            width: 83.91
            height: 8.45
            text: qsTr("All Systems Check")
            padding: 0
            font.bold: true
            font.pixelSize: 8
            color: "#9499C3"

        }
        Text {
            id: allsystemcheckstatustext
            x: 56
            y: 38
            width: 83.91
            height: 8.45
            color: "#9499c3"
            text: qsTr("Normal")
            padding: 0
            font.pixelSize: 8
            font.bold: false
        }
        Image {
            id: allsystemschecktick
            x: 34
            y: 20
            width: 14.49
            height: 14.49
            source: "image/RedTick.png"
            fillMode: Image.PreserveAspectFit
        }
        Text {
            id: spreyingsystemtext
            x: 56
            y: 78
            width: 83
            height: 8
            text: qsTr("Spreying System")
            font.bold: true
            font.pixelSize: 8
            color: "#9499C3"
        }
        Text {
            id: spreyingsystemstatustext
            x: 56
            y: 92
            width: 83.91
            height: 8.45
            color: "#9499c3"
            text: qsTr("Abnormal")
            padding: 0
            font.pixelSize: 8
            font.bold: false
        }
        Image {
            id: spreyingsystemtick
            x: 34
            y: 75
            width: 14.49
            height: 14.49
            source: "image/RedTick.png"
            fillMode: Image.PreserveAspectFit
        }
        Text {
            id: avionicstext
            x: 56
            y: 133
            width: 39.84
            height: 8.45
            text: qsTr("AVIONICS")
            font.bold: true
            font.pixelSize: 8
            color: "#9499C3"
        }
        Text {
            id: avionicsstatustext
            x: 56
            y: 147
            width: 83.91
            height: 8.45
            color: "#9499c3"
            text: qsTr("Normal")
            padding: 0
            font.pixelSize: 8
            font.bold: false
        }
        Image {
            id: avionicstick
            x: 34
            y: 130
            width: 14.49
            height: 14.49
            source: "image/GreentTick.png"
            fillMode: Image.PreserveAspectFit
        }
        Text {
            id: gncsystemtext
            x: 56
            y: 188
            width: 65
            height: 8
            text: qsTr("GNC SYSTEM")
            font.bold: true
            font.pixelSize: 8
            color: "#9499C3"
        }
        Text {
            id: gncsystemstatustext
            x: 56
            y: 202
            width: 83.91
            height: 8.45
            color: "#ffffff"
            text: qsTr("Applied")
            padding: 0
            font.pixelSize: 8
            font.bold: false
        }
        Image {
            id: gncsystemtick
            x: 34
            y: 185
            width: 14.49
            height: 14.49
            source: "image/GreentTick.png"
            fillMode: Image.PreserveAspectFit
        }
        Text {
            id: powersystemtext
            x: 56
            y: 243
            width: 65.8
            height: 8.45
            text: qsTr("POWER SYSTEM")
            font.bold: true
            font.pixelSize: 8
            color: "#9499C3"
        }
        Text {
            id: powersystemstatustext
            x: 56
            y: 257
            width: 83.91
            height: 8.45
            color: "#ffffff"
            text: qsTr("Awaiting")
            padding: 0
            font.pixelSize: 8
            font.bold: false
        }
        Image {
            id: powersystemtick
            x: 34
            y: 240
            width: 14.49
            height: 14.49
            source: "image/OrangeTick.png"
            fillMode: Image.PreserveAspectFit
        }
    }



    Button {
        id: button1
        x: 650
        y: 200
        width: 135
        height: 27
        text: qsTr("Button")
        opacity: 0
        Loader {
            id: pageLoader1
        }
        onClicked: {
            pageLoader.source = "spreyingsystem.qml"
            mainWindow.hide();
        }
    }


    Rectangle {
        id: lowermenu
        width: 1
        height: 1
        color: "#00ffffff"

        Button {
            id: button
            x: 284
            y: 369
            width: 40
            height: 40
            text: qsTr("Button")
            opacity: 0
            Loader { id: pageLoader }

            onClicked: {
                pageLoader.source = "spreyingsystem.qml"
                mainWindow.hide();
            }
        }

        Image {
            id: loweroverviewimage
            x: 298
            y: 376
            width: 14.26
            height: 16.8
            fillMode: Image.PreserveAspectFit
            source: "image/Overview1.png"
        }

        Text {
            id: loweroverviewtext
            x: 289
            y: 398
            width: 31.39
            height: 7.24
            color: "#ffffff"
            text: qsTr("Overview")
            font.pixelSize: 7
        }


        Text {
            id: lowercommstext
            x: 359
            y: 398
            width: 24.15
            height: 7.24
            color: "#ffffff"
            text: qsTr("Comms")
            font.pixelSize: 7

        }


        Image {
            id: lowercommsimage1
            x: 363
            y: 377
            width: 10.46
            height: 10.46
            fillMode: Image.PreserveAspectFit
            source: "image/LeftComms.png"
        }

        Image {
            id: lowercommsimage2
            x: 369
            y: 383
            width: 10.46
            height: 10.46
            source: "image/RightComms.png"
            fillMode: Image.PreserveAspectFit
        }


        Text {
            id: lowerradartext
            x: 421
            y: 399
            width: 24.75
            height: 7.24
            color: "#ffffff"
            text: qsTr("Radar")
            font.pixelSize: 7
        }

        Image {
            id: lowerradarimage
            x: 424
            y: 378
            width: 15.83
            height: 15.83
            fillMode: Image.PreserveAspectFit
            source: "image/Radar.png"
        }


        Text {
            id: loweravionicstext
            x: 484
            y: 399
            width: 27.17
            height: 7.24
            color: "#ffffff"
            text: qsTr("Avionics")
            font.pixelSize: 7
        }

        Image {
            id: loweravionicsimage
            x: 489
            y: 377
            width: 17.71
            height: 17.71
            fillMode: Image.PreserveAspectFit
            source: "image/Avionics1.png"
        }


        Text {
            id: lowerpowertext
            x: 549
            y: 399
            width: 20.53
            height: 7.24
            color: "#ffffff"
            text: qsTr("Power")
            font.pixelSize: 7
        }

        Image {
            id: lowerpowerimage
            x: 555
            y: 378
            width: 8.05
            height: 16.1
            fillMode: Image.PreserveAspectFit
            source: "image/Power1.png"
        }








    }
    Image {
        id: map //Map
        x: 145
        y: 14
        width: 555
        height: 329
        source: "image/map 1.png"
        fillMode: Image.TileVertically

    }

    Rectangle {
        id: missonmanagerbtn
        x: 128
        y: 369.43
        color: "#00ffffff"
        implicitWidth: 103.43
        implicitHeight: 33.81
        radius: 3.62
        border.color: "#9499c3"
        opacity: 1
        border.width: 1
        Text {
            id: element7
            x: 4.55
            y: 12.07
            width: 92.12
            height: 9.66
            color: "#fff"
            text: qsTr("MISSON MANAGER")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 9
        }
    }

    Rectangle {
        id: flightmanagerbtn
        x: 30
        y: 364
        implicitWidth: 100.02
        implicitHeight: 43.47
        opacity: enabled ? 1 : 0.3
        border.width: 1
        radius: 3.62
        border.color: "#fff"

        Text {
            id: element5
            x: 3.95
            y: 17.51
            width:92.12
            height:9.66
            text: qsTr("FLIGHT MANAGER")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 9
        }
    }



    Rectangle {
        id: settingsbtn
        x: 746
        y: 367
        color: "#00ffffff"
        implicitWidth: 67.61
        implicitHeight: 33.81
        radius: 3.62
        border.color: "#809499c3"
        border.width: 1
        Text {
            id: element6
            x: 11.47
            y: 12.07
            width: 45.28
            height: 9.66
            color: "#ffffff"
            text: qsTr("SETTINGS")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 9
        }
    }

    Rectangle {
        id: rectangle1
        x: 0
        y: 409
        width: 895
        height: 9.66
        color: "#1a1c48"
    }

    ProgressBar {
        id: missioncompletedbar
        from:0
        to:10
        value: 7.68
        padding: 2
        x: 708
        y: 28.49

        // background dikdörtgeni koyu renk olan
        background: Rectangle {
            implicitWidth: 87
            implicitHeight: 4
            color: "#2f3152"
            radius: 3
        }
        //IMU1 in değerini aldığım text.
        Text{
            id: missioncompletedval

            x : 114
            y: -8
            color: "white"
            font.pixelSize: 14
            font.styleName: Calibri
            text: missioncompletedbar.value
            clip: false

        }
        contentItem: Item {
            implicitWidth: 87
            implicitHeight: 4

            Rectangle {
                width: missioncompletedbar.visualPosition * parent.width
                height: parent.height
                radius: 2
                color: "#2a8afe"
            }

        }
    }
    ProgressBar {
        id: pesticidebar
        from:0
        to:10
        value: 3.9
        padding: 2
        x: 708
        y: 71.96

        // background dikdörtgeni koyu renk olan
        background: Rectangle {
            implicitWidth: 87
            implicitHeight: 4
            color: "#2f3152"
            radius: 3
        }
        //IMU1 in değerini aldığım text.
        Text{
            id: pesticideval

            x : 114
            y: -8
            color: "white"
            font.pixelSize: 14
            font.styleName: Calibri
            text: pesticidebar.value
            clip: false

        }
        contentItem: Item {
            implicitWidth: 87
            implicitHeight: 4

            Rectangle {
                width: pesticidebar.visualPosition * parent.width
                height: parent.height
                radius: 2
                color: "#2a8afe"
            }

        }
    }
    ProgressBar {
        id: batterybar
        from:0
        to:100
        value: 39
        padding: 2
        x: 708
        y: 115.42

        // background dikdörtgeni koyu renk olan
        background: Rectangle {
            implicitWidth: 87
            implicitHeight: 4
            color: "#2f3152"
            radius: 3
        }
        //IMU1 in değerini aldığım text.
        Text{
            id: batteryval

            x : 114
            y: -8
            color: "white"
            font.pixelSize: 14
            font.styleName: Calibri
            text: batterybar.value
            clip: false

        }
        contentItem: Item {
            implicitWidth: 87
            implicitHeight: 4

            Rectangle {
                width: batterybar.visualPosition * parent.width
                height: parent.height
                radius: 2
                color: "#2a8afe"
            }

        }
    }
    ProgressBar {
        id: rangetohomebar
        from:1
        to:0
        value: 0.02
        padding: 2
        x: 708
        y: 161.15

        // background dikdörtgeni koyu renk olan
        background: Rectangle {
            implicitWidth: 87
            implicitHeight: 4
            color: "#2f3152"
            radius: 3
        }
        //IMU1 in değerini aldığım text.
        Text{
            id: rangetohomeval

            x : 114
            y: -8
            color: "white"
            font.pixelSize: 14
            font.styleName: Calibri
            text: rangetohomebar.value
            clip: false

        }
        contentItem: Item {
            implicitWidth: 87
            implicitHeight: 4

            Rectangle {
                width: rangetohomebar.visualPosition * parent.width
                height: parent.height
                radius: 2
                color: "#2a8afe"
            }

        }
    }

    Text {
        id: missioncompletedtext
        x: 708
        y: 12
        color: "#ffffff"
        text: qsTr("Mission Completed")
        font.pixelSize: 8
    }

    Text {
        id: pesticidetext
        x: 708
        y: 57.47
        color: "#ffffff"
        text: qsTr("Pesticide")
        font.pixelSize: 8
    }


    Text {
        id: batterytext
        x: 708
        y: 100.93
        color: "#ffffff"
        text: qsTr("Battery")
        font.pixelSize: 8
    }




    Text {
        id: rangetohometext
        x: 708
        y: 144.4
        color: "#ffffff"
        text: qsTr("Range to Home")
        font.pixelSize: 8
    }

    Image {
        id: image
        x: 715
        y: 207
        width: 49
        height: 49
        source: "image/resumemission.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: image1
        x: 829
        y: 207
        width: 49
        height: 49
        source: "image/returnmission.png"
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: resumemissiontext
        x: 708
        y: 265
        color: "#ffffff"
        text: qsTr("Range to Home")
        font.pixelSize: 8
    }

    Text {
        id: returnhometext
        x: 822
        y: 265
        color: "#ffffff"
        text: qsTr("Range to Home")
        font.pixelSize: 8
    }
}
