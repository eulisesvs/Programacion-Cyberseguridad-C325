#include <iostream>
#include <vector>
#include <string>
#include <regex>

using namespace std;

// ==============================
// Función: Verificar fuerza de la contraseña
// ==============================
string VerificarContrasena(const string& passw) {
    int puntos = 0;

    if (passw.length() >= 8)
        puntos++;

    if (regex_search(passw, regex("[A-Z]")))
        puntos++;

    if (regex_search(passw, regex("[a-z]")))
        puntos++;

    if (regex_search(passw, regex("[0-9]")))
        puntos++;

    if (regex_search(passw, regex("[^A-Za-z0-9]")))
        puntos++;

    if (puntos <= 2)
        return "Debil";
    else if (puntos <= 4)
        return "Media";
    else
        return "Fuerte";
}

// ==============================
// Función: Registrar usuarios
// ==============================
void RegistrarUsuario(vector<string>& usuarios,
                      vector<string>& contrasenas,
                      vector<string>& fuerzas) {

    int cantidad;
    cout << "¿Cuantos usuarios desea registrar?: ";
    cin >> cantidad;
    cin.ignore();

    for (int i = 0; i < cantidad; i++) {
        string nombre, passw;

        cout << "\n--- Registro del usuario " << i + 1 << " ---\n";
        cout << "Ingrese el nombre del usuario: ";
        getline(cin, nombre);

        cout << "\nNota: La contrasena debe tener al menos 8 caracteres,\n";
        cout << "incluir mayusculas, minusculas, numeros y simbolos.\n";

        cout << "Ingrese la contrasena: ";
        getline(cin, passw);

        string nivel = VerificarContrasena(passw);

        cout << "Nivel de seguridad: " << nivel << endl;

        usuarios.push_back(nombre);
        contrasenas.push_back(passw);
        fuerzas.push_back(nivel);
    }
}

// ==============================
// Función: Mostrar reporte
// ==============================
void MostrarReporte(const vector<string>& usuarios,
                    const vector<string>& fuerzas) {

    if (usuarios.empty()) {
        cout << "\nNo hay usuarios registrados aun.\n";
        return;
    }

    cout << "\n====== REPORTE DE CONTRASENAS ======\n";
    for (size_t i = 0; i < usuarios.size(); i++) {
        cout << "Usuario: " << usuarios[i] << endl;
        cout << "Contrasena: ********\n";
        cout << "Nivel de seguridad: " << fuerzas[i] << endl;

        if (fuerzas[i] == "Debil") {
            cout << "!! Aviso: Su contrasena es vulnerable, se recomienda fortalecerla.\n";
        }
        cout << "------------------------------------\n";
    }
}

// ==============================
// Programa principal (Menú)
// ==============================
int main() {
    vector<string> usuarios;
    vector<string> contrasenas;
    vector<string> fuerzas;

    int opcion = 0;

    do {
        cout << "\n====== GESTOR DE CONTRASENAS SEGURAS ======\n";
        cout << "1. Registrar usuario(s)\n";
        cout << "2. Mostrar reporte de contrasenas\n";
        cout << "3. Salir\n";
        cout << "Seleccione una opcion: ";
        cin >> opcion;
        cin.ignore();

        switch (opcion) {
            case 1:
                RegistrarUsuario(usuarios, contrasenas, fuerzas);
                break;
            case 2:
                MostrarReporte(usuarios, fuerzas);
                break;
            case 3:
                cout << "Saliendo del programa...\n";
                break;
            default:
                cout << "Opcion invalida.\n";
        }

    } while (opcion != 3);

    cout << "\nPresione ENTER para salir...";
    cin.get();
    return 0;
}

