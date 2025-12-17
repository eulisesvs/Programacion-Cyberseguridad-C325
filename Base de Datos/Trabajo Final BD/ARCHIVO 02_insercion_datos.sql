USE gestion_academica;

INSERT INTO Departamento (Nombre) VALUES
('Ingeniería'),
('Ciencias'),
('Administración'),
('Educación'),
('Artes');

INSERT INTO Estudiante (Nombre, Apellido, FechaNacimiento, DepartamentoID) VALUES
('Ana', 'Martínez', '2001-03-15', 1),
('Luis', 'Gómez', '2000-06-20', 2),
('Carlos', 'Pérez', '1999-11-10', 1),
('María', 'López', '2001-01-25', 3),
('José', 'Ramírez', '1998-09-30', 2),
('Laura', 'Fernández', '2000-12-12', 1),
('Pedro', 'Torres', '1999-05-18', 4),
('Sofía', 'Luna', '2001-07-07', 5),
('Miguel', 'Cruz', '2000-02-14', 3),
('Elena', 'Rojas', '1999-08-21', 2),
('Andrés', 'Molina', '2001-11-03', 1),
('Valentina', 'Ortiz', '2000-04-16', 4),
('Daniel', 'Reyes', '1998-06-09', 5),
('Paula', 'Castro', '2001-10-30', 3),
('Jorge', 'Navarro', '1999-01-19', 2),
('Camila', 'Suárez', '2000-03-27', 1),
('Ricardo', 'Vargas', '1998-12-05', 4),
('Natalia', 'Herrera', '2001-09-11', 5),
('Fernando', 'Pacheco', '1999-07-14', 3),
('Lucía', 'Méndez', '2000-05-06', 2),
('Diego', 'Salas', '1998-02-01', 1),
('Mónica', 'Peña', '2001-04-18', 4),
('Hugo', 'Delgado', '1999-08-26', 5),
('Patricia', 'Ibarra', '2000-11-09', 3),
('Esteban', 'Núñez', '1998-06-03', 2);

INSERT INTO Profesor (Nombre, Apellido, DepartamentoID) VALUES
('Juan', 'Rodríguez', 1),
('María', 'López', 2),
('Carlos', 'Fernández', 3),
('Laura', 'Torres', 4),
('Pedro', 'Ramírez', 5);

INSERT INTO Curso (Nombre, ProfesorID) VALUES
('Base de Datos', 1),
('Matemática', 2),
('Contabilidad', 3),
('Pedagogía', 4),
('Diseño Gráfico', 5);

INSERT INTO Clase (CursoID, Horario) VALUES
(1, 'Lunes 8-10'),
(1, 'Miércoles 10-12'),
(2, 'Martes 8-10'),
(2, 'Jueves 10-12'),
(3, 'Viernes 8-10'),
(4, 'Lunes 2-4'),
(5, 'Martes 4-6');

INSERT INTO Inscripcion (EstudianteID, ClaseID, FechaInscripcion) VALUES
(1, 1, '2024-01-10'),
(2, 2, '2024-01-10'),
(3, 3, '2024-01-11'),
(4, 4, '2024-01-11'),
(5, 5, '2024-01-12'),
(6, 6, '2024-01-12'),
(7, 7, '2024-01-13'),
(8, 1, '2024-01-13'),
(9, 2, '2024-01-14'),
(10, 3, '2024-01-14'),
(11, 4, '2024-01-15'),
(12, 5, '2024-01-15'),
(13, 6, '2024-01-16'),
(14, 7, '2024-01-16'),
(15, 1, '2024-01-17'),
(16, 2, '2024-01-17'),
(17, 3, '2024-01-18'),
(18, 4, '2024-01-18'),
(19, 5, '2024-01-19'),
(20, 6, '2024-01-19');

INSERT INTO Calificacion (InscripcionID, Nota) VALUES
(1, 95.50),
(2, 88.00),
(3, 92.30),
(4, 76.40),
(5, 89.10),
(6, 93.00),
(7, 85.20),
(8, 97.80),
(9, 90.00),
(10, 84.60),
(11, 92.90),
(12, 87.30),
(13, 96.40),
(14, 81.50),
(15, 94.20),
(16, 88.70),
(17, 91.80),
(18, 79.60),
(19, 90.90),
(20, 86.40);
