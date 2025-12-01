# Ejercicio 2: Clase Base Empleado
class Empleado:
    def __init__(self, nombre, salario):
        self.nombre = nombre
        self.salario = salario

    def calcular_bono(self):
        return 0


class Gerente(Empleado):
    def calcular_bono(self):
        return self.salario * 0.20   # 20%


class Tecnico(Empleado):
    def calcular_bono(self):
        return self.salario * 0.10   # 10%

e1 = Gerente("Luis", 50000)
e2 = Tecnico("Ana", 30000)

print("Bono de", e1.nombre, ":", e1.calcular_bono())
print("Bono de", e2.nombre, ":", e2.calcular_bono())