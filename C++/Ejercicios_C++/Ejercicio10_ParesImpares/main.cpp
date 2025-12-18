#include <iostream>
using namespace std;

int main() {
    int num, pares = 0, impares = 0;

    cout << "CONTEO DE NUMEROS PARES E IMPARES\n";
    cout << "--------------------------------\n";

    for (int i = 1; i <= 10; i++) {
        cout << "Ingrese el numero " << i << ": ";
        cin >> num;

        if (num % 2 == 0)
            pares++;
        else
            impares++;
    }

    cout << "\nCantidad de pares: " << pares << endl;
    cout << "Cantidad de impares: " << impares << endl;

    cout << "\nPresione ENTER para salir...";
    cin.ignore();
    cin.get();
    return 0;
}

