SELECT    
    p.nombreProducto,
    p.categoria,
    t.nombreMes,
    t.diaSemana,
	SUM(fv.numeroVentas) AS VentasTotales,
    SUM(fv.margen) AS Ganancias
FROM
    FactVentas AS fv
JOIN
    DIM.Producto AS p ON fv.productokey = p.productokey
JOIN
    DIM.Tiempo AS t ON fv.tiempokey = t.tiempokey
GROUP BY
    p.nombreProducto,
    p.categoria,
    t.nombreMes,
    t.diaSemana;
