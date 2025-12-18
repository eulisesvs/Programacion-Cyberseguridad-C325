#include <iostream>
using namespace std;

int main() {
    int num1, num2;

    cout << "Ingrese dos numeros enteros\n";
    cout << "---------------------------\n";

    cout << "Ingrese el primer numero: ";
    cin >> num1;

    cout << "Ingrese el segundo numero: ";
    cin >> num2;

    cout << "\nResultados:\n";
    cout << "Suma: " << num1 + num2 << endl;
    cout << "Resta: " << num1 - num2 << endl;
    cout << "Multiplicacion: " << num1 * num2 << endl;

    if (num2 != 0)
        cout << "Division: " << (float)num1 / num2 << endl;
    else
        cout << "Division: No se puede dividir entre 0" << endl;

    cout << "\nPresione ENTER para salir...";
    cin.ignore();
    cin.get();
    return 0;
}
