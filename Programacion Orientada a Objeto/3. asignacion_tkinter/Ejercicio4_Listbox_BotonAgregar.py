import tkinter as tk

def agregar():
    elemento = entrada.get()
    if elemento != "":
        lista.insert(tk.END, elemento)
        entrada.delete(0, tk.END)

ventana = tk.Tk()
ventana.title("Ejercicio 4 - Listbox")

lista = tk.Listbox(ventana)
lista.pack()

entrada = tk.Entry(ventana)
entrada.pack()

btn_agregar = tk.Button(ventana, text="Agregar", command=agregar)
btn_agregar.pack()

ventana.mainloop()
