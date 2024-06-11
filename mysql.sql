CREATE DATABASE 
	IF NOT EXISTS inmobiliaria_db;
    
USE inmobiliaria_db;

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