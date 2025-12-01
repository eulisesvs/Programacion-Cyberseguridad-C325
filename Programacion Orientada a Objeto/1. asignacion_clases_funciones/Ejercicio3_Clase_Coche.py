# Ejercicio 3: Clase Coche
class Coche:
    def __init__(self, marca, velocidad):
        self.marca = marca
        self.velocidad = velocidad

    def aumentar_velocidad(self, incremento):
        self.velocidad += incremento

coche1 = Coche("Toyota", 60)
coche1.aumentar_velocidad(20)
print("Marca:", coche1.marca, "Velocidad actual:", coche1.velocidad)