***ENTIDADES PRINCIPALES***
1. **Producto**
id_producto (PK)

nombre

descripcion

precio

id_categoria (FK)

activo (bool: si está disponible)

2. **CategoríaProducto**
id_categoria (PK)

nombre_categoria (ej. bebidas, entradas, postres)

3. **Ingrediente**
id_ingrediente (PK)

nombre

stock_actual

unidad_medida (g, ml, unidades, etc.)

4. **ProductoIngrediente** *(relación muchos a muchos)*
id_producto (FK)

id_ingrediente (FK)

cantidad_necesaria

5.**Pedido**
id_pedido (PK)

fecha_hora

estado (pendiente, preparando, listo, entregado, cancelado)

id_cliente (FK, opcional)

id_empleado (FK)

total

6. **DetallePedido**
id_detalle (PK)

id_pedido (FK)

id_producto (FK)

cantidad

precio_unitario

subtotal

7. **Cliente**
id_cliente (PK)

nombre

telefono

direccion (si hay delivery)

email (opcional)

8. **Empleado**
id_empleado (PK)

nombre

rol (mesero, cocinero, administrador)

usuario

contraseña (encriptada)

9. **Reserva**
id_reserva (PK)

fecha_hora

id_cliente (FK)

cantidad_personas

id_mesa (FK)

estado (confirmada, cancelada)

10. **Mesa**
id_mesa (PK)

numero

capacidad

estado_actual (libre, ocupada, reservada)

11. **Pago**
id_pago (PK)

id_pedido (FK)

monto_total

tipo_pago (efectivo, tarjeta, etc.)

propina

fecha_pago


***RELACIONES IMPORTANTES***
Un pedido puede tener múltiples productos (DetallePedido).

Un producto puede tener múltiples ingredientes (ProductoIngrediente).

Un cliente puede hacer muchos pedidos o reservas.

Una mesa puede estar asociada a múltiples reservas.

Un empleado puede tomar varios pedidos.

Un pago se asocia a un único pedido.