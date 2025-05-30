USE [RestauranteDBasePrueba]
GO
/****** Object:  Schema [CLIENTE]    Script Date: 25/05/2025 21:27:13 ******/
CREATE SCHEMA [CLIENTE]
GO
/****** Object:  Schema [GENERAL]    Script Date: 25/05/2025 21:27:13 ******/
CREATE SCHEMA [GENERAL]
GO
/****** Object:  Schema [INVENTARIO]    Script Date: 25/05/2025 21:27:13 ******/
CREATE SCHEMA [INVENTARIO]
GO
/****** Object:  Schema [PERSONAL]    Script Date: 25/05/2025 21:27:13 ******/
CREATE SCHEMA [PERSONAL]
GO
/****** Object:  Schema [TRANSACCION]    Script Date: 25/05/2025 21:27:13 ******/
CREATE SCHEMA [TRANSACCION]
GO
/****** Object:  Table [CLIENTE].[Cliente]    Script Date: 25/05/2025 21:27:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CLIENTE].[Cliente](
	[Id_Cliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [nvarchar](100) NOT NULL,
	[ApellidoPaterno] [nvarchar](100) NOT NULL,
	[ApellidoMaterno] [nvarchar](100) NOT NULL,
	[DNI] [char](8) NOT NULL,
	[Telefono] [nvarchar](15) NULL,
	[CorreoElectronico] [nvarchar](100) NULL,
	[Direccion] [nvarchar](max) NULL,
	[FechaNacimiento] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[CorreoElectronico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[DNI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [CLIENTE].[Reserva]    Script Date: 25/05/2025 21:27:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CLIENTE].[Reserva](
	[Id_Reserva] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NOT NULL,
	[Hora] [time](0) NOT NULL,
	[Id_Mesa] [int] NULL,
	[Id_Cliente] [int] NULL,
	[NumeroPersonas] [int] NOT NULL,
	[Estado] [nvarchar](20) NULL,
	[Comentarios] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Reserva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [GENERAL].[Categoria]    Script Date: 25/05/2025 21:27:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [GENERAL].[Categoria](
	[Id_Categoria] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [GENERAL].[Mesa]    Script Date: 25/05/2025 21:27:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [GENERAL].[Mesa](
	[Id_Mesa] [int] IDENTITY(1,1) NOT NULL,
	[Capacidad] [int] NULL,
	[Ubicacion] [nvarchar](50) NULL,
	[Estado] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Mesa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [GENERAL].[Producto]    Script Date: 25/05/2025 21:27:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [GENERAL].[Producto](
	[Id_Producto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Precio] [decimal](10, 2) NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Foto] [nvarchar](max) NULL,
	[Id_Categoria] [int] NOT NULL,
	[EsPreparado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [GENERAL].[ProductoIngrediente]    Script Date: 25/05/2025 21:27:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [GENERAL].[ProductoIngrediente](
	[Id_Producto] [int] NOT NULL,
	[Id_Item] [int] NOT NULL,
	[Cantidad] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Producto] ASC,
	[Id_Item] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [INVENTARIO].[Inventario]    Script Date: 25/05/2025 21:27:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [INVENTARIO].[Inventario](
	[Id_Item] [int] IDENTITY(1,1) NOT NULL,
	[ItemNombre] [nvarchar](100) NOT NULL,
	[id_ItemCategoria] [int] NOT NULL,
	[UnidadMedida] [nvarchar](20) NULL,
	[Stock] [decimal](10, 2) NULL,
	[CostoPorUnidad] [decimal](10, 2) NOT NULL,
	[FechaDeExpiracion] [date] NULL,
	[NivelReorden] [decimal](10, 2) NULL,
	[CantidadReorden] [decimal](10, 2) NULL,
	[NecesitaReorden] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Item] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ItemNombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [INVENTARIO].[ItemCategoria]    Script Date: 25/05/2025 21:27:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [INVENTARIO].[ItemCategoria](
	[Id_ItemCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Categoria] [nvarchar](255) NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_ItemCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [PERSONAL].[Empleado]    Script Date: 25/05/2025 21:27:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PERSONAL].[Empleado](
	[Id_Empleado] [int] IDENTITY(1,1) NOT NULL,
	[NombreCompleto] [nvarchar](200) NOT NULL,
	[DNI] [char](8) NOT NULL,
	[FechaNacimiento] [date] NULL,
	[Direccion] [nvarchar](max) NULL,
	[Telefono] [nvarchar](15) NULL,
	[CorreoElectronico] [nvarchar](100) NULL,
	[Rol] [nvarchar](50) NOT NULL,
	[Turno] [nvarchar](50) NOT NULL,
	[FechaContratacion] [date] NULL,
	[Salario] [decimal](10, 2) NULL,
	[Estado] [nvarchar](20) NULL,
	[Usuario] [nvarchar](50) NOT NULL,
	[Contrasena] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[CorreoElectronico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[DNI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [TRANSACCION].[DetallePedido]    Script Date: 25/05/2025 21:27:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TRANSACCION].[DetallePedido](
	[Id_Detalle] [int] IDENTITY(1,1) NOT NULL,
	[Id_Pedido] [int] NOT NULL,
	[Id_Producto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[PrecioUnitario] [decimal](10, 2) NOT NULL,
	[Nota] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Detalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [TRANSACCION].[Pedido]    Script Date: 25/05/2025 21:27:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TRANSACCION].[Pedido](
	[Id_Pedido] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NOT NULL,
	[Hora] [time](0) NOT NULL,
	[Estado] [nvarchar](20) NOT NULL,
	[Id_Mesa] [int] NULL,
	[Id_Cliente] [int] NULL,
	[Id_Empleado] [int] NULL,
	[TipoPedido] [nvarchar](20) NULL,
	[DireccionEntrega] [nvarchar](max) NULL,
	[Comentarios] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Pedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [GENERAL].[Mesa] ADD  DEFAULT ('Disponible') FOR [Estado]
GO
ALTER TABLE [GENERAL].[Producto] ADD  DEFAULT ((1)) FOR [EsPreparado]
GO
ALTER TABLE [INVENTARIO].[Inventario] ADD  DEFAULT ((0)) FOR [NecesitaReorden]
GO
ALTER TABLE [PERSONAL].[Empleado] ADD  DEFAULT ('Activo') FOR [Estado]
GO
ALTER TABLE [CLIENTE].[Reserva]  WITH CHECK ADD  CONSTRAINT [FK_Reserva_Cliente] FOREIGN KEY([Id_Cliente])
REFERENCES [CLIENTE].[Cliente] ([Id_Cliente])
GO
ALTER TABLE [CLIENTE].[Reserva] CHECK CONSTRAINT [FK_Reserva_Cliente]
GO
ALTER TABLE [CLIENTE].[Reserva]  WITH CHECK ADD  CONSTRAINT [FK_Reserva_Mesa] FOREIGN KEY([Id_Mesa])
REFERENCES [GENERAL].[Mesa] ([Id_Mesa])
GO
ALTER TABLE [CLIENTE].[Reserva] CHECK CONSTRAINT [FK_Reserva_Mesa]
GO
ALTER TABLE [GENERAL].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Categoria] FOREIGN KEY([Id_Categoria])
REFERENCES [GENERAL].[Categoria] ([Id_Categoria])
GO
ALTER TABLE [GENERAL].[Producto] CHECK CONSTRAINT [FK_Producto_Categoria]
GO
ALTER TABLE [GENERAL].[ProductoIngrediente]  WITH CHECK ADD  CONSTRAINT [FK_ProductoIngrediente_Inventario] FOREIGN KEY([Id_Item])
REFERENCES [INVENTARIO].[Inventario] ([Id_Item])
GO
ALTER TABLE [GENERAL].[ProductoIngrediente] CHECK CONSTRAINT [FK_ProductoIngrediente_Inventario]
GO
ALTER TABLE [GENERAL].[ProductoIngrediente]  WITH CHECK ADD  CONSTRAINT [FK_ProductoIngrediente_Producto] FOREIGN KEY([Id_Producto])
REFERENCES [GENERAL].[Producto] ([Id_Producto])
GO
ALTER TABLE [GENERAL].[ProductoIngrediente] CHECK CONSTRAINT [FK_ProductoIngrediente_Producto]
GO
ALTER TABLE [INVENTARIO].[Inventario]  WITH CHECK ADD  CONSTRAINT [fk_inventarioCategoria] FOREIGN KEY([id_ItemCategoria])
REFERENCES [INVENTARIO].[ItemCategoria] ([Id_ItemCategoria])
GO
ALTER TABLE [INVENTARIO].[Inventario] CHECK CONSTRAINT [fk_inventarioCategoria]
GO
ALTER TABLE [TRANSACCION].[DetallePedido]  WITH CHECK ADD  CONSTRAINT [FK_DetallePedido_Pedido] FOREIGN KEY([Id_Pedido])
REFERENCES [TRANSACCION].[Pedido] ([Id_Pedido])
GO
ALTER TABLE [TRANSACCION].[DetallePedido] CHECK CONSTRAINT [FK_DetallePedido_Pedido]
GO
ALTER TABLE [TRANSACCION].[DetallePedido]  WITH CHECK ADD  CONSTRAINT [FK_DetallePedido_Producto] FOREIGN KEY([Id_Producto])
REFERENCES [GENERAL].[Producto] ([Id_Producto])
GO
ALTER TABLE [TRANSACCION].[DetallePedido] CHECK CONSTRAINT [FK_DetallePedido_Producto]
GO
ALTER TABLE [TRANSACCION].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Cliente] FOREIGN KEY([Id_Cliente])
REFERENCES [CLIENTE].[Cliente] ([Id_Cliente])
GO
ALTER TABLE [TRANSACCION].[Pedido] CHECK CONSTRAINT [FK_Pedido_Cliente]
GO
ALTER TABLE [TRANSACCION].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Empleado] FOREIGN KEY([Id_Empleado])
REFERENCES [PERSONAL].[Empleado] ([Id_Empleado])
GO
ALTER TABLE [TRANSACCION].[Pedido] CHECK CONSTRAINT [FK_Pedido_Empleado]
GO
ALTER TABLE [TRANSACCION].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Mesa] FOREIGN KEY([Id_Mesa])
REFERENCES [GENERAL].[Mesa] ([Id_Mesa])
GO
ALTER TABLE [TRANSACCION].[Pedido] CHECK CONSTRAINT [FK_Pedido_Mesa]
GO
