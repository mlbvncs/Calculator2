import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material

ApplicationWindow {
    visible: true /*tornando visível*/
    id: janela
    width: 400 /*largura*/
    height: 400 /*altura*/
    Material.theme: "Dark" /*tema*/
    font.pixelSize: 24 /*tamanho da fonte de tudo que aparece na janela*/

    Rectangle {
        id: frame /*identificação*/
        color: "#696a6b" /*cor*/
        height: 80 /*altura*/
        anchors {
            left: parent.left /*fixando no canto esquerdo*/
            right: parent.right /*fixando no canto direito*/
            top: parent.top /*fixando no topo*/
            margins: 10 /*margem*/
        }
        Label {
            id: label
            font {
                family: "Helvetica" /*fonte do texto*/
                pointSize: 22 /*tamanho da fonte do texto*/
            }
            anchors.right: frame.right /*fixando o texto na direita*/
            rightPadding: 20 /*espaço entre o texto e o canto direito*/
            topPadding: 20 /*espaço entre o texto e o topo*/
        }
        radius: 30 /* tamanho da borda circular*/
    }


    Row {
        id: linha1
        spacing: 10 /*espaço entre os elementos*/
        anchors {
            horizontalCenter: parent.horizontalCenter /*posicionando os itens no centro*/
            top: frame.top /*criando margem em relação ao topo do frame*/
            topMargin: 85 /*margem em relação ao topo do frame*/
        }
        Button {
            text: "("
            width: 87 
            onClicked: {
                var calc_return = calc.entrada("(")
                label.text = calc_return
            }
        }
        Button {
            text: ")"
            width: 87
            onClicked: {
                var calc_return = calc.entrada(")")
                label.text = calc_return
            }
        }
        Button {
            text: "%"
            width: 87
            onClicked: {
                var calc_return = calc.entrada("%")
                label.text = calc_return
            }
        }
        Button {
            text: "/"
            width: 87
            background: Rectangle { /*mudando a cor e a borda do botão*/
                color: "#565c29"
                radius: 30
            }
            onClicked: {
                var calc_return = calc.entrada("/")
                label.text = calc_return
            }
        }
    }
    Row {
        id: linha2
        spacing: 10
        anchors {
            horizontalCenter: parent.horizontalCenter
            top: linha1.top
            topMargin: 60
        }
        Button {
            text: "7"
            width: 87
            onClicked: {
                var calc_return = calc.entrada("7")
                label.text = calc_return
            }
        }
        Button {
            text: "8"
            width: 87
            onClicked: {
                var calc_return = calc.entrada("8")
                label.text = calc_return
            }
        }
        Button {
            text: "9"
            width: 87
            onClicked: {
                var calc_return = calc.entrada("9")
                label.text = calc_return
            }
        }
        Button {
            text: "*"
            width: 87
            background: Rectangle { /*mudando a cor do botão*/
                color: "#565c29"
                radius: 30
            }
            onClicked: {
                var calc_return = calc.entrada("*")
                label.text = calc_return
            }
        }
    }
    Row {
        id: linha3
        spacing: 10
        anchors {
            horizontalCenter: parent.horizontalCenter
            top: linha2.top
            topMargin: 60
        }
        Button {
            text: "4"
            width: 87
            onClicked: {
                var calc_return = calc.entrada("4")
                label.text = calc_return
            }
        }
        Button {
            text: "5"
            width: 87
            onClicked: {
                var calc_return = calc.entrada("5")
                label.text = calc_return
            }
        }
        Button {
            text: "6"
            width: 87
            onClicked: {
                var calc_return = calc.entrada("6")
                label.text = calc_return
            }
        }
        Button {
            text: "-"
            width: 87
            background: Rectangle { /*mudando a cor do botão*/
                color: "#565c29"
                radius: 30
            }
            onClicked: {
                var calc_return = calc.entrada("-")
                label.text = calc_return
            }
        }
    }
    Row {
        id: linha4
        spacing: 10
        anchors {
            horizontalCenter: parent.horizontalCenter
            top: linha3.top
            topMargin: 60
        }
        Button {
            text: "1"
            width: 87
            onClicked: {
                var calc_return = calc.entrada("1")
                label.text = calc_return
            }
        }
        Button {
            text: "2"
            width: 87
            onClicked: {
                var calc_return = calc.entrada("2")
                label.text = calc_return
            }
        }
        Button {
            text: "3"
            width: 87
            onClicked: {
                var calc_return = calc.entrada("3")
                label.text = calc_return
            }
        }
        Button {
            text: "+"
            width: 87
            background: Rectangle { /*mudando a cor do botão*/
                color: "#565c29"
                radius: 30
            }
            onClicked: {
                var calc_return = calc.entrada("+")
                label.text = calc_return
            }
        }
    }
    Row {
        spacing: 10
        anchors {
            horizontalCenter: parent.horizontalCenter
            top: linha4.top
            topMargin: 60
        }
        Button {
            text: "0"
            width: 87
            onClicked: {
                var calc_return = calc.entrada("0")
                label.text = calc_return
            }
        }
        Button {
            text: "AC"
            width: 87
            onClicked: {
                var calc_return = calc.limpar("AC")
                label.text = calc_return
            }
        }
        Button {
            text: "."
            width: 87
            onClicked: {
                var calc_return = calc.entrada(".")
                label.text = calc_return
            }
        }
        Button {
            text: "="
            width: 87
            background: Rectangle { /*mudando a cor do botão*/
                color: "#565c29"
                radius: 30
            }
            onClicked: {
                var calc_return = calc.saida("=")
                label.text = calc_return
            }
        }
    }
}