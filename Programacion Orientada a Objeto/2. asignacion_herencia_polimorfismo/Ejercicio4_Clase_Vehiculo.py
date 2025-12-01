# Ejercicio 4: Clase Vehiculo
class Vehiculo:
    def mover(self):
        print("El vehículo se está moviendo.")


class Carro(Vehiculo):
    def mover(self):
        print("El carro avanza por la carretera.")


class Bicicleta(Vehiculo):
    def mover(self):
        print("La bicicleta se desplaza con pedales.")

v1 = Carro()
v2 = Bicicleta()

v1.mover()
v2.mover()