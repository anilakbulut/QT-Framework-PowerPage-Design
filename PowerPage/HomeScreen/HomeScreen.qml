import QtQuick 2.0
import Qt.labs.calendar 1.0
import QtQuick 2.12
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Item {
// Arka plan






    //Yukarıdaki Avionics yazısı
    Text {
        id: avionics
        x : 706
        y: 50
        color: "#949AC3"
        font.pixelSize: 10

        text: qsTr("Avionics")

    }

    // Sol üstteki IMU1 yazısı
    Text {
        id: imu1
        x : 653
        y: 101
        color: "white"
        font.pixelSize: 14

        text: qsTr("IMU 1")

    }
    // Sol taraftaki IMU2 yazısı
    Text {
        id: imu2
        x : 653
        y: 125
        color: "white"
        font.pixelSize: 14

        text: qsTr("IMU 2")

    }

    // IMU3 yazısı
    Text {
        id: imu3
        x : 653
        y: 149
        color: "white"
        font.pixelSize: 14

        text: qsTr("IMU 3")

    }

    // Compass1 yazısı
    Text {

        id: compass1
        x : 653
        y: 224
        color: "white"
        font.pixelSize: 13

        text: qsTr("Compass 1")

    }

    // Compass 1 in değerini IMU1-2-3 te olduğu gibi progress barlardan almadım çünkü exact valueları hakkında bilgim yok oralar için kodların  Akay Bey de olduğunu söylemiştin sanırım
    // O sebepten direkt olarak text halinde yazdım.
    Text {
        id: compass1val
        x : 834
        y: 224
        color: "red"
        font.pixelSize: 13

        text: qsTr("Mag Err")

    }

    // Compass2 yazısı
    Text {
        id: compass2
        x : 653
        y: 248
        color: "white"
        font.pixelSize: 13

        text: qsTr("Compass 2")

    }

    // Yine Compass1 değerinde olduğu gibi Compass2 nin değerini de text olarak yazdırdım.
    Text {
        id: compass2val
        x : 834
        y: 248
        color: "yellow"
        font.pixelSize: 13

        text: qsTr("220.7")

    }

    // İkinci sıradaki Compass2 yazısı
    Text {
        id: compass22
        x : 653
        y: 272
        color: "white"
        font.pixelSize: 13

        text: qsTr("Compass 2")

    }

    // Yine Compass1 ve ilk Compass2 değerinde olduğu gibi ikinci Compass2 nin değerini de text olarak yazdırdım.
    Text {
        id: compass22val
        x : 834
        y: 272
        color: "green"
        font.pixelSize: 13

        text: qsTr("12.0")

    }

    //IMU1 için progress bar
    ProgressBar {
        id: imu1bar
        from:0
        to:50
        value: 22.9
        padding: 2
        x: 718
        y: 107

    // background dikdörtgeni koyu renk olan
        background: Rectangle {
            implicitWidth: 87
            implicitHeight: 4
            color: "#2f3152"
            radius: 3
        }
        //IMU1 in değerini aldığım text.
        Text{
            id: imu1val

            x : 114
            y: -8
            color: "white"
            font.pixelSize: 14

            text: imu1bar.value
            clip: false

        }
    // Açık renk olup değeri gösteren üst dikdörtgen.
        contentItem: Item {
            implicitWidth: 87
            implicitHeight: 4

            Rectangle {
                width: imu1bar.visualPosition * parent.width
                height: parent.height
                radius: 2
                color: "#2a8afe"
            }

        }
    }

    //IMU2 için progress bar
    ProgressBar {
        id: imu2bar
        from:0
        to:50
        value: 0.5
        padding: 2
        x: 718
        y: 130
    // background dikdörtgeni koyu renk olan
        background: Rectangle {
            implicitWidth: 87
            implicitHeight: 4
            color: "#2f3152"
            radius: 3
        }
        //IMU2 nin değerini aldığım text.
        Text{
            id: imu2val
            x : 114
            y: -5
            color: "white"
            font.pixelSize: 14

            text: imu2bar.value
            clip: false

        }
        // Açık renk olup değeri gösteren üst dikdörtgen.
        contentItem: Item {
            implicitWidth: 87
            implicitHeight: 4

            Rectangle {
                width: imu2bar.visualPosition * parent.width
                height: parent.height
                radius: 2
                color: "#2a8afe"
            }

        }
    }
    //IMU3 için progress bar
    ProgressBar {
        id: imu3bar
        from:0
        to:50
        value: 0.95
        padding: 2
        x: 718
        y: 153
        // background dikdörtgeni koyu renk olan
        background: Rectangle {
            implicitWidth: 87
            implicitHeight: 4
            color: "#2f3152"
            radius: 3
        }
        //IMU3 ün değerini aldığım text.
        Text{
            id: imu3val
            x : 114
            y: -3
            color: "white"
            font.pixelSize: 14

            text: imu3bar.value
            clip: false
            // styleColor: "white"

        }
        // Açık renk olup değeri gösteren üst dikdörtgen.
        contentItem: Item {
            implicitWidth: 87
            implicitHeight: 4

            Rectangle {
                width: imu3bar.visualPosition * parent.width
                height: parent.height
                radius: 2
                color: "#2a8afe"
            }
        }
    }

    //Compass1 için progress bar
    ProgressBar {
        id: compass1bar
        from:0
        to:50
        // value: 0.95
        padding: 2
        x: 718
        y: 225
        // background dikdörtgeni koyu renk olan
        background: Rectangle {
            implicitWidth: 87
            implicitHeight: 4
            color: "#2f3152"
            radius: 2
        }
        // Açık renk olup değeri gösteren üst dikdörtgen
        contentItem: Item {
            implicitWidth: 87
            implicitHeight: 4

            Rectangle {
                width: compass1bar.visualPosition * parent.width
                height: parent.height
                radius: 2
                color: "#2a8afe"
            }
        }
    }

    //Compass2 için progress bar
    ProgressBar {
        id: compass2bar
        from:0
        to:250
        value: 220.7
        padding: 2
        x: 718
        y: 250
        // background dikdörtgeni koyu renk olan
        background: Rectangle {
            implicitWidth: 87
            implicitHeight: 4
            color: "#2f3152"
            radius: 3
        }

        contentItem: Item {
            implicitWidth: 87
            implicitHeight: 4
            // Açık renk olup değeri gösteren üst dikdörtgen
            Rectangle {
                width: compass2bar.visualPosition * parent.width
                height: parent.height
                radius: 2
                color: "#2a8afe"
            }
        }
    }

    //İkinci Compass2 için progress bar
    ProgressBar {
        id: compass22bar
        from:0
        to:50
        value: 12
        padding: 2
        x: 718
        y: 275

        // background dikdörtgeni koyu renk olan
        background: Rectangle {
            implicitWidth: 87
            implicitHeight: 4
            color: "#2f3152"
            radius: 3
        }

        // Açık renk olup değeri gösteren üst dikdörtgen
        contentItem: Item {
            implicitWidth: 87
            implicitHeight: 4

            Rectangle {
                width: compass22bar.visualPosition * parent.width
                height: parent.height
                radius: 2
                color: "#2a8afe"
            }
        }
    }

 // Calibrete IMU butonu
    Button {
        id: imuButton
        text: qsTr("CALIBRATE IMU")
        font.pixelSize: 10
        x: 651
        y: 177
        onClicked: imuSuccessMessage.open() // Bunla popup olarak mesaj kutusu açılıyor
        contentItem: Text {
            text: imuButton.text
            font: imuButton.font
            opacity: enabled ? 1.0 : 0.3
            color: imuButton.down ? "#15142B" : "#15142B" //şurda basarken hissiyat oluşsun istiyorsanız ikinci taraftaki rengi değiştirebilirsiniz. Ben bize verilende böyle olduğu için yapmadım
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
        }

 //Burası background rectangleı çok da önemli değil
        background: Rectangle {

            implicitWidth: 238
            implicitHeight: 30
            opacity: enabled ? 1 : 0.3
            border.color: imuButton.down ? "#15142B" : "#15142B"
            border.width: 0
            radius: 2

        }
    }

    // Burası Imu için ekrana verilen mesaj kısmı
    Popup {
        id: imuSuccessMessage
        x: 210
        y: 125
        width: 293
        height: 87
        modal: true
        focus: true
        padding: 2
        opacity:  0.7
        background: Rectangle {
            color: "#2a8afe"
            border.width: 0
            radius: 50 // şurasıyla kenarlarını ovalleştirdim
        }
        closePolicy: Popup.CloseOnReleaseOutside | Popup.CloseOnPressOutsideParent // burası pop up ın kapanmasını sağlıyor. Bize verilende çok exact bir şey yoktu ben de kafama göre yaptım.
        // Bu linkten değiştirebilirsiniz. Farklı yolları var: https://doc.qt.io/qt-5/qml-qtquick-controls2-popup.html

        //Burada da yazısı onun özellikleri falan var.
        contentItem: Text {
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            text:"IMU CALIBRATED SUCCESES"
            x : 230
            y: 140
            color: "white"
            font.pixelSize: 14

            opacity: 10
        }

    }

// Calibrete COMPASS butonu
    Button {
        id: compassButton
        text: qsTr("CALIBRATE COMPASS")
        font.pixelSize: 10
        x: 651
        y: 309
        onClicked: compassSuccessMessage.open() // Bunla popup olarak mesaj kutusu açılıyor
        contentItem: Text {
            text: compassButton.text
            font: compassButton.font
            opacity: enabled ? 1.0 : 0.3
            //color: comprassButton.down ? "#15142B" : "#15142B" //şurda basarken hissiyat oluşsun istiyorsanız ikinci taraftaki rengi değiştirebilirsiniz. Ben bize verilende böyle olduğu için yapmadım
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
        }

        //Burası background rectangleı çok da önemli değil
        background: Rectangle {

            implicitWidth: 238
            implicitHeight: 30
            opacity: enabled ? 1 : 0.3
            border.color: compassButton.down ? "#15142B" : "#15142B"
            border.width: 0
            radius: 2
        }
    }

    // Burası Compass için ekrana verilen mesaj kısmı
    Popup {
        id: compassSuccessMessage
        x: 210
        y: 125
        width: 293
        height: 87
        modal: true
        focus: true
        padding: 2
        opacity:  0.7

        background: Rectangle {
            color: "#2a8afe"
            border.width: 0
            radius: 50 // şurasıyla kenarlarını ovalleştirdim

        }


        closePolicy: Popup.CloseOnReleaseOutside | Popup.CloseOnPressOutsideParent  // burası pop up ın kapanmasını sağlıyor. Bize verilende çok exact bir şey yoktu ben de kafama göre yaptım.
        // Bu linkten değiştirebilirsiniz. Farklı yolları var: https://doc.qt.io/qt-5/qml-qtquick-controls2-popup.html


        //Burada da yazısı onun özellikleri falan var.
        contentItem: Text {
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            text:"COMPASS CALIBRATED SUCCESES"
            x : 230
            y: 140
            color: "white"
            font.pixelSize: 14

            opacity: 2
        }

    }

   // Burada da  sol üstteki avionics yazısı yanındaki resmi ekledim.
    Image{
        id: avionicsImage
        x: 646
        y: 32
        width: 35
        height: 35
        source: "qrc:/UI/Assets/button.png"

    }

}

