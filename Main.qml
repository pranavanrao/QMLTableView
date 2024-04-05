import QtQuick 2.14
import QtQuick.Window 2.12
import QtQuick.Controls 2.1
import Qt.labs.qmlmodels 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480

    TableView {
        anchors.fill: parent

        model: TableModel {
            TableModelColumn { display: "price" }

            rows: [
                {
                    price: 1000.50
                },
                {
                    price: 25.50
                },
                {
                    price: 300.5749
                },
                {
                    price: 50000.10
                },
                {
                    price: 2.20
                }
            ]
        }

        delegate: DelegateChooser {
            DelegateChoice {
                column: 0
                delegate: TextField {
                    implicitWidth: 80
                    font.bold: true
                    text: model.display.toFixed(3)
                    readOnly: true
                    horizontalAlignment: Text.AlignRight
                }
            }
        }
    }
}
