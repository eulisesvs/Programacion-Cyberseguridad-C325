import tkinter as tk

def sumar():
    n1 = float(entrada1.get())
    n2 = float(entrada2.get())
    resultado.config(text="Resultado: " + str(n1 + n2))

ventana = tk.Tk()
ventana.title("Ejercicio 3 - Calculadora")

tk.Label(ventana, text="Número 1:").pack()
entrada1 = tk.Entry(ventana)
entrada1.pack()

tk.Label(ventana, text="Número 2:").pack()
entrada2 = tk.Entry(ventana)
entrada2.pack()

btn_sumar = tk.Button(ventana, text="Sumar", command=sumar)
btn_sumar.pack()

resultado = tk.Label(ventana, text="Resultado: ")
resultado.pack()

ventana.mainloop()
