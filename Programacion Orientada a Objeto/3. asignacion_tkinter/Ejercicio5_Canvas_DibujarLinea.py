import tkinter as tk

def dibujar(event):
    x, y = event.x, event.y
    lienzo.create_line(x, y, x+1, y+1)

ventana = tk.Tk()
ventana.title("Ejercicio 5 - Canvas")

lienzo = tk.Canvas(ventana, width=400, height=300, bg="white")
lienzo.pack()

lienzo.bind("<B1-Motion>", dibujar)  # Mantener presionado click izquierdo

ventana.mainloop()
