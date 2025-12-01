# Ejercicio 2: Clase Rectangulo
class Rectangulo:
    def __init__(self, base, altura):
        self.base = base
        self.altura = altura

    def area(self):
        return self.base * self.altura

rect1 = Rectangulo(5, 3)
print("Area del rectangulo:", rect1.area())