CREATE DATABASE RestauranteMart;

USE RestauranteMart;

CREATE SCHEMA DIM;

CREATE TABLE DIM.Cliente(
	clientekey INT PRIMARY KEY IDENTITY(1,1),
	nombres NVARCHAR(300) NOT NULL
);

CREATE TABLE DIM.Mesa(
	mesakey INT PRIMARY KEY IDENTITY(1,1),
	ubicacion NVARCHAR(50) NOT NULL,
	capacidad INT NOT NULL, 
	estado NVARCHAR(20) NOT NULL
);


CREATE TABLE DIM.Empleado(
	empleadokey INT PRIMARY KEY IDENTITY(1,1),
	nombre NVARCHAR(200) NOT NULL,
	fechaContratacion DATE NOT NULL 
);


CREATE TABLE DIM.Producto(
	productokey INT PRIMARY KEY IDENTITY(1,1),
	categoria NVARCHAR(50) NOT NULL, 
	tipo BIT NOT NULL, 
	precio DECIMAL (10,2) NOT NULL,
	nombreProducto NVARCHAR(200) NOT NULL
);

CREATE TABLE DIM.Tiempo(
	tiempokey INT PRIMARY KEY IDENTITY(1,1),
	fecha DATETIME NOT NULL, 
	anio INT NOT NULL, 
	trimestre INT NOT NULL, 
	nombreTrimestre CHAR(2) NOT NULL, --1Q,2Q,3Q,4Q
	mes INT NOT NULL, 
	nombreMes NVARCHAR(50) NOT NULL, --VERIFICAR EL TAMAÑO DEL STRING.
	semanaAnio INT NOT NULL, 
	diaAnio INT NOT NULL,
	diaMes INT NOT NULL,
	diaSemana INT NOT NULL,
	nombreDia NVARCHAR(50) --VERIFICAR EL TAMAÑO DEL STRING.
);

CREATE TABLE FactVentas(
	ventakey INT PRIMARY KEY IDENTITY(1,1),
	clientekey INT NOT NULL,
	mesakey INT NOT NULL,
	empleadokey INT NOT NULL,
	productokey INT NOT NULL,
	tiempokey INT NOT NULL,
	ingresosVenta MONEY NOT NULL,
	numeroVentas INT NOT NULL,
	ventaCompletas INT NOT NULL,
	costo MONEY NOT NULL,
	margen MONEY NOT NULL,
	CONSTRAINT clienteFK FOREIGN KEY (clientekey) REFERENCES DIM.Cliente(clientekey),
	CONSTRAINT mesaFK FOREIGN KEY (mesakey) REFERENCES DIM.Mesa(mesakey),
	CONSTRAINT empleadoFK FOREIGN KEY (empleadokey) REFERENCES DIM.Empleado(empleadokey),
	CONSTRAINT productoFK FOREIGN KEY (productokey) REFERENCES DIM.Producto(productokey),
	CONSTRAINT tiempoFK FOREIGN KEY (tiempokey) REFERENCES DIM.Tiempo(tiempokey)
);



