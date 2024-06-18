-- Crear la vista de visitas
CREATE VIEW VistaVisitas AS
SELECT VisitaID, ClienteID, PropiedadID, FechaVisita, Comentario
FROM Visitas;
