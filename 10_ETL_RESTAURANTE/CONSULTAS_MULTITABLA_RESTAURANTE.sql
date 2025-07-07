--#CONSULTAS MULTITABLA PARA DIMENSIONES Y TABLA DE HECHOS.
USE RestauranteDBasePrueba5m
--## 1. CONSULTA PARA DIM.Cliente

SELECT 
	(Nombres + ' ' +  ApellidoPaterno + ' ' + ApellidoMaterno) AS nombres
FROM CLIENTE.Cliente 
ORDER BY 1;

--## 2. CONSULTA PARA DIM.Mesa

SELECT 
	Ubicacion AS ubicacion,
	Capacidad AS capacidad,
	Estado AS estado
FROM GENERAL.Mesa;

--## 3. CONSULTA PARA DIM.Empleado
SELECT 
	NombreCompleto AS nombre,
	FechaContratacion AS fechaContratacion
FROM PERSONAL.Empleado

--## 4. CONSULTA PARA DIM.Producto
SELECT 
	c.Nombre AS categoria,
	p.EsPreparado AS tipo,
	p.Precio AS precio,
	p.Nombre AS nombreProducto
FROM GENERAL.Producto p
INNER JOIN GENERAL.Categoria c ON p.Id_Categoria = c.Id_Categoria


--## 5. CONSULTA PARA DIM.Tiempo
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

--## 6. CONSULTA PARA FactVentas


WITH ProductoCosto AS (
   SELECT
        p.Id_Producto AS productoid,
        p.EsPreparado, -- Incluimos EsPreparado para usarlo en la lógica condicional
        -- Calcula el costo unitario del producto basado en si es preparado o no.
        -- Para productos preparados (EsPreparado = 1): Suma el costo de sus ingredientes.
        -- Para productos no preparados (EsPreparado = 0): Toma el costo directo del Inventario si el Id_Producto es también un Id_Item.
        ISNULL(
            SUM(CASE
                WHEN p.EsPreparado = 1 THEN ISNULL(inv_ing.CostoPorUnidad, 0) * ISNULL(pg_ing.Cantidad, 0)
                ELSE 0 -- No suma costos de ingredientes para productos no preparados
            END),
            0
        ) AS CostoCalculadoIngredientes,
        ISNULL(
            MAX(CASE
                WHEN p.EsPreparado = 0 THEN ISNULL(inv_direct.CostoPorUnidad, 0)
                ELSE 0 -- No toma costo directo para productos preparados
            END),
            0
        ) AS CostoDirectoProducto
    FROM [RestauranteDBasePrueba5m].[GENERAL].[Producto] p
    -- LEFT JOIN a ProductoIngrediente y Inventario para calcular costos de ingredientes (para productos preparados)
    LEFT JOIN [RestauranteDBasePrueba5m].[GENERAL].[ProductoIngrediente] pg_ing ON p.Id_Producto = pg_ing.Id_Producto
    LEFT JOIN [RestauranteDBasePrueba5m].[INVENTARIO].[Inventario] inv_ing ON pg_ing.Id_Item = inv_ing.Id_Item
    -- LEFT JOIN directo a Inventario para obtener el costo de productos no preparados que son ítems de inventario
    LEFT JOIN [RestauranteDBasePrueba5m].[INVENTARIO].[Inventario] inv_direct ON p.Nombre = inv_direct.ItemNombre
    GROUP BY p.Id_Producto, p.EsPreparado
)
-- Consulta principal para obtener los datos de la tabla de hechos con granularidad de DetallePedido
SELECT
    dc.clientekey,
    dm.mesakey,
    de.empleadokey,
    dp_dim.productokey, -- Usar el alias de la dimensión de producto
    dt.tiempokey,
    p.Precio * dp.Cantidad AS ingresosVenta,
    dp.Cantidad AS numeroVentas,
    CASE WHEN pe.Estado = 'Completado' THEN 1 ELSE 0 END AS ventaCompletas,
   dp.Cantidad * (
        CASE
            WHEN pc.EsPreparado = 1 THEN pc.CostoCalculadoIngredientes
            WHEN pc.EsPreparado = 0 THEN pc.CostoDirectoProducto
            ELSE 0 -- En caso de que EsPreparado tenga otro valor o sea NULL
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
-- **CORRECCIÓN:** Añadir JOIN a la tabla Categoria para obtener el nombre de la categoría
INNER JOIN [RestauranteDBasePrueba5m].[GENERAL].[Categoria] cat ON p.Id_Categoria = cat.Id_Categoria
INNER JOIN [RestauranteDBasePrueba5m].[TRANSACCION].[Pedido] pe ON dp.Id_Pedido = pe.Id_Pedido
LEFT JOIN ProductoCosto pc ON dp.Id_Producto = pc.productoid
INNER JOIN [RestauranteDBasePrueba5m].[CLIENTE].[Cliente] c ON c.Id_Cliente = pe.Id_Cliente
INNER JOIN [RestauranteDBasePrueba5m].[PERSONAL].[Empleado] e ON e.Id_Empleado = pe.Id_Empleado
INNER JOIN [RestauranteDBasePrueba5m].[GENERAL].[Mesa] m ON m.Id_Mesa = pe.Id_Mesa
INNER JOIN RestauranteMart.DIM.Cliente dc ON (c.Nombres + ' ' + c.ApellidoPaterno + ' ' + c.ApellidoMaterno) = dc.nombres
INNER JOIN RestauranteMart.DIM.Mesa dm ON m.Ubicacion = dm.ubicacion AND m.Capacidad = dm.capacidad AND m.Estado = dm.estado
INNER JOIN RestauranteMart.DIM.Empleado de ON e.NombreCompleto = de.nombre
INNER JOIN RestauranteMart.DIM.Producto dp_dim ON p.Nombre = dp_dim.nombreProducto
                                            AND cat.Nombre = dp_dim.categoria
                                            AND p.EsPreparado = dp_dim.tipo
                                            AND p.Precio = dp_dim.precio
INNER JOIN RestauranteMart.DIM.Tiempo dt ON CAST(pe.Fecha AS DATE) = CAST(dt.fecha AS DATE) -- Asegurar que la comparación sea solo por fecha si 'fecha' en DIM.Tiempo es DATETIME con hora
ORDER BY dt.tiempokey;

-- 7. LIMPIEZA:
	-- Limpiar la tabla de hechos FactVentas
DELETE FROM FactVentas;
-- Reiniciar el contador de identidad (si existe una columna IDENTITY)
-- Asegúrate de que 'FactVentas' tiene una columna IDENTITY para que esto funcione.
DBCC CHECKIDENT('FactVentas', RESEED, 0);

-- Limpiar las tablas de dimensión
-- Es importante limpiar las dimensiones en un orden que respete las dependencias
-- (si las hubiera, aunque en un DW las dimensiones suelen ser independientes entre sí).

DELETE FROM DIM.Cliente;
DBCC CHECKIDENT('DIM.Cliente', RESEED, 0);

DELETE FROM DIM.Mesa;
DBCC CHECKIDENT('DIM.Mesa', RESEED, 0);

DELETE FROM DIM.Empleado;
DBCC CHECKIDENT('DIM.Empleado', RESEED, 0);

DELETE FROM DIM.Producto;
DBCC CHECKIDENT('DIM.Producto', RESEED, 0);

DELETE FROM DIM.Tiempo;
DBCC CHECKIDENT('DIM.Tiempo', RESEED, 0);
[RestauranteDBasePrueba5m][RestauranteMart]