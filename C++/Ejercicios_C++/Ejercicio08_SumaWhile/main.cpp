#include <iostream>
using namespace std;

int main() {
    int num, suma = 0;

    cout << "SUMA DE NUMEROS\n";
    cout << "---------------\n";
    cout << "Ingrese numeros (0 para terminar)\n";

    cin >> num;
    while (num != 0) {
        suma += num;
        cin >> num;
    }

    cout << "Suma total: " << suma << endl;

    cout << "\nPresione ENTER para salir...";
    cin.ignore();
    cin.get();
    return 0;
}

