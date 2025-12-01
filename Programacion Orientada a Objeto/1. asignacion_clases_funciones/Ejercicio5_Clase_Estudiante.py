# Ejercicio 5: Clase Estudiante
class Estudiante:
    def __init__(self, nombre, calificaciones):
        self.nombre = nombre
        self.calificaciones = calificaciones

    def promedio(self):
        return sum(self.calificaciones) / len(self.calificaciones)

est1 = Estudiante("Ana", [90, 85, 88])
print(f"Promedio de {est1.nombre}: {est1.promedio():.2f}")