import QtQuick
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    width: 400
    height: 500
    visible: true
    title: "Калькулятор"

    Rectangle {
        anchors.fill: parent
        color: "#f0f0f0"

        Item {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            // Первый текстовый ввод
            TextField {
                id: input
                placeholderText: "Введите число"
                font.pixelSize: 24
                width: 300
                height: 50
                // horizontalAlignment: TextInput.AlignHCenter
                anchors.horizontalCenter: parent.horizontalCenter
                echoMode: TextInput.Password
                readOnly: true
                text: "Helloo"
                color: "lightgray"

            }

            // Второй текстовый ввод, расположенный под первым
            TextField {
                id: inputField
                placeholderText: ""
                font.pixelSize: 24
                width: 300
                height: 50
                // horizontalAlignment: TextInput.AlignHCenter
                echoMode: TextInput.Password
                readOnly: true
                anchors.top: input.top // Привязка к нижней части первого поля
                anchors.horizontalCenter: parent.horizontalCenter // Центрируем по горизонтали
                background: Rectangle {
                        color: "transparent" // Устанавливаем прозрачный цвет
                    }
            }

            // Кнопки чисел
            Column {
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 10
                anchors.top: inputField.bottom // Привязка к нижней части второго поля

                Row {
                    spacing: 10
                    Button { text: "1"; onClicked: inputField.text += "1" }
                    Button { text: "2"; onClicked: inputField.text += "2" }
                    Button { text: "3"; onClicked: inputField.text += "3" }
                }

                Row {
                    spacing: 10
                    Button { text: "4"; onClicked: inputField.text += "4" }
                    Button { text: "5"; onClicked: inputField.text += "5" }
                    Button { text: "6"; onClicked: inputField.text += "6" }
                }

                Row {
                    spacing: 10
                    Button { text: "7"; onClicked: inputField.text += "7" }
                    Button { text: "8"; onClicked: inputField.text += "8" }
                    Button { text: "9"; onClicked: inputField.text += "9" }
                }

                Row {
                    spacing: 10
                    Button { text: "0"; onClicked: inputField.text += "0" }
                    Button { text: "C"; onClicked: inputField.text = "" } // Кнопка очистки
                }
            }
        }
    }
}
