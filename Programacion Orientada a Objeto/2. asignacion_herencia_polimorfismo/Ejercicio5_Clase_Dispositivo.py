# Ejercicio 5: Clase Dispositivo
class Dispositivo:
    def encender(self):
        print("El dispositivo se está encendiendo.")


class Laptop(Dispositivo):
    def encender(self):
        print("La laptop se enciende y carga el sistema operativo Windows.")


class Telefono(Dispositivo):
    def encender(self):
        print("El teléfono se enciende y carga el sistema oprativo Android.")

d1 = Laptop()
d2 = Telefono()

d1.encender()
d2.encender()