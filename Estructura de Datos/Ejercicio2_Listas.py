# Ejercicio de Python 
# Ejercicio 2: Listas

# Crea una lista llamada 'puertos_abiertos' con los valores [22, 80, 443, 8080].
puertos_abiertos = [22, 80, 443, 8080]

# a) Agrega el puerto 21 a la lista.
puertos_abiertos.append(21)
print("a) Lista después de agregar el puerto 21:", puertos_abiertos)

# b) Elimina el puerto 8080.
puertos_abiertos.remove(8080)
print("b) Lista después de eliminar el puerto 8080:", puertos_abiertos)

# c) Muestra la lista ordenada de menor a mayor.
puertos_abiertos.sort()
print("c) Lista ordenada de menor a mayor:", puertos_abiertos)
