# Ejercicio 4: Clase CuentaBancaria
class CuentaBancaria:
    def __init__(self, titular, balance):
        self.titular = titular
        self.balance = balance

    def depositar(self, cantidad):
        self.balance += cantidad

    def retirar(self, cantidad):
        if cantidad <= self.balance:
            self.balance -= cantidad
        else:
            print("Fondos insuficientes")

cuenta1 = CuentaBancaria("María", 100)
cuenta1.depositar(50)
print("Balance después del depósito:", cuenta1.balance)
cuenta1.retirar(30)
print("Balance después del retiro:", cuenta1.balance)