#include <iostream>
using namespace std;

int main() {
    string nombre;
    int edad;
    float estatura;

    cout << "REGISTRO DE DATOS PERSONALES\n";
    cout << "----------------------------\n";

    cout << "Ingrese su nombre: ";
    getline(cin, nombre);

    cout << "Ingrese su edad: ";
    cin >> edad;

    cout << "Ingrese su estatura en metros: ";
    cin >> estatura;

    cout << "\n--- FICHA PERSONAL ---\n";
    cout << "Nombre: " << nombre << endl;
    cout << "Edad: " << edad << " anios" << endl;
    cout << "Estatura: " << estatura << " m" << endl;

    cout << "\nPresione ENTER para salir...";
    cin.ignore();
    cin.get();
    return 0;
}

