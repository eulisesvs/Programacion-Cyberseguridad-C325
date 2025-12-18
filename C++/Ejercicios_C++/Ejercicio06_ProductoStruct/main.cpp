#include <iostream>
using namespace std;

struct Producto {
    string nombre;
    float precio;
    int cantidad;
};

int main() {
    Producto p[5];
    float total = 0;

    cout << "CONTROL DE INVENTARIO\n";
    cout << "---------------------\n";

    for (int i = 0; i < 5; i++) {
        cout << "\nProducto " << i + 1 << endl;

        cout << "Nombre: ";
        cin >> p[i].nombre;

        cout << "Precio: ";
        cin >> p[i].precio;

        cout << "Cantidad: ";
        cin >> p[i].cantidad;

        total += p[i].precio * p[i].cantidad;
    }

    cout << "\nValor total del inventario: " << total << endl;

    cout << "\nPresione ENTER para salir...";
    cin.ignore();
    cin.get();
    return 0;
}

