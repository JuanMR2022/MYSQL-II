-- Crear la vista de propiedades
CREATE VIEW VistaPropiedades AS
SELECT PropiedadID, Tipo, Direccion, Ciudad, Estado, CodigoPostal, Precio, Habitaciones, Banos, Area
FROM Propiedades;
