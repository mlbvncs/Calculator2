from PySide6.QtCore import QObject, Slot
from PySide6.QtQml import QQmlApplicationEngine
from PySide6.QtGui import QGuiApplication

valores = ""
class Calc(QObject):
    @Slot(str, result=str)
    def entrada(self, valor):
        global valores  
        valores = valores + str(valor)
        return valores 
    @Slot(str, result=str)
    def limpar(self, valor):
        global valores
        valores = ""
        return valores
    @Slot(str, result=str)
    def saida(self, valor):
        global valores
        resultado = eval(valores)
        valores = str(resultado)
        return valores

app = QGuiApplication()

engine = QQmlApplicationEngine()
engine.load("calculadora.qml")

calc = Calc()
context = engine.rootContext()
context.setContextProperty("calc", calc)

app.exec() 