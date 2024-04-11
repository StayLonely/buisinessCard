import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.Layouts 1.0


ApplicationWindow {
    visible: true
    property string cardColor: "white"
    property string textColor: "black"
    property int fontCard: 30
    property int textWhere : Text.AlignLeft
    property QtObject figure
    Rectangle {
        id: mainPage
        anchors.fill: parent
        visible: true

        Text {
            text: "Генерация визиток"
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 24
            id: maintext
            y: 200
        }
        Text {
            anchors.top: maintext.bottom
            anchors.margins: 100
            text: "Введите название компании, номер, деятельность, слоган"
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 24

        }

        Column {
            spacing: 20
            width: parent.width
            anchors.centerIn: parent

            Rectangle {
                color: "lightblue"
                width: parent.width
                height: 40

                TextInput {
                    id: companyField

                    width: parent.width
                    anchors.verticalCenter: parent.verticalCenter
                }
            }

            Rectangle {
                color: "lightblue"
                width: parent.width
                height: 40

                TextInput {
                    id: phoneNumberField

                    width: parent.width
                    anchors.verticalCenter: parent.verticalCenter
                }

            }

            Rectangle {
                color: "lightblue"
                width: parent.width
                height: 40

                TextInput {
                    id: activityField

                    width: parent.width
                    anchors.verticalCenter: parent.verticalCenter
                }
            }

            Rectangle {
                color: "lightblue"
                width: parent.width
                height: 40

                TextInput {
                    id: sloganField

                    width: parent.width - 40
                    anchors.verticalCenter: parent.verticalCenter
                }
            }

            Rectangle {
                    color: "lightgreen"
                    width: parent.width
                    height: 40
                    radius: 10

                    Text {
                        text: "Создать"
                        anchors.centerIn: parent
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {


                            mainPage.visible = false
                            cardEditor.visible = true
                        }
                    }
                }

        }
    }


    Rectangle {
            id: cardEditor
            anchors.fill: parent
            visible: false

            Rectangle {
                    id: card
                    y: 150
                    x:10

                    color: cardColor
                    border.color: "black"
                    width: 700
                    height: 250

                Text {
                    //anchors.top:  cardEditor.bottom
                    width: 700
                    height: 250
                    color: textColor
                    id: cardText
                    text: companyField.text + "\n" + phoneNumberField.text + "\n"

                       + activityField.text + "\n"
                           + sloganField.text

                    font.pixelSize: fontCard
                    horizontalAlignment: textWhere
                            verticalAlignment: Text.AlignVCenter


                }
            }
            Text {
                anchors.top:  card.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                color: textColor
                id: textCol
                text: "Выберите цвет визитки"
                anchors.margins: 25
                font.pixelSize: 30
            }
            RowLayout {
                anchors.top: textCol.bottom
                            Layout.fillWidth: true
                            spacing: 10
                            anchors.horizontalCenter: parent.horizontalCenter
                            id: rowl
                            anchors.margins: 25
                            Rectangle {
                                width: 40
                                height: 40
                                color: "red"
                                border.color:"black"
                                MouseArea {
                                    anchors.fill: parent
                                    onClicked: {
                                        cardColor = "red"

                                    }
                                }
                            }

                            Rectangle {
                                width: 40
                                height: 40
                                color: "green"
                                border.color:"black"
                                MouseArea {
                                    anchors.fill: parent
                                    onClicked: {
                                        cardColor = "green"

                                    }
                                }
                            }

                            Rectangle {
                                width: 40
                                height: 40
                                color: "blue"
                                border.color:"black"
                                MouseArea {
                                    anchors.fill: parent
                                    onClicked: {
                                        cardColor = "blue"

                                    }
                                }
                            }
                            Rectangle {
                                width: 40
                                height: 40
                                color: "white"
                                border.color:"black"
                                MouseArea {
                                    anchors.fill: parent
                                    onClicked: {
                                        cardColor = "white"

                                    }
                                }
                            }
                            Rectangle {
                                width: 40
                                height: 40
                                color: "lightblue"
                                border.color:"black"
                                MouseArea {
                                    anchors.fill: parent
                                    onClicked: {
                                        cardColor = "lightblue"

                                    }
                                }
                            }
                            Rectangle {
                                width: 40
                                height: 40
                                color: "pink"
                                border.color:"black"
                                MouseArea {
                                    anchors.fill: parent
                                    onClicked: {
                                        cardColor = "pink"

                                    }
                                }
                            }
                        }

            RowLayout{
            id: textSettings
            anchors.top: rowl.bottom
            anchors.margins: 25
            x: 50
            spacing: 30
                Rectangle {
                    width: 40
                    height: 40
                    color: "white"
                    border.color:"black"
                    Text {
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        id: minussize
                        text: qsTr("-")
                    }
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            fontCard = fontCard - 2

                        }
                    }
                }
                Rectangle {
                    width: 40
                    height: 40
                    color: "white"
                    border.color:"black"
                    Text {
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        id: plussize
                        text: qsTr("+")
                    }
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            fontCard = fontCard + 2

                        }
                    }
                }

                Rectangle {
                    id: left
                    width: 80
                    height: 40
                    color: "lightgreen"
                    border.color:"black"
                    Text {
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        id: textLeft
                        text: qsTr("LEFT")
                    }
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            textWhere = Text.AlignLeft
                            left.color= "lightgreen"
                            cen.color = "white"
                            rig.color = "white"
                        }
                    }
                }

                Rectangle {
                    width: 100
                    height: 40
                    color: "white"
                    border.color:"black"
                    id: cen
                    Text {
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        id: textcenter
                        text: qsTr("CENTER")
                    }
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            textWhere = Text.AlignHCenter
                            cen.color=  "lightgreen"
                            left.color = "white"
                            rig.color = "white"

                        }
                    }
                }

                Rectangle {
                    width: 80
                    height: 40
                    color: "white"
                    border.color:"black"
                    id: rig
                    Text {
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        id: textRight
                        text: qsTr("RIGHT")
                    }
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            textWhere = Text.AlignRight
                            rig.color= "lightgreen"
                            cen.color = "white"
                            left.color = "white"


                        }
                    }
                }
            }


            Rectangle {
            anchors.top: textSettings.bottom
            id: figurebut
            width: parent.width
            height: 40
            Text {
                anchors.fill: parent
                id: textaddFigure
                text: qsTr("ДобавитьФигуру")
            }
            MouseArea {
                anchors.fill: parent

                onClicked: {
                    figure = createFigure()

                }
            }
            }

            RowLayout {
                anchors.top: figurebut.bottom
                id: figureSettings
                width: 100
                height: 40
                spacing: 30
                Rectangle {


                id: figureDown
                width: 100
                height: 40
                Text {
                    anchors.fill: parent
                    id: textfigurPosDown
                    text: qsTr("Вниз")
                }
                MouseArea {
                    anchors.fill: parent

                    onClicked: {
                        moveFigure(figure, 0, 50)

                    }
                }
                }

                Rectangle {


                id: figureUp
                width: 100
                height: 40
                Text {
                    anchors.fill: parent
                    id: textfigurPosUp
                    text: qsTr("Вверх")
                }
                MouseArea {
                    anchors.fill: parent

                    onClicked: {
                        moveFigure(figure, 0, -50)

                    }
                }
                }

                Rectangle {


                id: figureRight
                width: 100
                height: 40
                Text {
                    anchors.fill: parent
                    id: textfigurPosRight
                    text: qsTr("Вправо")
                }
                MouseArea {
                    anchors.fill: parent

                    onClicked: {
                        moveFigure(figure, 50, 0)

                    }
                }
                }

                Rectangle {


                id: figureLeft
                width: 100
                height: 40
                Text {
                    anchors.fill: parent
                    id: textfigurPosLeft
                    text: qsTr("Налево")
                }
                MouseArea {
                    anchors.fill: parent

                    onClicked: {
                        moveFigure(figure, -50, 0)

                    }
                }
                }

                Rectangle {
                    width: 40
                    height: 40
                    color: "white"
                    border.color:"black"
                    Text {
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        id: minussizefig
                        text: qsTr("-")
                    }
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            sizeFigure(figure, -50, -50)

                        }
                    }
                }
                Rectangle {
                    width: 40
                    height: 40
                    color: "white"
                    border.color:"black"
                    Text {
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        id: plussizefig
                        text: qsTr("+")
                    }
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            sizeFigure(figure, 50, 50)

                        }
                    }
                }

            }


            Rectangle {
                anchors.top: figureSettings.bottom
                color: "lightblue"
                width: parent.width
                height: 40
                radius: 10


                Text {
                    anchors.centerIn: parent
                    text: "Назад"
                }

                MouseArea {
                    anchors.fill: parent

                    onClicked: {
                        cardEditor.visible = false
                        mainPage.visible = true
                    }

                }
            }


        }

    function createFigure() {
        var figure = Qt.createQmlObject("import QtQuick 2.0; Rectangle { width: 50; height: 50; color: 'red' }", cardEditor)
        return figure
    }

    function moveFigure(figure, x, y) {
        figure.x = figure.x  + x
        figure.y = figure.y + y
    }

    function sizeFigure(figure, width, height) {
        figure.width = figure.width  + width
        figure.height = figure.height + height
    }




    }





