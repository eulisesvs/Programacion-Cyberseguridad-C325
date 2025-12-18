#include <iostream>
using namespace std;

int main() {
    float base, altura;

    cout << "CALCULO DEL AREA DE UN RECTANGULO\n";
    cout << "--------------------------------\n";

    cout << "Ingrese la base: ";
    cin >> base;

    cout << "Ingrese la altura: ";
    cin >> altura;

    cout << "Area del rectangulo: " << base * altura << endl;

    cout << "\nPresione ENTER para salir...";
    cin.ignore();
    cin.get();
    return 0;
}
