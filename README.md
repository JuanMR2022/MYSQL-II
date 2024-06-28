# MYSQL-II

```
+------------------------+      +-------------------+      +------------------------+
|     Propiedades        |      |   Agentes         |      |   ClientesInteresados   |
|------------------------|      |-------------------|      |------------------------|
| - PropiedadID (PK)     |      | - AgenteID (PK)   |      | - ClienteID (PK)        |
| - Tipo                 |      | - Nombre          |      | - Nombre                |
| - Direccion            |      | - Apellido        |      | - Apellido              |
| - Ciudad               |      | - Email           |      | - Email                 |
| - Estado               |      | - Telefono        |      | - Telefono              |
| - CodigoPostal         |      +-------------------+      +------------------------+
| - Precio               |
| - Habitaciones         |
| - Banos                |
| - Area                 |
+------------------------+
           |
           |
           |
           |  +-----------------------+
           +--|       Visitas         |
              |-----------------------|
              | - VisitaID (PK)       |
              | - ClienteID (FK)      |
              | - PropiedadID (FK)    |
              | - FechaVisita         |
              | - Comentario          |
              +-----------------------+
                       |
                       |
                       |
                       |  +-----------------------+
                       +--|   ContratosVenta      |
                          |-----------------------|
                          | - ContratoID (PK)     |
                          | - PropiedadID (FK)    |
                          | - AgenteID (FK)       |
                          | - ClienteID (FK)      |
                          | - FechaContrato       |
                          | - PrecioVenta         |
                          | - Comision            |
                          +-----------------------+
```
