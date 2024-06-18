-- Crear la vista de contratos de venta
CREATE VIEW VistaContratosVenta AS
SELECT ContratoID, PropiedadID, AgenteID, ClienteID, FechaContrato, PrecioVenta, Comision
FROM ContratosVenta;
