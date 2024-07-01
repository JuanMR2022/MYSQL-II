DROP DATABASE IF EXISTS inmobiliaria_jm;
CREATE DATABASE 
	IF NOT EXISTS inmobiliaria_JM;
    
USE inmobiliaria_JM;

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

--Tabla de Lotes

CREATE TABLE Lotes (
    id_lote INT PRIMARY KEY AUTO_INCREMENT,
    nombre_lote VARCHAR(100) NOT NULL,
    fecha_creacion DATE NOT NULL,
    estado VARCHAR(50) NOT NULL,
    cantidad INT NOT NULL,
    descripcion TEXT
);

--


