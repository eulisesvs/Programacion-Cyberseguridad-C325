-- 1. Listar estudiantes
SELECT * FROM Estudiante;

-- 2. Nombres y apellidos
SELECT Nombre, Apellido FROM Estudiante;

-- 3. Estudiantes por departamento
SELECT e.Nombre, e.Apellido, d.Nombre AS Departamento
FROM Estudiante e
JOIN Departamento d ON e.DepartamentoID = d.DepartamentoID;

-- 4. Promedio de calificaciones por estudiante
SELECT e.Nombre, e.Apellido, AVG(c.Nota) AS Promedio
FROM Estudiante e
JOIN Inscripcion i ON e.EstudianteID = i.EstudianteID
JOIN Calificacion c ON i.InscripcionID = c.InscripcionID
GROUP BY e.EstudianteID;

-- 5. Estudiantes con promedio mayor a 90
SELECT e.Nombre, e.Apellido, AVG(c.Nota) AS Promedio
FROM Estudiante e
JOIN Inscripcion i ON e.EstudianteID = i.EstudianteID
JOIN Calificacion c ON i.InscripcionID = c.InscripcionID
GROUP BY e.EstudianteID
HAVING AVG(c.Nota) > 90;

-- 6. Top 3 estudiantes
SELECT e.Nombre, e.Apellido, AVG(c.Nota) AS Promedio
FROM Estudiante e
JOIN Inscripcion i ON e.EstudianteID = i.EstudianteID
JOIN Calificacion c ON i.InscripcionID = c.InscripcionID
GROUP BY e.EstudianteID
ORDER BY Promedio DESC
LIMIT 3;
