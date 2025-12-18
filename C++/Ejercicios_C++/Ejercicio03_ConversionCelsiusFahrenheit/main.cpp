#include <iostream>
using namespace std;

int main() {
    float celsius, fahrenheit;

    cout << "CONVERSION DE CELSIUS A FAHRENHEIT\n";
    cout << "---------------------------------\n";

    cout << "Ingrese los grados Celsius: ";
    cin >> celsius;

    fahrenheit = (celsius * 9 / 5) + 32;

    cout << "Grados Fahrenheit: " << fahrenheit << endl;

    cout << "\nPresione ENTER para salir...";
    cin.ignore();
    cin.get();
    return 0;
}

