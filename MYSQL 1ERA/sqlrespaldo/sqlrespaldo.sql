-- Crear la base de datos de respaldo
DROP DATABASE IF EXISTS inmobiliaria_JM_respaldo;
CREATE DATABASE inmobiliaria_JM_respaldo;
USE inmobiliaria_JM_respaldo;

-- Crear las tablas en la base de datos de respaldo

-- Tabla de propiedades
CREATE TABLE Propiedades (
    PropiedadID INT PRIMARY KEY AUTO_INCREMENT,
    Tipo VARCHAR(50),
    Direccion VARCHAR(100),
    Ciudad VARCHAR(50),
    Estado VARCHAR(50),
    CodigoPostal VARCHAR(20),
    Precio DECIMAL(10, 2),
    Habitaciones INT,
    Banos INT,
    Area DECIMAL(10, 2)
);

-- Tabla de agentes inmobiliarios
CREATE TABLE Agentes (
    AgenteID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Email VARCHAR(100),
    Telefono VARCHAR(20)
);

-- Tabla de clientes interesados
CREATE TABLE ClientesInteresados (
    ClienteID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Email VARCHAR(100),
    Telefono VARCHAR(20)
);

-- Tabla de visitas
CREATE TABLE Visitas (
    VisitaID INT PRIMARY KEY AUTO_INCREMENT,
    ClienteID INT,
    PropiedadID INT,
    FechaVisita DATE,
    Comentario TEXT,
    FOREIGN KEY (ClienteID) REFERENCES ClientesInteresados(ClienteID),
    FOREIGN KEY (PropiedadID) REFERENCES Propiedades(PropiedadID)
);

-- Tabla de contratos de venta
CREATE TABLE ContratosVenta (
    ContratoID INT PRIMARY KEY AUTO_INCREMENT,
    PropiedadID INT,
    AgenteID INT,
    ClienteID INT,
    FechaContrato DATE,
    PrecioVenta DECIMAL(10, 2),
    Comision DECIMAL(5, 2),
    FOREIGN KEY (PropiedadID) REFERENCES Propiedades(PropiedadID),
    FOREIGN KEY (AgenteID) REFERENCES Agentes(AgenteID),
    FOREIGN KEY (ClienteID) REFERENCES ClientesInteresados(ClienteID)
);

-- Tabla de alquileres
CREATE TABLE Alquileres (
    AlquilerID INT PRIMARY KEY AUTO_INCREMENT,
    PropiedadID INT,
    Tipo VARCHAR(50),
    Direccion VARCHAR(100),
    Ciudad VARCHAR(50),
    Estado VARCHAR(50),
    CodigoPostal VARCHAR(20),
    PrecioMensual DECIMAL(10, 2),
    Habitaciones INT,
    Banos INT,
    Area DECIMAL(10, 2),
    FOREIGN KEY (PropiedadID) REFERENCES Propiedades(PropiedadID)
);

-- Tabla de construcción en pozo
CREATE TABLE ConstruccionPozo (
    ConstruccionID INT PRIMARY KEY AUTO_INCREMENT,
    TipoProyecto VARCHAR(50),
    Direccion VARCHAR(100),
    Ciudad VARCHAR(50),
    Estado VARCHAR(50),
    CodigoPostal VARCHAR(20),
    FechaInicio DATE,
    FechaEntrega DATE,
    PrecioInicial DECIMAL(10, 2),
    AreaProyecto DECIMAL(10, 2)
);

-- Tabla de oficinas
CREATE TABLE Oficinas (
    OficinaID INT PRIMARY KEY AUTO_INCREMENT,
    NombreEdificio VARCHAR(100),
    Direccion VARCHAR(100),
    Ciudad VARCHAR(50),
    Estado VARCHAR(50),
    CodigoPostal VARCHAR(20),
    PrecioAlquilerMensual DECIMAL(10, 2),
    Area DECIMAL(10, 2)
);

-- Tabla de locales comerciales
CREATE TABLE LocalesComerciales (
    LocalID INT PRIMARY KEY AUTO_INCREMENT,
    NombreLocal VARCHAR(100),
    Direccion VARCHAR(100),
    Ciudad VARCHAR(50),
    Estado VARCHAR(50),
    CodigoPostal VARCHAR(20),
    PrecioAlquilerMensual DECIMAL(10, 2),
    Area DECIMAL(10, 2)
);

-- Tabla de lotes
CREATE TABLE Lotes (
    id_lote INT PRIMARY KEY AUTO_INCREMENT,
    nombre_lote VARCHAR(100) NOT NULL,
    fecha_creacion DATE NOT NULL,
    estado VARCHAR(50) NOT NULL,
    cantidad INT NOT NULL,
    descripcion TEXT
);

-- Crear la tabla de usuarios
CREATE TABLE Usuarios (
    UsuarioID INT PRIMARY KEY AUTO_INCREMENT,
    NombreUsuario VARCHAR(50) UNIQUE NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Contrasena VARCHAR(255) NOT NULL, -- Asegúrate de usar hash para contraseñas en la práctica
    Rol ENUM('Admin', 'Agente', 'Cliente', 'Visitante') NOT NULL,
    FechaCreacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insertar datos en la base de datos de respaldo desde la base de datos principal
-- (Asegúrate de que la base de datos principal esté disponible y que se ejecuten las siguientes consultas en la base de datos principal)

-- Cambiar a la base de datos principal
USE inmobiliaria_JM;

-- Insertar datos en la tabla de propiedades
INSERT INTO inmobiliaria_JM_respaldo.Propiedades (Tipo, Direccion, Ciudad, Estado, CodigoPostal, Precio, Habitaciones, Banos, Area)
SELECT Tipo, Direccion, Ciudad, Estado, CodigoPostal, Precio, Habitaciones, Banos, Area
FROM inmobiliaria_JM.Propiedades;

-- Insertar datos en la tabla de agentes
INSERT INTO inmobiliaria_JM_respaldo.Agentes (Nombre, Apellido, Email, Telefono)
SELECT Nombre, Apellido, Email, Telefono
FROM inmobiliaria_JM.Agentes;

-- Insertar datos en la tabla de clientes interesados
INSERT INTO inmobiliaria_JM_respaldo.ClientesInteresados (Nombre, Apellido, Email, Telefono)
SELECT Nombre, Apellido, Email, Telefono
FROM inmobiliaria_JM.ClientesInteresados;

-- Insertar datos en la tabla de visitas
INSERT INTO inmobiliaria_JM_respaldo.Visitas (ClienteID, PropiedadID, FechaVisita, Comentario)
SELECT ClienteID, PropiedadID, FechaVisita, Comentario
FROM inmobiliaria_JM.Visitas;

-- Insertar datos en la tabla de contratos de venta
INSERT INTO inmobiliaria_JM_respaldo.ContratosVenta (PropiedadID, AgenteID, ClienteID, FechaContrato, PrecioVenta, Comision)
SELECT PropiedadID, AgenteID, ClienteID, FechaContrato, PrecioVenta, Comision
FROM inmobiliaria_JM.ContratosVenta;

-- Insertar datos en la tabla de alquileres
INSERT INTO inmobiliaria_JM_respaldo.Alquileres (PropiedadID, Tipo, Direccion, Ciudad, Estado, CodigoPostal, PrecioMensual, Habitaciones, Banos, Area)
SELECT PropiedadID, Tipo, Direccion, Ciudad, Estado, CodigoPostal, PrecioMensual, Habitaciones, Banos, Area
FROM inmobiliaria_JM.Alquileres;

-- Insertar datos en la tabla de construcción en pozo
INSERT INTO inmobiliaria_JM_respaldo.ConstruccionPozo (TipoProyecto, Direccion, Ciudad, Estado, CodigoPostal, FechaInicio, FechaEntrega, PrecioInicial, AreaProyecto)
SELECT TipoProyecto, Direccion, Ciudad, Estado, CodigoPostal, FechaInicio, FechaEntrega, PrecioInicial, AreaProyecto
FROM inmobiliaria_JM.ConstruccionPozo;

-- Insertar datos en la tabla de oficinas
INSERT INTO inmobiliaria_JM_respaldo.Oficinas (NombreEdificio, Direccion, Ciudad, Estado, CodigoPostal, PrecioAlquilerMensual, Area)
SELECT NombreEdificio, Direccion, Ciudad, Estado, CodigoPostal, PrecioAlquilerMensual, Area
FROM inmobiliaria_JM.Oficinas;

-- Insertar datos en la tabla de locales comerciales
INSERT INTO inmobiliaria_JM_respaldo.LocalesComerciales (NombreLocal, Direccion, Ciudad, Estado, CodigoPostal, PrecioAlquilerMensual, Area)
SELECT NombreLocal, Direccion, Ciudad, Estado, CodigoPostal, PrecioAlquilerMensual, Area
FROM inmobiliaria_JM.LocalesComerciales;

-- Insertar datos en la tabla de lotes
INSERT INTO inmobiliaria_JM_respaldo.Lotes (nombre_lote, fecha_creacion, estado, cantidad, descripcion)
SELECT nombre_lote, fecha_creacion, estado, cantidad, descripcion
FROM inmobiliaria_JM.Lotes;

-- Insertar datos en la tabla de usuarios
INSERT INTO inmobiliaria_JM_respaldo.Usuarios (NombreUsuario, Email, Contrasena, Rol)
SELECT NombreUsuario, Email, Contrasena, Rol
FROM inmobiliaria_JM.Usuarios;

-- Nota: Asegúrate de ajustar los permisos y contraseñas según sea necesario.
