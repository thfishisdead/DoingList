import QtQuick 2.0
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

ColumnLayout{
    Label{
        Layout.leftMargin: 130
        Layout.topMargin: 10
       text: "Contacts"
       color: "White"
       font.pixelSize: 14
       font.bold: true
     }
    TextField{
        Layout.leftMargin: 10
        Layout.rightMargin: 10
        Layout.fillWidth: true
        placeholderText: "Search"
    }

}
