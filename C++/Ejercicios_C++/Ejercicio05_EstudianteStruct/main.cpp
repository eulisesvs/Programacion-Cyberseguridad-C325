#include <iostream>
using namespace std;

struct Estudiante {
    string nombre;
    int edad;
    float promedio;
};

int main() {
    Estudiante e[3];
    int mejor = 0;

    cout << "REGISTRO DE ESTUDIANTES\n";
    cout << "----------------------\n";

    for (int i = 0; i < 3; i++) {
        cout << "\nEstudiante " << i + 1 << endl;

        cout << "Nombre: ";
        cin >> e[i].nombre;

        cout << "Edad: ";
        cin >> e[i].edad;

        cout << "Promedio: ";
        cin >> e[i].promedio;

        if (e[i].promedio > e[mejor].promedio)
            mejor = i;
    }

    cout << "\nEstudiante con mejor promedio:\n";
    cout << "Nombre: " << e[mejor].nombre << endl;
    cout << "Promedio: " << e[mejor].promedio << endl;

    cout << "\nPresione ENTER para salir...";
    cin.ignore();
    cin.get();
    return 0;
}

