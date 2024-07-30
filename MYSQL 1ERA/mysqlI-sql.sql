 -- Insertar datos en la tabla Propiedades
INSERT INTO Propiedades (Tipo, Direccion, Ciudad, Estado, CodigoPostal, Precio, Habitaciones, Banos, Area)
VALUES
('Casa', '123 Calle Falsa', 'Springfield', 'IL', '62704', 250000.00, 3, 2, 150.00),
('Departamento', '456 Avenida Principal', 'Shelbyville', 'IL', '62565', 175000.00, 2, 1, 85.00),
('Casa', '789 Camino del Valle', 'Springfield', 'IL', '62705', 350000.00, 4, 3, 200.00);

-- Insertar datos en la tabla Agentes
INSERT INTO Agentes (Nombre, Apellido, Email, Telefono)
VALUES
('Juan', 'Pérez', 'juan.perez@example.com', '555-1234'),
('María', 'Gómez', 'maria.gomez@example.com', '555-5678'),
('Carlos', 'Martínez', 'carlos.martinez@example.com', '555-8765');

-- Insertar datos en la tabla ClientesInteresados
INSERT INTO ClientesInteresados (Nombre, Apellido, Email, Telefono)
VALUES
('Ana', 'Lopez', 'ana.lopez@example.com', '555-4321'),
('Luis', 'Ramírez', 'luis.ramirez@example.com', '555-6789'),
('Marta', 'Sánchez', 'marta.sanchez@example.com', '555-9876');

-- Insertar datos en la tabla Visitas
INSERT INTO Visitas (ClienteID, PropiedadID, FechaVisita, Comentario)
VALUES
(1, 1, '2024-07-01', 'Interesado en la propiedad. Buen estado.'),
(2, 2, '2024-07-03', 'Le gusta la ubicación, pero necesita más habitaciones.'),
(3, 3, '2024-07-10', 'Perfecta para familia grande.');

// Insertar datos en la tabla ContratosVenta
INSERT INTO ContratosVenta (PropiedadID, AgenteID, ClienteID, FechaContrato, PrecioVenta, Comision)
VALUES
(1, 1, 1, '2024-07-05', 250000.00, 5000.00),
(2, 2, 2, '2024-07-07', 175000.00, 3500.00),
(3, 3, 3, '2024-07-15', 350000.00, 7000.00);

-- Insertar datos en la tabla Alquileres
INSERT INTO Alquileres (PropiedadID, Tipo, Direccion, Ciudad, Estado, CodigoPostal, PrecioMensual, Habitaciones, Banos, Area)
VALUES
(1, 'Apartamento', '123 Calle Falsa', 'Springfield', 'IL', '62704', 1500.00, 3, 2, 150.00),
(2, 'Departamento', '456 Avenida Principal', 'Shelbyville', 'IL', '62565', 1200.00, 2, 1, 85.00);

-- Insertar datos en la tabla ConstruccionPozo
INSERT INTO ConstruccionPozo (TipoProyecto, Direccion, Ciudad, Estado, CodigoPostal, FechaInicio, FechaEntrega, PrecioInicial, AreaProyecto)
VALUES
('Residencial', '101 Calle Nueva', 'Springfield', 'IL', '62706', '2024-01-01', '2024-12-31', 500000.00, 300.00),
('Comercial', '202 Avenida Central', 'Shelbyville', 'IL', '62566', '2024-02-01', '2024-11-30', 750000.00, 500.00);

-- Insertar datos en la tabla Oficinas
INSERT INTO Oficinas (NombreEdificio, Direccion, Ciudad, Estado, CodigoPostal, PrecioAlquilerMensual, Area)
VALUES
('Edificio Central', '123 Avenida de la Empresa', 'Springfield', 'IL', '62707', 2500.00, 300.00),
('Oficinas Modernas', '456 Calle Comercial', 'Shelbyville', 'IL', '62567', 2000.00, 250.00);

-- Insertar datos en la tabla LocalesComerciales
INSERT INTO LocalesComerciales (NombreLocal, Direccion, Ciudad, Estado, CodigoPostal, PrecioAlquilerMensual, Area)
VALUES
('Tienda ABC', '789 Calle del Mercado', 'Springfield', 'IL', '62708', 1800.00, 150.00),
('Boutique XYZ', '101 Avenida Principal', 'Shelbyville', 'IL', '62568', 1200.00, 100.00);

-- Insertar datos en la tabla Lotes
INSERT INTO Lotes (nombre_lote, fecha_creacion, estado, cantidad, descripcion)
VALUES
('Lote 1', '2024-06-01', 'Disponible', 10, 'Lote con vista al mar. Ideal para desarrollo residencial.'),
('Lote 2', '2024-06-15', 'Vendido', 5, 'Lote en zona comercial, excelente para tiendas y oficinas.'),
('Lote 3', '2024-07-01', 'Disponible', 8, 'Lote rural, adecuado para proyectos agrícolas.');
