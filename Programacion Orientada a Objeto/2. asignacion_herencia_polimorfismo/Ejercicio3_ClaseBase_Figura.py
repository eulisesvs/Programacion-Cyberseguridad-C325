# Ejercicio 3: Clase Base Figura
class Figura:
    def area(self):
        return 0


class Circulo(Figura):
    def __init__(self, radio):
        self.radio = radio

    def area(self):
        return 3.1416 * (self.radio ** 2)


class Cuadrado(Figura):
    def __init__(self, lado):
        self.lado = lado

    def area(self):
        return self.lado * self.lado

c1 = Circulo(5)
q1 = Cuadrado(4)

print("Área del círculo:", f"{c1.area():.2f}")
print("Área del cuadrado:", f"{q1.area():.2f}")