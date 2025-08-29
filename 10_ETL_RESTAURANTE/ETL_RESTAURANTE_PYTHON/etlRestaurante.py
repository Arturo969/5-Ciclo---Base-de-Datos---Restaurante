
import pyodbc  # Librería para conectar Python con bases de datos SQL Server
import pandas as pd  # Librería para manipular datos en forma de tablas (DataFrames)

print("Loading Session ..........")

# ------- CONEXIÓN A BASE DE DATOS TRANSACCIONAL ----------
print("------- CONEXIÓN A BASE DE DATOS TRANSACCIONAL ----------")

# Conexión a la base de datos transaccional donde están los datos operativos
try:
    conn_nw = pyodbc.connect('DRIVER={SQL Server};SERVER=localhost\SQL;DATABASE=RestauranteDBasePrueba5m;UID=sa;PWD=sql123')
    cursor_nw = conn_nw.cursor()
    print('Conexión a RestauranteDBasePrueba5m correcta.')
except Exception as e:
    print('Conexión a RestauranteDBasePrueba5m fallida:', e)
    exit()

# ------- EXTRACCIÓN DE DATOS ----------
print("------- EXTRACCIÓN DE DATOS ----------")

# Consulta para obtener nombres completos de los clientes
query1 = """
SELECT 
	(Nombres + ' ' +  ApellidoPaterno + ' ' + ApellidoMaterno) AS nombres
FROM CLIENTE.Cliente 
ORDER BY 1;
"""

# Consulta para obtener información de las mesas del restaurante
query2 = """
SELECT 
	Ubicacion AS ubicacion,
	Capacidad AS capacidad,
	Estado AS estado
FROM GENERAL.Mesa;
"""

# Consulta para obtener empleados y su fecha de contratación
query3 = """
SELECT 
	NombreCompleto AS nombre,
	FechaContratacion AS fechaContratacion
FROM PERSONAL.Empleado
"""

# Consulta para obtener productos con su categoría, tipo y precio
query4 = """
SELECT 
	c.Nombre AS categoria,
	p.EsPreparado AS tipo,
	p.Precio AS precio,
	p.Nombre AS nombreProducto
FROM GENERAL.Producto p
INNER JOIN GENERAL.Categoria c ON p.Id_Categoria = c.Id_Categoria
"""

# Consulta para construir la dimensión Tiempo a partir de las fechas de los pedidos
query5 = """
SELECT DISTINCT
	Fecha AS fecha,
	YEAR(Fecha) AS anio,
	DATEPART(QUARTER, Fecha) AS trimestre,
	CASE DATEPART(QUARTER, Fecha)
		WHEN 1 THEN 'Q1'
		WHEN 2 THEN 'Q2'
		WHEN 3 THEN 'Q3'
		WHEN 4 THEN 'Q4'
	END AS nombreTrimestre,
	MONTH(Fecha) AS mes,
	DATENAME(MONTH, Fecha) AS nombreMes,
	DATEPART(WEEK, Fecha) AS semanaAnio,
	DATEPART(DAYOFYEAR, Fecha) AS diaAnio,
	DATEPART(DAY,Fecha) AS diaMes,
	DATEPART(WEEKDAY,Fecha) AS diaSemana,
	DATENAME(WEEKDAY,Fecha) AS nombreDia
FROM TRANSACCION.Pedido
ORDER BY 1
"""

# Consulta para construir la tabla de hechos FactVentas con todos los cálculos necesarios
query = """
-- Se crea una CTE para calcular el costo de los productos según si son preparados o no
WITH ProductoCosto AS (
   SELECT
        p.Id_Producto AS productoid,
        p.EsPreparado,
        ISNULL(
            SUM(CASE
                WHEN p.EsPreparado = 1 THEN ISNULL(inv_ing.CostoPorUnidad, 0) * ISNULL(pg_ing.Cantidad, 0)
                ELSE 0
            END),
            0
        ) AS CostoCalculadoIngredientes,
        ISNULL(
            MAX(CASE
                WHEN p.EsPreparado = 0 THEN ISNULL(inv_direct.CostoPorUnidad, 0)
                ELSE 0
            END),
            0
        ) AS CostoDirectoProducto
    FROM [RestauranteDBasePrueba5m].[GENERAL].[Producto] p
    LEFT JOIN [RestauranteDBasePrueba5m].[GENERAL].[ProductoIngrediente] pg_ing ON p.Id_Producto = pg_ing.Id_Producto
    LEFT JOIN [RestauranteDBasePrueba5m].[INVENTARIO].[Inventario] inv_ing ON pg_ing.Id_Item = inv_ing.Id_Item
    LEFT JOIN [RestauranteDBasePrueba5m].[INVENTARIO].[Inventario] inv_direct ON p.Nombre = inv_direct.ItemNombre
    GROUP BY p.Id_Producto, p.EsPreparado
)
-- Consulta principal con joins hacia dimensiones y cálculos de ingresos, costos y márgenes
SELECT
    dc.clientekey,
    dm.mesakey,
    de.empleadokey,
    dp_dim.productokey,
    dt.tiempokey,
    p.Precio * dp.Cantidad AS ingresosVenta,
    dp.Cantidad AS numeroVentas,
    CASE WHEN pe.Estado = 'Completado' THEN 1 ELSE 0 END AS ventaCompletas,
   dp.Cantidad * (
        CASE
            WHEN pc.EsPreparado = 1 THEN pc.CostoCalculadoIngredientes
            WHEN pc.EsPreparado = 0 THEN pc.CostoDirectoProducto
            ELSE 0
        END
    ) AS costo,
    (p.Precio * dp.Cantidad) - (
        dp.Cantidad * (
            CASE
                WHEN pc.EsPreparado = 1 THEN pc.CostoCalculadoIngredientes
                WHEN pc.EsPreparado = 0 THEN pc.CostoDirectoProducto
                ELSE 0
            END
        )
    ) AS margen
FROM [RestauranteDBasePrueba5m].[TRANSACCION].[DetallePedido] dp
INNER JOIN [RestauranteDBasePrueba5m].[GENERAL].[Producto] p ON dp.Id_Producto = p.Id_Producto
INNER JOIN [RestauranteDBasePrueba5m].[GENERAL].[Categoria] cat ON p.Id_Categoria = cat.Id_Categoria
INNER JOIN [RestauranteDBasePrueba5m].[TRANSACCION].[Pedido] pe ON dp.Id_Pedido = pe.Id_Pedido
LEFT JOIN ProductoCosto pc ON dp.Id_Producto = pc.productoid
INNER JOIN [RestauranteDBasePrueba5m].[CLIENTE].[Cliente] c ON c.Id_Cliente = pe.Id_Cliente
INNER JOIN [RestauranteDBasePrueba5m].[PERSONAL].[Empleado] e ON e.Id_Empleado = pe.Id_Empleado
INNER JOIN [RestauranteDBasePrueba5m].[GENERAL].[Mesa] m ON m.Id_Mesa = pe.Id_Mesa
INNER JOIN RestauranteMart.DIM.Cliente dc ON (c.Nombres + ' ' + c.ApellidoPaterno + ' ' + c.ApellidoMaterno) = dc.nombres
INNER JOIN RestauranteMart.DIM.Mesa dm ON m.Ubicacion = dm.ubicacion AND m.Capacidad = dm.capacidad AND m.Estado = dm.estado
INNER JOIN RestauranteMart.DIM.Empleado de ON e.NombreCompleto = de.nombre
INNER JOIN RestauranteMart.DIM.Producto dp_dim ON p.Nombre = dp_dim.nombreProducto AND cat.Nombre = dp_dim.categoria AND p.EsPreparado = dp_dim.tipo AND p.Precio = dp_dim.precio
INNER JOIN RestauranteMart.DIM.Tiempo dt ON CAST(pe.Fecha AS DATE) = CAST(dt.fecha AS DATE)
ORDER BY dt.tiempokey;
"""

# ------- EJECUCIÓN DE CONSULTAS Y CARGA A DATAFRAMES ----------
#Ejecutar cada una de las consultas SQL definidas previamente y almacenar los resultados en objetos DataFrame de pandas
df1 = pd.read_sql(query1, conn_nw)
df2 = pd.read_sql(query2, conn_nw)
df3 = pd.read_sql(query3, conn_nw)
df4 = pd.read_sql(query4, conn_nw)
df5 = pd.read_sql(query5, conn_nw)
df  = pd.read_sql(query, conn_nw)

# ------- TRANSFORMACIÓN DE DATOS ----------
print("------- TRANSFORMACIÓN DE DATOS ----------")
df5['fecha'] = pd.to_datetime(df5['fecha'])  # Convierte texto a fecha real

# ------- LIMPIEZA Y PREPARACIÓN ----------
print("------- LIMPIEZA DE DATOS ----------")
# Elimina duplicados en cada dimensión
dcliente = df1[['nombres']].drop_duplicates()
dmesa = df2[['ubicacion', 'capacidad', 'estado']]
dempleado = df3[['nombre', 'fechaContratacion']].drop_duplicates()
dproducto = df4[['categoria', 'tipo', 'precio', 'nombreProducto']].drop_duplicates()
dtiempo = df5[['fecha', 'anio', 'trimestre', 'nombreTrimestre', 'mes', 'nombreMes', 'semanaAnio', 'diaAnio', 'diaMes', 'diaSemana', 'nombreDia']].drop_duplicates()

# ------- CONEXIÓN A DATA WAREHOUSE ----------
print("------- CONEXIÓN A BASE DE DATOS DIMENSIONAL ----------")
try:
    conn_dw = pyodbc.connect('DRIVER={SQL Server};SERVER=localhost\SQL;DATABASE=RestauranteMart;UID=sa;PWD=sql123')
    cursor_dw = conn_dw.cursor()
    print('Conexión a RestauranteMart correcta.')
except Exception as e:
    print('Conexión a RestauranteMart fallida:', e)
    exit()

# ------- LIMPIEZA DE DIMENSIONES ----------
print("------- LIMPIEZA DE DIMENSIONES ----------")
# Borra las tablas y reinicia los contadores de IDENTITY
cursor_dw.execute("DELETE FROM dbo.FactVentas;")
tablas = [ 'Cliente', 'Mesa', 'Empleado', 'Producto', 'Tiempo']
for tabla in tablas:
    cursor_dw.execute(f"DELETE FROM DIM.{tabla};")
    cursor_dw.execute(f"DBCC CHECKIDENT ('DIM.{tabla}', RESEED, 0);")
    conn_dw.commit()
cursor_dw.execute("DBCC CHECKIDENT ('dbo.FactVentas', RESEED, 0);")

# ------- CARGA DE DATOS A DIMENSIONES ----------
print("------- CARGA DE DATOS A DIMENSIONES ----------")

# Cargar datos a tabla DIM.Cliente
for _, row in dcliente.iterrows():
    cursor_dw.execute("INSERT INTO DIM.Cliente (nombres) VALUES (?)", row.nombres)
conn_dw.commit()
print("Carga de dimensión Cliente completada")

# Cargar datos a DIM.Mesa
for _, row in dmesa.iterrows():
    cursor_dw.execute("INSERT INTO DIM.Mesa (ubicacion, capacidad, estado) VALUES (?, ?, ?)", row.ubicacion, row.capacidad, row.estado)
conn_dw.commit()
print("Carga de dimensión Mesa completada")

# Cargar datos a DIM.Empleado
for _, row in dempleado.iterrows():
    cursor_dw.execute("INSERT INTO DIM.Empleado(nombre, fechaContratacion) VALUES (?, ?)", row.nombre, row.fechaContratacion)
conn_dw.commit()
print("Carga de dimensión Empleado completada")

# Cargar datos a DIM.Producto
for _, row in dproducto.iterrows():
    cursor_dw.execute("INSERT INTO DIM.Producto (categoria, tipo, precio, nombreProducto) VALUES (?, ?, ?, ?)", row.categoria, row.tipo, row.precio, row.nombreProducto)
conn_dw.commit()
print("Carga de dimensión Producto completada")

# Cargar datos a DIM.Tiempo
for _, row in dtiempo.iterrows():
    cursor_dw.execute("""
        INSERT INTO DIM.Tiempo (fecha, anio, trimestre, nombreTrimestre, mes, nombreMes, semanaAnio, diaAnio,  diaMes, diaSemana, nombreDia )
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)""",
        row.fecha, row.anio, row.trimestre, row.nombreTrimestre, row.mes, row.nombreMes, row.semanaAnio, row.diaAnio, row.diaMes, row.diaSemana, row.nombreDia)
conn_dw.commit()
print("Carga de dimensión Tiempo completada")

# ------- CARGA DE TABLA DE HECHOS ----------
for _, row in df.iterrows():
    cursor_dw.execute("""
        INSERT INTO dbo.FactVentas (
            clientekey, mesakey, empleadokey, productokey,
            tiempokey, ingresosVenta, numeroVentas, ventaCompletas, costo, margen
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)""",
        row.clientekey, row.mesakey, row.empleadokey, row.productokey,
        row.tiempokey, row.ingresosVenta, row.numeroVentas, row.ventaCompletas, row.costo, row.margen)
conn_dw.commit()
print('Carga de FactVentas completada.')

# ------- CIERRE DE CONEXIONES ----------
print("------- EXTRACCION DE DATOS ----------")
print("--------------------------------------")
cursor_dw.close()
conn_dw.close()
conn_nw.close()
print('Conexiones cerradas correctamente.')
