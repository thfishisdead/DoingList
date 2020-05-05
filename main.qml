import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Window {
    visible: true
    color: "#363030"
    width: 320
    height: 400
    title: qsTr("Контакты")
    ListModel{
        id:contactsModel
        ListElement{
            name:"Персик"
            picture: "icons/person.png"
            beeing: "Was online 2 months ago"
        }
        ListElement{
            name:"Дедушка"
            picture: "icons/dad.png"
        }
        ListElement{
            name: "Доставка пиццы"
        }
    }
    ColumnLayout{
        anchors.fill: parent
        TopRawLayout{
            Layout.fillWidth: true
            onSearchItem: {
            }
        }
        MainToolBar{
            Layout.leftMargin: 10
            Layout.rightMargin: 10
            Layout.fillWidth: true
            onNewItem: {
                contactsModel.append({name:text})
            }
        }
        ContactList{
            id:list
            Layout.fillHeight: true
            Layout.fillWidth: true
            model:contactsModel
            onMenu: {
                contactListMenu.popup();
            }
        }
    }
    Menu{
        id:contactListMenu
        modal:true
        MenuItem{
            text:"Удалить"
            onTriggered: {
                contactsModel.remove(list.menuIndex)
            }
        }
    }
}
