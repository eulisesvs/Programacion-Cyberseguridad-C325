CREATE DATABASE IF NOT EXISTS gestion_academica;
USE gestion_academica;

CREATE TABLE Departamento (
    DepartamentoID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL
);

CREATE TABLE Estudiante (
    EstudianteID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    FechaNacimiento DATE,
    DepartamentoID INT,
    FOREIGN KEY (DepartamentoID) REFERENCES Departamento(DepartamentoID)
);

CREATE TABLE Profesor (
    ProfesorID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    DepartamentoID INT,
    FOREIGN KEY (DepartamentoID) REFERENCES Departamento(DepartamentoID)
);

CREATE TABLE Curso (
    CursoID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100),
    ProfesorID INT,
    FOREIGN KEY (ProfesorID) REFERENCES Profesor(ProfesorID)
);

CREATE TABLE Clase (
    ClaseID INT AUTO_INCREMENT PRIMARY KEY,
    CursoID INT,
    Horario VARCHAR(50),
    FOREIGN KEY (CursoID) REFERENCES Curso(CursoID)
);

CREATE TABLE Inscripcion (
    InscripcionID INT AUTO_INCREMENT PRIMARY KEY,
    EstudianteID INT,
    ClaseID INT,
    FechaInscripcion DATE,
    FOREIGN KEY (EstudianteID) REFERENCES Estudiante(EstudianteID),
    FOREIGN KEY (ClaseID) REFERENCES Clase(ClaseID),
    UNIQUE (EstudianteID, ClaseID)
);

CREATE TABLE Calificacion (
    CalificacionID INT AUTO_INCREMENT PRIMARY KEY,
    InscripcionID INT,
    Nota DECIMAL(5,2) CHECK (Nota BETWEEN 0 AND 100),
    FOREIGN KEY (InscripcionID) REFERENCES Inscripcion(InscripcionID)
);
