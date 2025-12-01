# Ejercicio 1: Clase Usuario
class Usuario:
    def __init__(self, nombre, edad):
        self.nombre = nombre
        self.edad = edad

    def mostrar_datos(self):
        return f"Nombre: {self.nombre}, Edad: {self.edad}"

usuario1 = Usuario("Carlos", 25)
print(usuario1.mostrar_datos())


    