--* CREACIÓN DE LA BASE DE DATOS.
CREATE DATABASE CajabambinoRestaurante
GO

--** USO DE LA BASE DE DATOS
USE CajabambinoRestaurante;
GO

--** CREACIÓN DE ESQUEMAS
CREATE SCHEMA TRANSACCION;
GO
CREATE SCHEMA CLIENTE;
GO
CREATE SCHEMA GENERAL;
GO
CREATE SCHEMA PERSONAL;
GO



--** CREACIÓN DE TABLAS
--*** ESQUEMA GENERAL: Agrupa todas las tablas relacionadas con aspectos generales del restaurante
--**** TABLA CATEGORIA: Almacena la categoría a la que pertenece cada producto ( Ej: Bebidas, Platos, Postres ) 
CREATE TABLE GENERAL.Categoria (
	IdCategoria INT PRIMARY KEY IDENTITY (1,1),
	NombreCategoria NVARCHAR(100),
	Descripcion NVARCHAR(MAX)
);
GO
INSERT INTO GENERAL.Categoria (NombreCategoria, Descripcion)
VALUES 
  ('Bebida', 'Productos líquidos como agua, refrescos, jugos, gaseosas, bebidas alcohólicas.'),
  ('Postre', 'Platos, por lo general dulces, servidos al final de una comida.'),
  ('Plato de Entrada', 'Pequeñas porciones que se sirven antes del plato de fondo.'),
  ('Plato de Fondo', 'Componente principal de una comida, usualmente con mayor cantidad.'),
  ('Guarnición', 'Acompañamientos que complementan el plato principal.');
GO

--**** TABLA MESA: Almacena datos relacionados con la numeración de la mesa, su capacidad, la ubicación de la mesa, y su estado (Disponible, Ocupada, Reservada, No Disponible)
CREATE TABLE GENERAL.Mesa ( -- AUN VACIA
	IdMesa INT PRIMARY KEY IDENTITY(1,1),
	Numero INT NOT NULL UNIQUE,
	Capacidad INT,
	Ubicacion NVARCHAR(100),
	Estado VARCHAR(100) DEFAULT 'Disponible'
);
GO
ALTER TABLE GENERAL.Mesa
ADD CONSTRAINT CHK_Mesa_Capacidad_Minima
CHECK (Capacidad >= 1);
GO

--**** TABLA INGREDIENTE: Älmacena datos como el nombre del ingrediente y la unidad en la que se va a medir el stock.
CREATE TABLE GENERAL.Ingrediente(
	IdIngrediente INT PRIMARY KEY IDENTITY(1,1),
	NombreIngrediente NVARCHAR(100) NOT NULL,
	UnidadDeMedida NVARCHAR(20), --kg, g, l (litros), ml (militros), und (unidad), docena, caja, paquete, botella.
	Stock DECIMAL(10,2) CHECK (Stock >= 0)
);
GO

--**** TABLA PRODUCTO: Almacena datos del producto (Plato de fonto, Plato Entrada, Bebida, Postre, Guarnición) 
CREATE TABLE GENERAL.Producto(
	IdProducto INT PRIMARY KEY IDENTITY(1,1),
	IdCategoria INT,
	CONSTRAINT fk_producto_categoria FOREIGN KEY (IdCategoria) REFERENCES GENERAL.Categoria (IdCategoria),
	Nombre NVARCHAR(255) NOT NULL,
	Precio DECIMAL(10,2) NOT NULL CHECK (Precio >= 0),
	Descripcion NVARCHAR(MAX), 
	Foto VARCHAR(19),
	StockProducto INT CHECK (StockProducto >= 0),
	EsPreparado BIT,
);
GO
	
Select * from General.Producto
--TODAVÍA NO EJECUTADO
CREATE TABLE MetodoPago
(
	idMetodoPago INT PRIMARY KEY IDENTITY(1,1),
	NombreMetodo NVARCHAR(100),
	Descripcion NVARCHAR(MAX)
);
GO
