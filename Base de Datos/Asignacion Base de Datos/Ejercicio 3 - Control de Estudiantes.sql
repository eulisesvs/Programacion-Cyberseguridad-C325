CREATE DATABASE colegio;
USE colegio;

CREATE TABLE estudiantes (
    id_estudiante INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    edad INT
);

CREATE TABLE cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    profesor VARCHAR(100)
);

CREATE TABLE matriculas (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_estudiante INT,
    id_curso INT,
    fecha DATE,
    FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante),
    FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);

INSERT INTO estudiantes (nombre, edad) VALUES
('Juan Pérez', 15),
('María Gómez', 16),
('Carlos Rodríguez', 14),
('Ana Martínez', 15),
('Luis Fernández', 17);

INSERT INTO cursos (nombre, profesor) VALUES
('Matemáticas', 'Prof. Ramírez'),
('Lengua Española', 'Prof. Castillo'),
('Ciencias Naturales', 'Prof. Núñez'),
('Historia', 'Prof. Sánchez');

INSERT INTO matriculas (id_estudiante, id_curso, fecha) VALUES
(1, 1, '2025-01-10'),
(1, 2, '2025-01-10'),
(2, 1, '2025-01-11'),
(2, 3, '2025-01-11'),
(3, 2, '2025-01-12'),
(4, 4, '2025-01-12'),
(5, 1, '2025-01-13'),
(5, 3, '2025-01-13');

SELECT e.nombre AS estudiante,
       c.nombre AS curso,
       c.profesor,
       m.fecha
FROM matriculas m
JOIN estudiantes e ON m.id_estudiante = e.id_estudiante
JOIN cursos c ON m.id_curso = c.id_curso;
