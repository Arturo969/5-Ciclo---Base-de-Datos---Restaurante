***ENTIDADES PRINCIPALES***
**1. Producto**
    •	id_producto (PK)
    •	nombre
    •	descripcion
    •	precio
    •	id_categoria (FK → CategoríaProducto)
    •	activo (bool)
    •	foto_url

**2. CategoríaProducto**
    •	id_categoria (PK)
    •	nombre_categoria (Ej: bebidas, entradas, postres)

**3. Ingrediente**
    •	id_ingrediente (PK)
    •	nombre
    •	stock_actual
    •	unidad_medida (g, ml, unidades, etc.)
    •	activo (bool)

**4. ProductoIngrediente (Relación muchos a muchos)**
    •	id_producto (FK → Producto)
    •	id_ingrediente (FK → Ingrediente)
    •	cantidad_necesaria

**5. Pedido**
    •	id_pedido (PK)
    •	fecha_hora
    •	estado (pendiente, preparando, listo, entregado, cancelado)
    •	id_cliente (FK → Cliente, nullable)
    •	id_empleado (FK → Empleado)
    •	origen (mesa, mostrador, mensaje, llamada)
    •	total

**6. DetallePedido**
    •	id_detalle (PK)
    •	id_pedido (FK → Pedido)
    •	id_producto (FK → Producto)
    •	cantidad
    •	precio_unitario
    •	subtotal

**7. Cliente**
    •	id_cliente (PK)
    •	nombre
    •	telefono
    •	direccion (nullable)
    •	email (nullable)
    •	fecha_nacimiento
    •	dni
    •	acumulado_consumo (para cupones/promos)
    •	activo (bool)

**8. Empleado**
    •	id_empleado (PK)
    •	nombre
    •	dni
    •	fecha_nacimiento
    •	direccion
    •	rol (mesero, cocinero, administrador, cajero)
    •	turno
    •	usuario
    •	contrasena_hash
    •	activo (bool)

**9. Reserva**
    •	id_reserva (PK)
    •	fecha_hora
    •	id_cliente (FK → Cliente)
    •	cantidad_personas
    •	id_mesa (FK → Mesa)
    •	estado (confirmada, cancelada, atendida)

**10. Mesa**
    •	id_mesa (PK)
    •	numero
    •	capacidad
    •	estado_actual (libre, ocupada, reservada)

**11. Pago**
    •	id_pago (PK)
    •	id_pedido (FK → Pedido)
    •	monto_total
    •	tipo_pago (efectivo, tarjeta, app, vale)
    •	fecha_pago
    •	descuento_aplicado (opcional)
    •	impuestos

**12. CuponConsumo**
    •	id_cupon (PK)
    •	id_cliente (FK → Cliente)
    •	codigo
    •	valor
    •	fecha_emision
    •	fecha_vencimiento
    •	usado (bool)

**13. MovimientoInventario (opcional pero recomendado)**
    •	id_movimiento (PK)
    •	id_ingrediente (FK → Ingrediente)
    •	tipo (entrada, salida)
    •	cantidad
    •	fecha
    •	motivo (compra, preparación, ajuste, etc.)
    •	registrado_por (FK → Empleado)


***RELACIONES IMPORTANTES***
    
    Un pedido puede tener múltiples productos (DetallePedido).

    Un producto puede tener múltiples ingredientes (ProductoIngrediente).

    Un cliente puede hacer muchos pedidos o reservas.

    Una mesa puede estar asociada a múltiples reservas.

    Un empleado puede tomar varios pedidos.

    Un pago se asocia a un único pedido.
