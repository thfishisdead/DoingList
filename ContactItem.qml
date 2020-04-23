import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Rectangle {
    id:me
    property alias icon: icon.source
    property alias text: label.text
    property bool selected: false
    signal leftClick()
    signal rightClick()
    color: {
        if(selected)
            return "lightblue"
        if (area.containsMouse)
            return "#f1f1f1"
        return "white";
    }
    width:parent.width
    height: 60
    RowLayout{
        anchors.fill: parent
        spacing: 7
        anchors.leftMargin: 4
        anchors.rightMargin: 4
        Image {
            id:icon
            source: "icons/person.png"
            Layout.fillHeight: true
            Layout.preferredWidth: height
            Layout.margins: 7
        }
        Label{
            id:label
            Layout.fillWidth: true
            font.bold:true
        }
    }
    MouseArea{
        id:area
        anchors.fill: parent
        hoverEnabled: true
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        onClicked: {
            if (mouse.button===Qt.LeftButton)
                leftClick();
            if (mouse.button===Qt.RightButton)
                rightClick();
        }
    }
}
