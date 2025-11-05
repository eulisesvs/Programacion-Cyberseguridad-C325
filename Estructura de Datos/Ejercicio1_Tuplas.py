# Ejercicio de Python 
# Ejercicio 1: Tuplas

# Crea una tupla llamada 'vulnerabilidades' que contenga los siguientes elementos: 'SQL Injection', 'Cross-Site Scripting', 'Buffer Overflow', 'Denegación de Servicio'.
vulnerabilidades = ('SQL Injection', 'Cross-Site Scripting', 'Buffer Overflow', 'Denegación de Servicio')

# a) Muestra el segundo elemento de la tupla.
print("a) Segundo elemento:", vulnerabilidades[1])

# b) Muestra los dos últimos elementos.
print("b) Dos últimos elementos:", vulnerabilidades[-2:])

# c) Intenta modificar un elemento y observa el resultado.
print("c) Intentando modificar un elemento de la tupla...")
vulnerabilidades[0] = 'Inyección SQL'


