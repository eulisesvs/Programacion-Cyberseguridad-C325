#include <iostream>
using namespace std;

int main() {
    int numero;

    cout << "TABLA DE MULTIPLICAR\n";
    cout << "-------------------\n";

    cout << "Ingrese un numero: ";
    cin >> numero;

    for (int i = 1; i <= 12; i++) {
        cout << numero << " x " << i << " = " << numero * i << endl;
    }

    cout << "\nPresione ENTER para salir...";
    cin.ignore();
    cin.get();
    return 0;
}

