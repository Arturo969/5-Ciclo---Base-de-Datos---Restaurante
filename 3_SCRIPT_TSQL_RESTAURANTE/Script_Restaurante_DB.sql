-- Creación de la base de datos si no existe
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'RestauranteDBase')
BEGIN
    CREATE DATABASE RestauranteDBase;
END
GO

USE RestauranteDBase;
GO

-- Creación de esquemas si no existen
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'GENERAL')
BEGIN
    EXEC('CREATE SCHEMA GENERAL');
END
GO

IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'CLIENTE')
BEGIN
    EXEC('CREATE SCHEMA CLIENTE');
END
GO

IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'PERSONAL')
BEGIN
    EXEC('CREATE SCHEMA PERSONAL');
END
GO

IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'TRANSACCION')
BEGIN
    EXEC('CREATE SCHEMA TRANSACCION');
END
GO

CREATE SCHEMA INVENTARIO

---
-- Esquema para datos generales y de la empresa
---
-- Tabla GENERAL.Categoria
CREATE TABLE GENERAL.Categoria (
    Id_Categoria INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(50) NOT NULL UNIQUE,
    Descripcion NVARCHAR(MAX)
);

CREATE TABLE INVENTARIO.ItemCategoria (
	Id_ItemCategoria INT PRIMARY KEY IDENTITY(1,1),
	Categoria NVARCHAR(255) NOT NULL, --CONSUMIBLES, FRUTAS, CARNE, DIARIO, VEGETALES, REPOSTERIA, INSUMOS BASICOS, 
	Descripcion NVARCHAR(MAX),
)

-- Tabla GENERAL.Ingrediente
CREATE TABLE INVENTARIO.Inventario (
    Id_Item INT PRIMARY KEY IDENTITY(1,1),
    ItemNombre NVARCHAR(100) NOT NULL UNIQUE,
	id_ItemCategoria INT NOT NULL,
	CONSTRAINT fk_inventarioCategoria FOREIGN KEY (id_itemCategoria) REFERENCES INVENTARIO.ItemCategoria(Id_ItemCategoria),
    UnidadMedida NVARCHAR(20),
    Stock DECIMAL(10,2),
	CostoPorUnidad DECIMAL(10,2) NOT NULL, -- Costo unitario del ingrediente
    FechaDeExpiracion DATE, -- Fecha de caducidad del ingrediente
    NivelReorden DECIMAL(10,2), -- Cantidad mínima para activar un pedido de reorden
    CantidadReorden DECIMAL(10,2), -- Cantidad estándar a pedir al reordenar
    NecesitaReorden BIT DEFAULT 0 -- Indica si el stock actual está por debajo del nivel de reorden
);

CREATE TABLE GENERAL.Producto (
    Id_Producto INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100) NOT NULL,
    Precio DECIMAL(10,2) NOT NULL,
    Descripcion NVARCHAR(MAX),
    -- La columna Foto almacena la RUTA o URL de la imagen, no la imagen en sí.
    Foto NVARCHAR(MAX), 
    Id_Categoria INT NOT NULL,
    Stock INT, -- Para control de stock del producto final
    EsPreparado BIT DEFAULT 1, -- Indica si el producto se prepara en cocina (BIT es el tipo de dato para boolean en SQL Server)
    CONSTRAINT FK_Producto_Categoria FOREIGN KEY (Id_Categoria) REFERENCES GENERAL.Categoria(Id_Categoria)
);
use RestauranteDBase
DROP TABLE INVENTARIO.Inventario
DROP TABLE GENERAL.ProductoIngrediente
-- Tabla GENERAL.ProductoIngrediente
CREATE TABLE GENERAL.ProductoIngrediente (
    Id_Producto INT NOT NULL,
    Id_Item INT NOT NULL,
    Cantidad DECIMAL(10,2) NOT NULL, -- Cantidad del ingrediente que se necesita para preparar el producto
    PRIMARY KEY (Id_Producto, Id_Item),
    CONSTRAINT FK_ProductoIngrediente_Producto FOREIGN KEY (Id_Producto) REFERENCES GENERAL.Producto(Id_Producto),
    CONSTRAINT FK_ProductoIngrediente_Inventario FOREIGN KEY (Id_Item) REFERENCES INVENTARIO.inventario(Id_Item)
);


-- Tabla GENERAL.Mesa
CREATE TABLE GENERAL.Mesa (
    Id_Mesa INT PRIMARY KEY IDENTITY(1,1),
    Capacidad INT,
    Ubicacion NVARCHAR(50), -- Añadido para especificar zona del restaurante
    Estado NVARCHAR(20) DEFAULT 'Disponible' -- Disponible, Ocupada, Reservada, No Disponible
);

---
-- Esquema para la gestión de clientes y reservas
---
-- Tabla CLIENTE.Cliente
CREATE TABLE CLIENTE.Cliente (
    Id_Cliente INT PRIMARY KEY IDENTITY(1,1),
    Nombres NVARCHAR(100) NOT NULL, -- Ajustado a un tamaño más específico
    ApellidoPaterno NVARCHAR(100) NOT NULL, -- Ajustado a un tamaño más específico
    ApellidoMaterno NVARCHAR(100) NOT NULL, -- Ajustado a un tamaño más específico
    DNI CHAR(8) UNIQUE NOT NULL,
    Telefono NVARCHAR(15),
    CorreoElectronico NVARCHAR(100) UNIQUE,
    Direccion NVARCHAR(MAX),
    FechaNacimiento DATE
);

-- Tabla CLIENTE.Reserva
CREATE TABLE CLIENTE.Reserva (
    Id_Reserva INT PRIMARY KEY IDENTITY(1,1),
    Fecha DATE NOT NULL,
    Hora TIME(0) NOT NULL, -- TIME(0) para precisión de segundos
    Id_Mesa INT,
    Id_Cliente INT,
    NumeroPersonas INT NOT NULL,
    Estado NVARCHAR(20), -- Reservada, Confirmada, Cancelada, Completada
    Comentarios NVARCHAR(MAX),
    CONSTRAINT FK_Reserva_Mesa FOREIGN KEY (Id_Mesa) REFERENCES GENERAL.Mesa(Id_Mesa),
    CONSTRAINT FK_Reserva_Cliente FOREIGN KEY (Id_Cliente) REFERENCES CLIENTE.Cliente(Id_Cliente)
);

---
-- Esquema para la gestión de empleados
---
-- Tabla PERSONAL.Empleado
CREATE TABLE PERSONAL.Empleado (
    Id_Empleado INT PRIMARY KEY IDENTITY(1,1),
    NombreCompleto NVARCHAR(200) NOT NULL, -- Ajustado a un tamaño más específico
    DNI CHAR(8) UNIQUE NOT NULL,
    FechaNacimiento DATE,
    Direccion NVARCHAR(MAX),
    Telefono NVARCHAR(15),
    CorreoElectronico NVARCHAR(100) UNIQUE,
    Rol NVARCHAR(50) NOT NULL, -- Mesero, Cajero, Cocinero, Administrador (ajustado a un tamaño más específico)
    Turno NVARCHAR(50) NOT NULL, -- Ajustado a un tamaño más específico
    FechaContratacion DATE,
    Salario DECIMAL(10,2),
    Estado NVARCHAR(20) DEFAULT 'Activo', -- Activo, Inactivo
    Usuario NVARCHAR(50) UNIQUE NOT NULL, -- Ajustado a un tamaño más específico
    Contrasena NVARCHAR(255) NOT NULL -- Un tamaño más generoso para contraseñas hasheadas
);

---
-- Esquema para la gestión de pedidos y pagos
---
-- Tabla TRANSACCION.Pedido
CREATE TABLE TRANSACCION.Pedido (
    Id_Pedido INT PRIMARY KEY IDENTITY(1,1),
    Fecha DATE NOT NULL,
    Hora TIME(0) NOT NULL, -- TIME(0) para precisión de segundos
    Estado NVARCHAR(20) NOT NULL, -- Recibido, Preparando, Listo, Entregado, Cancelado
    Id_Mesa INT,
    Id_Cliente INT,
    Id_Empleado INT, -- Mesero o cajero
    TipoPedido NVARCHAR(20), -- Añadido para Delivery, Recojo, En Mesa
    DireccionEntrega NVARCHAR(MAX), -- Para Delivery
    Comentarios NVARCHAR(MAX),  -- Para instrucciones especiales
    CONSTRAINT FK_Pedido_Mesa FOREIGN KEY (Id_Mesa) REFERENCES GENERAL.Mesa(Id_Mesa),
    CONSTRAINT FK_Pedido_Cliente FOREIGN KEY (Id_Cliente) REFERENCES CLIENTE.Cliente(Id_Cliente),
    CONSTRAINT FK_Pedido_Empleado FOREIGN KEY (Id_Empleado) REFERENCES PERSONAL.Empleado(Id_Empleado)
);

-- Tabla TRANSACCION.DetallePedido
CREATE TABLE TRANSACCION.DetallePedido (
    Id_Detalle INT PRIMARY KEY IDENTITY(1,1),
    Id_Pedido INT NOT NULL,
    Id_Producto INT NOT NULL,
    Cantidad INT NOT NULL,
    PrecioUnitario DECIMAL(10,2) NOT NULL,    
    Nota NVARCHAR(MAX), -- Comentarios o modificaciones del cliente
    CONSTRAINT FK_DetallePedido_Pedido FOREIGN KEY (Id_Pedido) REFERENCES TRANSACCION.Pedido(Id_Pedido),
    CONSTRAINT FK_DetallePedido_Producto FOREIGN KEY (Id_Producto) REFERENCES GENERAL.Producto(Id_Producto)
);