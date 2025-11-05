# Ejercicio de Python 
# Ejercicio 3: Diccionarios

# Crea un diccionario llamado 'dispositivo_red' con la siguiente información:
# 'IP': '192.168.1.10'
# 'Hostname': 'Firewall-Corp'
# 'Estado': 'Activo'
dispositivo_red = {
    'IP': '192.168.1.10',
    'Hostname': 'Firewall-Corp',
    'Estado': 'Activo'
}

# a) Muestra el valor de la clave 'Hostname'.
print("a) Valor de 'Hostname':", dispositivo_red['Hostname'])

# b) Agrega una nueva clave llamada 'Ubicación' con el valor 'Centro de Datos'.
dispositivo_red['Ubicación'] = 'Centro de Datos'
print("b) Diccionario después de agregar 'Ubicación':", dispositivo_red)

# c) Cambia el valor de 'Estado' a 'Inactivo'.
dispositivo_red['Estado'] = 'Inactivo'
print("c) Diccionario después de cambiar 'Estado' a 'Inactivo':", dispositivo_red)

# d) Muestra todo el diccionario actualizado.
print("d) Diccionario completo actualizado:", dispositivo_red)
