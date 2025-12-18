#include <iostream>
using namespace std;

int main() {
    int opcion;
    float a, b;

    cout << "MENU DE OPERACIONES\n";
    cout << "-------------------\n";

    do {
        cout << "\n1. Sumar";
        cout << "\n2. Restar";
        cout << "\n3. Multiplicar";
        cout << "\n4. Salir";
        cout << "\nSeleccione una opcion: ";
        cin >> opcion;

        if (opcion >= 1 && opcion <= 3) {
            cout << "Ingrese el primer numero: ";
            cin >> a;
            cout << "Ingrese el segundo numero: ";
            cin >> b;
        }

        switch (opcion) {
            case 1: cout << "Resultado: " << a + b << endl; break;
            case 2: cout << "Resultado: " << a - b << endl; break;
            case 3: cout << "Resultado: " << a * b << endl; break;
            case 4: cout << "Saliendo del programa...\n"; break;
            default: cout << "Opcion invalida\n";
        }

    } while (opcion != 4);

    cout << "\nPresione ENTER para salir...";
    cin.ignore();
    cin.get();
    return 0;
}

