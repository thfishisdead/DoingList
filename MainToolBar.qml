import QtQuick 2.0
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

RowLayout{
    signal newItem(string text)
    width: 300
    height: 50
    TextField{
        id:textField
        Layout.fillWidth: true
        selectByMouse: true
        placeholderText: "Добавить пользователя"
        focus: true
    }

    function add()
    {
        newItem(textField.text);
        textField.clear();
    }

    Button{
        text: "Добавить"
        highlighted: true
        onClicked: {
            add();
        }
    }
    Keys.onReturnPressed: {
        add();
    }
    Keys.onEnterPressed: {
        add();
    }
}
