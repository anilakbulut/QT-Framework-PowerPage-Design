import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: mainWindow
    visible: true
    width: 895
    height: 419
    title: qsTr("Settings Main")

    Image { //Backround Image
        id: background
        x: 0
        y: 0
        width: 895
        height: 419
        source: "image/Background.png"
        fillMode: Image.PreserveAspectFit
    }

    Rectangle { //Right Power Page
        id: power_page_rectangle
        x: 618
        y: 0
        width: 277
        height: 419
        color: "#00ffffff"
        visible: true

        Text {//The "drone setting" text at the top
            id: power_page_main_text
            anchors.left: power_page_rectangle.TopLeft;
            anchors.right: power_page_rectangle.BottomRight;
            x: 69
            y: 8
            width: 121
            height: 18
            color: "#9499c3"
            text: qsTr("Drone Settings")
            renderType: Text.NativeRendering
            visible: true
            font.pixelSize: 18
        }

        Text {//The text next to the battery image
            id: power_page_power_text
            x: 77
            y: 44
            width: 43
            height: 13
            color: "#9499c3"
            text: qsTr("Power")
            renderType: Text.NativeRendering
            opacity: 1
            font.pixelSize: 12
        }

        Image {//Main Image
            id: power_page_main_image
            x: 22
            y: 35
            width: 28
            height: 30
            source: "image/SettingPower.png"
            fillMode: Image.PreserveAspectFit
        }

        Image {//First horizontal line(up)
            id: power_page_h_line
            x: 1
            y: 76
            width: 277
            height: 4
            source: "Icons/Line 2.png"
            fillMode: Image.PreserveAspectFit
        }

        Image {//Vertical line
            id: power_page_v_line
            x: 0
            y: 3
            width: 2
            height: 403
            source: "Icons/Line 1.png"
            fillMode: Image.PreserveAspectFit
        }

        Image { // Second horizontal line (bottom)
            id: power_page_h_line1
            x: 1
            y: 253
            width: 277
            height: 4
            fillMode: Image.PreserveAspectFit
            source: "Icons/Line 2.png"
        }

        ProgressBar {//It is a progress bar 1, has a proggres,value, and text


            id: power_page_batterybar_1
            from:0
            to:100
            value: 80
            padding: 2
            x: 53
            y: 86
            width: 91
            height: 8
            indeterminate: false
            visible: true

            // background dikdörtgeni koyu renk olan
            background: Rectangle {
                implicitWidth: 87
                implicitHeight: 4
                color: "#2f3152"
                radius: 3
            }
            //IMU1 in değerini aldığım text.
            Text{
                id: power_page_cell_1

                x : -39
                y: -3
                color: "white"
                text: "CELL 1"
                renderType: Text.NativeRendering
                font.pixelSize: 10
                //font.styleName: Calibri
                clip: false

            }

            Text {
                id: power_page_value_1
                x: 97
                y: -3
                color: "#ffffff"
                text: "4.00 V"
                font.pixelSize: 10
                clip: false
            }
            contentItem: Item {
                implicitWidth: 87
                implicitHeight: 4

                Rectangle {
                    width: power_page_batterybar_1.visualPosition * parent.width
                    height: parent.height
                    radius: 2
                    color: "#2a8afe"
                }

            }
        }

        ProgressBar {//It is a progress bar 2, has a proggres,value, and text
            id: power_page_batterybar_2
            from:0
            to:100
            value: 20
            padding: 2
            x: 53
            y: 100
            width: 91
            height: 8

            // background dikdörtgeni koyu renk olan
            background: Rectangle {
                implicitWidth: 87
                implicitHeight: 4
                color: "#2f3152"
                radius: 3
            }
            //IMU1 in değerini aldığım text.
            Text{
                id: power_page_cell_2

                x : -39
                y: -3
                color: "white"
                text: "CELL 2"
                renderType: Text.NativeRendering
                font.pixelSize: 10
                //font.styleName: Calibri
                clip: false

            }

            Text {
                id: power_page_value_2
                x: 97
                y: -3
                color: "#ffffff"
                text: "3.62 V"
                font.pixelSize: 10
                clip: false
            }
            contentItem: Item {
                implicitWidth: 87
                implicitHeight: 4

                Rectangle {
                    width: power_page_batterybar_2.visualPosition * parent.width
                    height: parent.height
                    radius: 2
                    color: "#2a8afe"
                }

            }
        }

        ProgressBar {//It is a progress bar 3, has a proggres,value, and text
            id: power_page_batterybar_3
            from:0
            to:100
            value: 0
            padding: 2
            x: 53
            y: 114
            width: 91
            height: 8

            // background dikdörtgeni koyu renk olan
            background: Rectangle {
                implicitWidth: 87
                implicitHeight: 4
                color: "#2f3152"
                radius: 3
            }
            //IMU1 in değerini aldığım text.
            Text{
                id: power_page_cell_3

                x : -39
                y: -3
                color: "white"
                text: "CELL 3"
                renderType: Text.NativeRendering
                font.pixelSize: 10
                //font.styleName: Calibri
                clip: false

            }

            Text {
                id: power_page_value_3
                x: 97
                y: -3
                color: "red"
                text: "ERR"
                font.pixelSize: 10
                clip: false
            }
            contentItem: Item {
                implicitWidth: 87
                implicitHeight: 4

                Rectangle {
                    width: power_page_batterybar_3.visualPosition * parent.width
                    height: parent.height
                    radius: 2
                    color: "#2a8afe"
                }

            }
        }

        ProgressBar {//It is a progress bar 4, has a proggres,value, and text
            id: power_page_batterybar_4
            from:0
            to:100
            value: 100
            padding: 2
            x: 53
            y: 128
            width: 91
            height: 8

            // background dikdörtgeni koyu renk olan
            background: Rectangle {
                implicitWidth: 87
                implicitHeight: 4
                color: "#2f3152"
                radius: 3
            }
            //IMU1 in değerini aldığım text.
            Text{
                id: power_page_cell_4

                x : -39
                y: -3
                color: "white"
                text: "CELL 4"
                renderType: Text.NativeRendering
                font.pixelSize: 10
                //font.styleName: Calibri
                clip: false

            }

            Text {
                id: power_page_value_4
                x: 97
                y: -3
                color: "#ffffff"
                text: "4.00 V"
                font.pixelSize: 10
                clip: false
            }
            contentItem: Item {
                implicitWidth: 87
                implicitHeight: 4

                Rectangle {
                    width: power_page_batterybar_4.visualPosition * parent.width
                    height: parent.height
                    radius: 2
                    color: "#2a8afe"
                }

            }
        }

        ProgressBar {//It is a progress bar 5, has a proggres,value, and text
            id: power_page_batterybar_5
            from:0
            to:100
            value: 0
            padding: 2
            x: 53
            y: 142
            width: 91
            height: 8

            // background dikdörtgeni koyu renk olan
            background: Rectangle {
                implicitWidth: 87
                implicitHeight: 4
                color: "#2f3152"
                radius: 3
            }
            //IMU1 in değerini aldığım text.
            Text{
                id: power_page_cell_5

                x : -39
                y: -3
                color: "white"
                text: "CELL 5"
                renderType: Text.NativeRendering
                font.pixelSize: 10
                //font.styleName: Calibri
                clip: false

            }

            Text {
                id: power_page_value_5
                x: 97
                y: -3
                color: "#ff0000"
                text: "ERR"
                font.pixelSize: 10
                clip: false
            }
            contentItem: Item {
                implicitWidth: 87
                implicitHeight: 4

                Rectangle {
                    width: power_page_batterybar_5.visualPosition * parent.width
                    height: parent.height
                    radius: 2
                    color: "#2a8afe"
                }

            }
        }

        ProgressBar {//It is a progress bar 6, has a proggres,value, and text
            id: power_page_batterybar_6
            from:0
            to:100
            value: 0
            padding: 2
            x: 53
            y: 156
            width: 91
            height: 8

            // background dikdörtgeni koyu renk olan
            background: Rectangle {
                implicitWidth: 87
                implicitHeight: 4
                color: "#2f3152"
                radius: 3
            }
            //IMU1 in değerini aldığım text.
            Text{
                id: power_page_cell_6

                x : -39
                y: -3
                color: "#ffffff"
                text: "CELL 6"
                renderType: Text.NativeRendering
                font.pixelSize: 10
                //font.styleName: Calibri
                clip: false

            }

            Text {
                id: power_page_value_6
                x: 97
                y: -3
                color: "#ff0000"
                text: "ERR"
                font.pixelSize: 10
                clip: false
            }
            contentItem: Item {
                implicitWidth: 87
                implicitHeight: 4

                Rectangle {
                    width: power_page_batterybar_6.visualPosition * parent.width
                    height: parent.height
                    radius: 2
                    color: "#2a8afe"
                }

            }
        }

        ProgressBar {//It is a progress bar 7, has a proggres,value, and text
            id: power_page_batterybar_7
            from:0
            to:100
            value: 0
            padding: 2
            x: 53
            y: 170
            width: 91
            height: 8

            // background dikdörtgeni koyu renk olan
            background: Rectangle {
                implicitWidth: 87
                implicitHeight: 4
                color: "#2f3152"
                radius: 3
            }
            //IMU1 in değerini aldığım text.
            Text{
                id: power_page_cell_7

                x : -39
                y: -3
                color: "white"
                text: "CELL 7"
                renderType: Text.NativeRendering
                font.pixelSize: 10
                //font.styleName: Calibri
                clip: false

            }

            Text {
                id: power_page_value_7
                x: 97
                y: -3
                color: "#ff0000"
                text: "ERR"
                font.pixelSize: 10
                clip: false
            }
            contentItem: Item {
                implicitWidth: 87
                implicitHeight: 4

                Rectangle {
                    width: power_page_batterybar_7.visualPosition * parent.width
                    height: parent.height
                    radius: 2
                    color: "#2a8afe"
                }

            }
        }

        ProgressBar {//It is a progress bar 8, has a proggres,value, and text
            id: power_page_batterybar_8
            from:0
            to:100
            value: 0
            padding: 2
            x: 53
            y: 184
            width: 91
            height: 8

            // background dikdörtgeni koyu renk olan
            background: Rectangle {
                implicitWidth: 87
                implicitHeight: 4
                color: "#2f3152"
                radius: 3
            }
            //IMU1 in değerini aldığım text.
            Text{
                id: power_page_cell_8

                x : -39
                y: -3
                color: "white"
                text: "CELL 8"
                renderType: Text.NativeRendering
                font.pixelSize: 10
                //font.styleName: Calibri
                clip: false

            }

            Text {
                id: power_page_value_8
                x: 97
                y: -3
                color: "#ff0000"
                text: "ERR"
                font.pixelSize: 10
                clip: false
            }
            contentItem: Item {
                implicitWidth: 87
                implicitHeight: 4

                Rectangle {
                    width: power_page_batterybar_8.visualPosition * parent.width
                    height: parent.height
                    radius: 2
                    color: "#2a8afe"
                }

            }
        }

        ProgressBar {//It is a progress bar 9, has a proggres,value, and text
            id: power_page_batterybar_9
            from:0
            to:100
            value: 0
            padding: 2
            x: 53
            y: 198
            width: 91
            height: 8

            // background dikdörtgeni koyu renk olan
            background: Rectangle {
                implicitWidth: 87
                implicitHeight: 4
                color: "#2f3152"
                radius: 3
            }
            //IMU1 in değerini aldığım text.
            Text{
                id: power_page_cell_9

                x : -39
                y: -3
                color: "white"
                text: "CELL 9"
                renderType: Text.NativeRendering
                font.pixelSize: 10
                //font.styleName: Calibri
                clip: false

            }

            Text {
                id: power_page_value_9
                x: 97
                y: -3
                color: "#ff0000"
                text: "ERR"
                font.pixelSize: 10
                clip: false
            }
            contentItem: Item {
                implicitWidth: 87
                implicitHeight: 4

                Rectangle {
                    width: power_page_batterybar_9.visualPosition * parent.width
                    height: parent.height
                    radius: 2
                    color: "#2a8afe"
                }

            }
        }

        ProgressBar {//It is a progress bar 10, has a proggres,value, and text
            id: power_page_batterybar_10
            from:0
            to:100
            value: 0
            padding: 2
            x: 53
            y: 212
            width: 91
            height: 8

            // background dikdörtgeni koyu renk olan
            background: Rectangle {
                implicitWidth: 87
                implicitHeight: 4
                color: "#2f3152"
                radius: 3
            }
            //IMU1 in değerini aldığım text.
            Text{
                id: power_page_cell_10

                x : -39
                y: -3
                color: "white"
                text: "CELL 10"
                renderType: Text.NativeRendering
                font.pixelSize: 10
                //font.styleName: Calibri
                clip: false

            }

            Text {
                id: power_page_value_10
                x: 97
                y: -3
                color: "#ff0000"
                text: "ERR"
                font.pixelSize: 10
                clip: false
            }
            contentItem: Item {
                implicitWidth: 87
                implicitHeight: 4

                Rectangle {
                    width: power_page_batterybar_10.visualPosition * parent.width
                    height: parent.height
                    radius: 2
                    color: "#2a8afe"
                }

            }
        }

        ProgressBar {//It is a progress bar 11, has a proggres,value, and text
            id: power_page_batterybar_11
            from:0
            to:100
            value: 0
            padding: 2
            x: 53
            y: 226
            width: 91
            height: 8

            // background dikdörtgeni koyu renk olan
            background: Rectangle {
                implicitWidth: 87
                implicitHeight: 4
                color: "#2f3152"
                radius: 3
            }
            //IMU1 in değerini aldığım text.
            Text{
                id: power_page_cell_11

                x : -39
                y: -3
                color: "white"
                text: "CELL 11"
                renderType: Text.NativeRendering
                font.pixelSize: 10
                //font.styleName: Calibri
                clip: false

            }

            Text {
                id: power_page_value_11
                x: 97
                y: -3
                color: "#ff0000"
                text: "ERR"
                font.pixelSize: 10
                clip: false
            }
            contentItem: Item {
                implicitWidth: 87
                implicitHeight: 4

                Rectangle {
                    width: power_page_batterybar_11.visualPosition * parent.width
                    height: parent.height
                    radius: 2
                    color: "#2a8afe"
                }

            }
        }

        ProgressBar {//It is a progress bar 12, has a proggres,value, and text
            id: power_page_batterybar_12
            from:0
            to:100
            value: 0
            padding: 2
            x: 53
            y: 240
            width: 91
            height: 8

            // background dikdörtgeni koyu renk olan
            background: Rectangle {
                implicitWidth: 87
                implicitHeight: 4
                color: "#2f3152"
                radius: 3
            }
            //IMU1 in değerini aldığım text.
            Text{
                id: power_page_cell_12

                x : -39
                y: -3
                color: "white"
                text: "CELL 12"
                renderType: Text.NativeRendering
                font.pixelSize: 10
                //font.styleName: Calibri
                clip: false

            }

            Text {
                id: power_page_value_12
                x: 97
                y: -3
                color: "#ff0000"
                text: "ERR"
                font.pixelSize: 10
                clip: false
            }
            contentItem: Item {
                implicitWidth: 87
                implicitHeight: 4

                Rectangle {
                    width: power_page_batterybar_12.visualPosition * parent.width
                    height: parent.height
                    radius: 2
                    color: "#2a8afe"
                }

            }
        }




        Rectangle { //Critical Battery Button and Text
            id: power_page_critical_battery_action_rectangle
            x: 22
            y: 269
            width: 217
            height: 15
            color: "#00ffffff"
            implicitWidth: 103.43
            implicitHeight: 33.81
            radius: 3.62
            //border.color: "#9499c3"
            opacity: 1
            //border.width: 1

            Text {
                id: power_page_critical_battery_action_button_text
                x: 161
                y: 5
                width: 92.12
                height: 9.66
                color: "#fff"
                text: qsTr("LANDING")
                renderType: Text.NativeRendering
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 9
            }

            Button {//settings-right-button-controller
                id: power_page_critical_battery_action_button
                x: 174
                y: 1
                width: 68
                height: 15
                text: qsTr("")
                visible: true
                opacity: 0.25


                onClicked: {
                    settingsrectangle.visible =false;
                    spreyingsystemrectangle.visible =true;
                }
            }

            Text {
                id: power_page_critical_battery_action_text
                x: 1
                y: 3
                width: 110
                height: 10
                color: "#ffffff"
                text: qsTr("CRITICAL BATTERY ACTION")
                renderType: Text.NativeRendering
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                antialiasing: true
                font.pixelSize: 10
            }
        }
        Rectangle { //Critical Low Battery Button and Text
            id: power_page_low_battery_action_rectangle
            x: 22
            y: 297
            width: 217
            height: 15
            color: "#00ffffff"
            implicitWidth: 103.43
            implicitHeight: 33.81
            radius: 3.62
            //border.color: "#9499c3"
            opacity: 1
            //border.width: 1

            Text {
                id: power_page_low_battery_action_button_text
                x: 161
                y: 5
                width: 92.12
                height: 9.66
                color: "#fff"
                text: qsTr("RTH")
                renderType: Text.NativeRendering
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 9
            }

            Button {//settings-right-button-controller
                id: power_page_low_battery_action_button
                x: 174
                y: 1
                width: 68
                height: 15
                text: qsTr("")
                visible: true
                opacity: 0.25


                onClicked: {
                    settingsrectangle.visible =false;
                    spreyingsystemrectangle.visible =true;
                }
            }

            Text {
                id: power_page_low_battery_action_text
                x: -7
                y: 3
                width: 110
                height: 10
                color: "#ffffff"
                text: qsTr("LOW BATTERY ACTION")
                renderType: Text.NativeRendering
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                antialiasing: true
                font.pixelSize: 10
            }
        }
        Rectangle { //Critical Low Battery Trigger Button and Text
            id: power_page_low_battery_trigger_action_rectangle
            x: 22
            y: 325
            width: 217
            height: 15
            color: "#00ffffff"
            implicitWidth: 103.43
            implicitHeight: 33.81
            radius: 3.62
            //border.color: "#9499c3"
            opacity: 1
            //border.width: 1

            Text {
                id: power_page_low_battery_trigger_button_text
                x: 161
                y: 5
                width: 92.12
                height: 9.66
                color: "#fff"
                text: qsTr("%30")
                renderType: Text.NativeRendering
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 9
            }

            Button {//settings-right-button-controller
                id: power_page_low_battery_trigger_button
                x: 174
                y: 1
                width: 68
                height: 15
                text: qsTr("")
                visible: true
                opacity: 0.25


                onClicked: {
                    settingsrectangle.visible =false;
                    spreyingsystemrectangle.visible =true;
                }
            }

            Text {
                id: power_page_low_battery_trigger_text
                x: -7
                y: 3
                width: 110
                height: 10
                color: "#ffffff"
                text: qsTr("LOW BATTERY TRIGGER")
                renderType: Text.NativeRendering
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                antialiasing: true
                font.pixelSize: 10
            }
        }

    }



}


