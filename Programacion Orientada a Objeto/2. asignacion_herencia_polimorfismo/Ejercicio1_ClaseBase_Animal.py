# Ejercicio 1: Clase Base Animal
class Animal:
    def hablar(self):
        print("El animal hace un sonido.")

class Perro(Animal):
    def hablar(self):
        print("El perro dice: Guau!")

class Gato(Animal):
    def hablar(self):
        print("El gato dice: Miau!")

p = Perro()
g = Gato()

p.hablar()
g.hablar()