import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Window {
    visible: true
    width: 320
    height: 400
    title: qsTr("Контакты")
    ListModel{
        id:contactsModel
        ListElement{
            name:"Персик"
        }
        ListElement{
            name:"Барсик"
        }
        ListElement{
            name:"Густав"
        }
    }
    ColumnLayout{
        anchors.fill: parent
        MainToolBar{
            Layout.fillWidth: true
            onNewItem: {
                contactsModel.append({name:name})
            }
        }
        ContactList{
            Layout.fillHeight: true
            Layout.fillWidth: true
            model:contactsModel
        }
    }
}