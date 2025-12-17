CREATE DATABASE ventas;
USE ventas;

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(20)
);

CREATE TABLE productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10,2) NOT NULL
);

CREATE TABLE facturas (
    id_factura INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
    fecha DATE NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

INSERT INTO clientes (nombre, telefono) VALUES
('Juan Pérez', '809-555-1234'),
('Ana Gómez', '829-555-9876'),
('Carlos Martínez', '849-555-4321'),
('María Rodríguez', '809-555-1122'),
('José Ramírez', '829-555-3344'),
('Pedro Santana', '849-555-7788'),
('Luisa Fernández', '809-555-9900'),
('Andrés Polanco', '829-555-6611');

INSERT INTO productos (nombre, precio) VALUES
('Laptop HP 15"', 38000.00),
('Laptop Dell Core i5', 52000.00),
('Mouse inalámbrico', 650.00),
('Teclado USB', 1200.00),
('Monitor 24"', 13500.00),
('Impresora HP DeskJet', 9,500.00),
('Memoria USB 64GB', 900.00),
('Disco duro externo 1TB', 4200.00),
('Router WiFi TP-Link', 2800.00),
('Audífonos inalámbricos', 1800.00);

INSERT INTO facturas (id_cliente, id_producto, cantidad, fecha) VALUES
(1, 1, 1, '2025-01-10'),
(1, 3, 2, '2025-01-10'),
(2, 5, 1, '2025-01-11'),
(3, 2, 1, '2025-01-11'),
(4, 4, 1, '2025-01-12'),
(5, 6, 1, '2025-01-12'),
(6, 9, 1, '2025-01-13'),
(7, 10, 2, '2025-01-14'),
(8, 7, 3, '2025-01-15');

SELECT f.id_factura,
       c.nombre AS cliente,
       p.nombre AS producto,
       f.cantidad,
       p.precio,
       (f.cantidad * p.precio) AS total
FROM facturas f
JOIN clientes c ON f.id_cliente = c.id_cliente
JOIN productos p ON f.id_producto = p.id_producto;
