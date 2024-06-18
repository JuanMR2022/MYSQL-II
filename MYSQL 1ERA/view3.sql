-- Crear la vista de clientes interesados
CREATE VIEW VistaClientesInteresados AS
SELECT ClienteID, Nombre, Apellido, Email, Telefono
FROM ClientesInteresados;
