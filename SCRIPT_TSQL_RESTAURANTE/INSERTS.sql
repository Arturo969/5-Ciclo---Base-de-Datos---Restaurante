INSERT INTO [GENERAL].[Mesa] (Capacidad, Ubicacion, Estado) VALUES
(4, 'Primer Piso', 'Disponible'),
(4, 'Primer Piso', 'Disponible'),
(4, 'Primer Piso', 'Disponible'),
(4, 'Primer Piso', 'Disponible'),
(4, 'Primer Piso', 'Disponible'),
(4, 'Primer Piso', 'Disponible'),
(4, 'Primer Piso', 'Disponible'),
(4, 'Primer Piso', 'Disponible'),
(4, 'Primer Piso', 'Disponible'),
(4, 'Primer Piso', 'Disponible'),
(4, 'Primer Piso', 'Disponible'),
(4, 'Primer Piso', 'Disponible'),
(4, 'Primer Piso', 'Disponible'),
(4, 'Primer Piso', 'Disponible'),
(4, 'Primer Piso', 'Disponible'),
(6, 'Primer Piso', 'Disponible'),
(6, 'Primer Piso', 'Disponible'),
(6, 'Primer Piso', 'Disponible'),
(6, 'Primer Piso', 'Disponible'),
(6, 'Primer Piso', 'Disponible'),
(6, 'Primer Piso', 'Disponible'),
(6, 'Primer Piso', 'Disponible'),
(8, 'Primer Piso', 'Disponible'),
(8, 'Primer Piso', 'Disponible'),
(8, 'Primer Piso', 'Disponible'),
(4, 'Segundo Piso', 'Disponible'),
(4, 'Segundo Piso', 'Disponible'),
(4, 'Segundo Piso', 'Disponible'),
(4, 'Segundo Piso', 'Disponible'),
(6, 'Segundo Piso', 'Disponible'),
(6, 'Segundo Piso', 'Disponible'),
(6, 'Segundo Piso', 'Disponible'),
(6, 'Segundo Piso', 'Disponible'),
(8, 'Segundo Piso', 'Disponible'),
(8, 'Segundo Piso', 'Disponible'),
(8, 'Segundo Piso', 'Disponible'),
(8, 'Segundo Piso', 'Disponible');

INSERT INTO [GENERAL].[Categoria] (Nombre, Descripcion) VALUES
('Bebidas', 'Incluye todas las opciones para beber, desde refrescos y jugos hasta cervezas, vinos y licores.'),
('Platos Típicos', 'Representa la esencia de la gastronomía local de Cajamarca, con recetas tradicionales y auténticas.'),
('Platos Criollos', 'Ofrece una variedad de platillos clásicos peruanos con influencias históricas y fusiones culturales.'),
('Combinados', 'Presenta opciones que combinan diferentes preparaciones, ideales para probar varias cosas a la vez.'),
('Entradas', 'Aperitivos y bocadillos para comenzar la comida, estimulando el apetito.'),
('Sopas', 'Variedad de caldos y cremas reconfortantes, perfectas para diferentes ocasiones.'),
('Postres', 'Dulces y delicias para finalizar la comida con un toque especial.'),
('Fuentes', 'Fuentes para disfrutar varias personas.');


select * from general.Producto
INSERT INTO [GENERAL].[Producto] (Nombre, Precio, Descripcion, Foto, Id_Categoria, EsPreparado) VALUES
('1/4 Cuy Frito', 28.00, 'Cuy criado en la región, frito hasta obtener una piel crujiente y carne tierna. Sazonado con hierbas y especias locales. Se sirve tradicionalmente con papas doradas, mote cocido y salsa criolla.', 'Link', 2, 1),
('1/4 Cuy Estofado', 28.00, 'Cuy cocinado lentamente en un estofado con cebolla, ajo, hierbas andinas y un toque de chicha de jora. Acompañado de papas nativas y arroz blanco.', 'Link', 2, 1),
('Cuy entero frito', 80.00, 'Cuy entero, criado en la región, frito hasta obtener una piel crujiente y carne tierna. Sazonado con hierbas y especias locales. Se sirve tradicionalmente con papas doradas, mote cocido y salsa criolla.', 'Link', 2, 1),
('Cuy entero estofado', 80.00, 'Cuy entero cocinado lentamente en un estofado con cebolla, ajo, hierbas andinas y un toque de chicha de jora. Acompañado de papas nativas y arroz blanco.', 'Link', 2, 1),
('Porción de hígados con mote', 25.00, 'Hígados salteados y aderezados con especias locales. Se sirven acompañados de una generosa porción de mote tierno y cocido.', 'Link', 2, 1),
('Chicharrones', 25.00, 'Trozos de carne de cerdo fritos en su propia grasa hasta quedar crocantes por fuera y jugosos por dentro. Tradicionalmente se acompañan con mote, cancha serrana y a veces sarsa criolla.', 'Link', 2, 1),
('Cecina Frita', 25.00, 'Carne de chacho salada y secada, luego frita hasta obtener una textura ligeramente crujiente y un sabor característico. Se sirve comúnmente con plátanos fritos y arroz blanco.', 'Link', 2, 1),
('Cecina Shilpida', 28.00, 'Variante de cecina de cerdo, golpeada y luego frita, lo que la hace más tierna y delgada. Se sirve tradicionalmente con yuca sancochada y salsa de ají.', 'Link', 2, 1),
('Cecina Cajabambina', 28.00, 'Cecina de cerdo preparada al estilo de Cajabamba, con un aderezo especial que le da un sabor único. Se sirve tradicionalmente con papas cocidas y ensalada fresca.', 'Link', 2, 1),
('Trucha frita', 22.00, 'Trucha fresca de la región, frita hasta obtener una piel dorada y crujiente y una carne tierna. Se sirve tradicionalmente con papas fritas, arroz blanco y ensalada fresca.', 'Link', 3, 1),
('Cabrito', 22.00, 'Tierno cabrito lechal cocinado al horno o en olla, aderezado con especias locales que realzan su sabor característico. Se acompaña tradicionalmente con arroz blanco y frijoles.', 'Link', 3, 1),
('Gallina estofada', 25.00, 'Trozos de gallina cocinados lentamente en un estofado sabroso con verduras como cebolla, zanahoria y arvejas, en una salsa aromática. Se sirve generalmente con arroz blanco.', 'Link', 3, 1),
('Pato a la cerveza', 28.00, 'Pato tierno cocinado lentamente en una salsa a base de cerveza, hierbas y especias, lo que le otorga un sabor agridulce y una textura jugosa. Se acompaña comúnmente con arroz blanco.', 'Link', 3, 1),
('Milanesa de pollo', 20.00, 'Filete de pechuga de pollo empanizado y frito hasta quedar dorado y crujiente. Se sirve típicamente con papas fritas y ensalada fresca.', 'Link', 3, 1),
('Bistec a lo pobre', 35.00, 'Bistec de carne de res a la plancha, coronado con un huevo frito, plátanos fritos y papas fritas. Un plato contundente y tradicional.', 'Link', 3, 1),
('Lomo saltado', 35.00, 'Tiras de lomo de res salteadas a fuego alto con cebolla, tomate, ají amarillo y salsa de soya, creando un jugoso y sabroso plato. Se sirve clásicamente con papas fritas y arroz blanco.', 'Link', 3, 1),
('Combinado 1', 70.00, 'Chicharrón y cecina frita', 'Link', 4, 1),
('Combinado 2', 70.00, 'Chicharrón, cecina frita y 1/4 cuy frito', 'Link', 4, 1),
('Combinado 3', 80.00, 'Chicharrón, cecina shilpida y 1/2 cuy frito', 'Link', 4, 1),
('Humitas', 5.00, 'Maíz tierno molido, mezclado con queso fresco, manteca, envuelto y cocido al vapor en hojas de pancas de maíz. Un bocado dulce y tradicional.', 'Link', 5, 1),
('Ocopa', 4.00, 'Papas cocidas, usualmente amarillas, bañadas en una salsa cremosa y ligeramente picante a base de ají mirasol, huacatay (una hierba aromática andina), queso fresco, galletas y maní. Decorado tradicionalmente con aceituna y huevo duro.', 'Link', 5, 1),
('Caldo verde', 15.00, 'Sopa sustanciosa y reconfortante, preparada con papas nativas, abundante queso fresco desmenuzado y la hierba aromática "paico" que le da un sabor característico. Un plato tradicional de la sierra peruana, ideal para las noches frías de Cajamarca.', 'Link', 6, 1),
('Caldo de gallina', 20.00, 'Sopa ligera pero nutritiva, a base de gallina de corral, fideos finos, trozos de papa, zanahoria y otras verduras frescas. Un clásico reconfortante, a menudo servido con un toque de hierbabuena o culantro fresco.', 'Link', 6, 1),
('Inka Cola 1/2 L', 3.00, 'Gaseosa peruana de color amarillo con un sabor dulce y único a hierba luisa.', 'Link', 1, 0),
('Inka Cola 1 L', 5.00, 'Gaseosa peruana de color amarillo con un sabor dulce y único a hierba luisa.', 'Link', 1, 0),
('Inka Cola 3 L', 9.00, 'Gaseosa peruana de color amarillo con un sabor dulce y único a hierba luisa.', 'Link', 1, 0),
('Kola Real 1.5 L', 3.00, 'Gaseosa peruana popular, disponible en varios sabores como naranja y limón.', 'Link', 1, 0),
('Sprite 2.5 L', 7.00, 'Gaseosa internacional con sabor a limón-lima.', 'Link', 1, 0),
('Chicha Morada 0.5 L', 5.00, 'Refresco tradicional peruano a base de maíz morado, frutas y especias.', 'Link', 1, 0),
('Chicha Morada 1L', 10.00, 'Refresco tradicional peruano a base de maíz morado, frutas y especias.', 'Link', 1, 0),
('Emoliente 0.5 L', 5.00, 'Bebida caliente tradicional a base de hierbas andinas como cebada, linaza y más.', 'Link', 1, 0),
('Emoliente 1 L', 10.00, 'Bebida caliente tradicional a base de hierbas andinas como cebada, linaza y más.', 'Link', 1, 0),
('Cerveza Cristal', 10.00, 'Bebida Alcohólica', 'Link', 1, 0),
('Cerveza Cuzqueña', 12.00, 'Bebida Alcohólica', 'Link', 1, 0),
('Charalina', 20.00, 'Bebida Alcohólica', 'Link', 1, 0),
('Chicha de jora', 10.00, 'Bebida Alcohólica', 'Link', 1, 0),
('Fuente de Chicharrones para 2', 40.00, 'Trozos de carne de cerdo fritos en su propia grasa hasta quedar crocantes por fuera y jugosos por dentro. Tradicionalmente se acompañan con mote, cancha serrana y a veces sarsa criolla.', 'Link', 8, 1),
('Fuente de Chicharrones para 3', 60.00, 'Trozos de carne de cerdo fritos en su propia grasa hasta quedar crocantes por fuera y jugosos por dentro. Tradicionalmente se acompañan con mote, cancha serrana y a veces sarsa criolla.', 'Link', 8, 1),
('Fuente de Chicharrones para 5', 80.00, 'Trozos de carne de cerdo fritos en su propia grasa hasta quedar crocantes por fuera y jugosos por dentro. Tradicionalmente se acompañan con mote, cancha serrana y a veces sarsa criolla.', 'Link', 8, 1),
('Cecina Frita para 2', 40.00, 'Carne de chacho salada y secada, luego frita hasta obtener una textura ligeramente crujiente y un sabor característico. Se sirve comúnmente con plátanos fritos y arroz blanco.', 'Link', 8, 1),
('Cecina Frita para 3', 60.00, 'Carne de chacho salada y secada, luego frita hasta obtener una textura ligeramente crujiente y un sabor característico. Se sirve comúnmente con plátanos fritos y arroz blanco.', 'Link', 8, 1),
('Cecina Frita para 5', 80.00, 'Carne de chacho salada y secada, luego frita hasta obtener una textura ligeramente crujiente y un sabor característico. Se sirve comúnmente con plátanos fritos y arroz blanco.', 'Link', 8, 1),
('Cecina Shilpida para 2', 50.00, 'Variante de cecina de cerdo, golpeada y luego frita, lo que la hace más tierna y delgada. Se sirve tradicionalmente con yuca sancochada y salsa de ají.', 'Link', 8, 1),
('Cecina Shilpida para 3', 60.00, 'Variante de cecina de cerdo, golpeada y luego frita, lo que la hace más tierna y delgada. Se sirve tradicionalmente con yuca sancochada y salsa de ají.', 'Link', 8, 1),
('Cecina Shilpida para 5', 95.00, 'Variante de cecina de cerdo, golpeada y luego frita, lo que la hace más tierna y delgada. Se sirve tradicionalmente con yuca sancochada y salsa de ají.', 'Link', 8, 1),
('Cecina Cajabambina para 2', 50.00, 'Cecina de cerdo preparada al estilo de Cajabamba, con un aderezo especial que le da un sabor único. Se sirve tradicionalmente con papas cocidas y ensalada fresca.', 'Link', 8, 1),
('Cecina Cajabambina para 3', 60.00, 'Cecina de cerdo preparada al estilo de Cajabamba, con un aderezo especial que le da un sabor único. Se sirve tradicionalmente con papas cocidas y ensalada fresca.', 'Link', 8, 1),
('Cecina Cajabambina para 5', 95.00, 'Cecina de cerdo preparada al estilo de Cajabamba, con un aderezo especial que le da un sabor único. Se sirve tradicionalmente con papas cocidas y ensalada fresca.', 'Link', 8, 1);


INSERT INTO [PERSONAL].[Empleado] (NombreCompleto, DNI, FechaNacimiento, Direccion, Telefono, CorreoElectronico, Rol, Turno, FechaContratacion, Salario, Estado, Usuario, Contrasena) VALUES
('Juan Perez Gonzalez', '70000001', '1990-05-15', 'Av. Las Flores 123, Cajamarca', '987654321', 'juan.perez@restaurante.com', 'Mesero', 'Completo', '2022-01-10', 1500.00, 'Activo', 'jperez', 'hashedpass1'),
('Maria Lopez Torres', '70000002', '1992-08-20', 'Jr. Los Rosales 456, Cajamarca', '987123456', 'maria.lopez@restaurante.com', 'Mesero', 'Completo', '2022-03-01', 1500.00, 'Activo', 'mlopez', 'hashedpass2'),
('Carlos Rodriguez Diaz', '70000003', '1988-11-25', 'Calle Girasoles 789, Cajamarca', '987987987', 'carlos.rodriguez@restaurante.com', 'Mesero', 'Completo', '2022-06-15', 1500.00, 'Activo', 'crodriguez', 'hashedpass3'),
('Pedro Sanchez Flores', '70000004', '1985-02-10', 'Av. El Sol 101, Cajamarca', '987333222', 'pedro.sanchez@restaurante.com', 'Cocinero Principal', 'Completo', '2021-07-01', 2500.00, 'Activo', 'psanchez', 'hashedpass4'),
('Ana Gutierrez Vargas', '70000005', '1995-07-03', 'Jr. La Luna 202, Cajamarca', '987555111', 'ana.gutierrez@restaurante.com', 'Ayudante de Cocina', 'Completo', '2022-09-01', 1200.00, 'Activo', 'agutierrez', 'hashedpass5'),
('Sofia Mendoza Rojas', '70000006', '1993-04-12', 'Calle Marte 303, Cajamarca', '987777888', 'sofia.mendoza@restaurante.com', 'Cajero', 'Completo', '2022-02-20', 1800.00, 'Activo', 'smendoza', 'hashedpass6'),
('José Carlos Álvarez', '70000007', '1980-09-01', 'Av. Jupiter 404, Cajamarca', '987444555', 'roberto.castro@restaurante.com', 'Gerente', 'Completo', '2021-01-01', 3500.00, 'Activo', 'rcastro', 'hashedpass7');

select * from Personal.Empleado


SELECT * FROM INVENTARIO.ItemCategoria
INSERT INTO [INVENTARIO].[ItemCategoria] (Categoria, Descripcion) VALUES
('Carnes', 'Cortes de carne y aves para preparación de platos.'),
('Verduras y Hortalizas', 'Vegetales frescos y hortalizas para uso en cocina.'),
('Abarrotes', 'Productos no perecederos como arroz, azúcar, sal, etc.'),
('Lácteos y Huevos', 'Productos lácteos, quesos y huevos.'),
('Tubérculos', 'Papas, yucas, camotes y otros tubérculos.'),
('Frutas', 'Frutas frescas para jugos y postres.'),
('Bebidas sin alcohol', 'Ingredientes para preparar bebidas no alcohólicas.'),
('Bebidas alcohólicas', 'Alcohol para la preparación de tragos o venta directa.'),
('Especias y Condimentos', 'Hierbas y especias para sazonar.'),
('Aceites y Grasas', 'Aceites de cocina y grasas.');

INSERT INTO [INVENTARIO].[Inventario] (ItemNombre, id_ItemCategoria, UnidadMedida, Stock, CostoPorUnidad, FechaDeExpiracion, NivelReorden, CantidadReorden, NecesitaReorden) VALUES
-- Carnes
('Cuy fresco', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Carnes'), 'Unidad', 50.00, 15.00, DATEADD(day, 7, GETDATE()), 10.00, 20.00, 0),
('Cerdo (carne)', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Carnes'), 'Kg', 80.00, 18.00, DATEADD(day, 5, GETDATE()), 15.00, 30.00, 0),
('Gallina entera', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Carnes'), 'Unidad', 40.00, 20.00, DATEADD(day, 6, GETDATE()), 8.00, 15.00, 0),
('Trucha fresca', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Carnes'), 'Unidad', 30.00, 10.00, DATEADD(day, 3, GETDATE()), 5.00, 10.00, 0),
('Cabrito (carne)', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Carnes'), 'Kg', 25.00, 25.00, DATEADD(day, 4, GETDATE()), 5.00, 10.00, 0),
('Pato (carne)', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Carnes'), 'Unidad', 20.00, 22.00, DATEADD(day, 5, GETDATE()), 4.00, 8.00, 0),
('Pechuga de pollo', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Carnes'), 'Kg', 60.00, 12.00, DATEADD(day, 5, GETDATE()), 10.00, 20.00, 0),
('Lomo de res', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Carnes'), 'Kg', 35.00, 30.00, DATEADD(day, 4, GETDATE()), 7.00, 15.00, 0),
('Hígado de res', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Carnes'), 'Kg', 20.00, 8.00, DATEADD(day, 3, GETDATE()), 5.00, 10.00, 0),

-- Verduras y Hortalizas
('Cebolla', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Verduras y Hortalizas'), 'Kg', 100.00, 2.00, DATEADD(day, 30, GETDATE()), 20.00, 40.00, 0),
('Ajo', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Verduras y Hortalizas'), 'Kg', 50.00, 5.00, DATEADD(day, 60, GETDATE()), 10.00, 20.00, 0),
('Zanahoria', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Verduras y Hortalizas'), 'Kg', 70.00, 2.50, DATEADD(day, 14, GETDATE()), 15.00, 30.00, 0),
('Arvejas', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Verduras y Hortalizas'), 'Kg', 30.00, 4.00, DATEADD(day, 7, GETDATE()), 5.00, 10.00, 0),
('Tomate', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Verduras y Hortalizas'), 'Kg', 60.00, 3.00, DATEADD(day, 7, GETDATE()), 10.00, 20.00, 0),
('Ají amarillo', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Verduras y Hortalizas'), 'Kg', 20.00, 6.00, DATEADD(day, 10, GETDATE()), 5.00, 10.00, 0),
('Huacatay', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Verduras y Hortalizas'), 'Atado', 15.00, 1.50, DATEADD(day, 3, GETDATE()), 3.00, 5.00, 0),
('Maíz tierno', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Verduras y Hortalizas'), 'Unidad', 50.00, 1.00, DATEADD(day, 5, GETDATE()), 10.00, 20.00, 0),
('Hojas de panca', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Verduras y Hortalizas'), 'Unidad', 40.00, 0.50, DATEADD(day, 7, GETDATE()), 8.00, 15.00, 0),
('Paico', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Verduras y Hortalizas'), 'Atado', 10.00, 1.00, DATEADD(day, 3, GETDATE()), 2.00, 4.00, 0),
('Hierbabuena', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Verduras y Hortalizas'), 'Atado', 10.00, 1.00, DATEADD(day, 3, GETDATE()), 2.00, 4.00, 0),
('Culantro', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Verduras y Hortalizas'), 'Atado', 10.00, 1.00, DATEADD(day, 3, GETDATE()), 2.00, 4.00, 0),

-- Tubérculos
('Papa nativa', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Tubérculos'), 'Kg', 150.00, 2.50, DATEADD(day, 20, GETDATE()), 30.00, 50.00, 0),
('Papa amarilla', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Tubérculos'), 'Kg', 120.00, 3.00, DATEADD(day, 20, GETDATE()), 25.00, 40.00, 0),
('Yuca', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Tubérculos'), 'Kg', 80.00, 3.50, DATEADD(day, 15, GETDATE()), 15.00, 30.00, 0),
('Plátano maduro', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Frutas'), 'Kg', 50.00, 2.00, DATEADD(day, 5, GETDATE()), 10.00, 20.00, 0),

-- Abarrotes
('Arroz blanco', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Abarrotes'), 'Kg', 200.00, 3.50, DATEADD(month, 12, GETDATE()), 50.00, 100.00, 0),
('Mote cocido', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Abarrotes'), 'Kg', 40.00, 6.00, DATEADD(day, 3, GETDATE()), 10.00, 20.00, 0),
('Frijoles', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Abarrotes'), 'Kg', 50.00, 5.00, DATEADD(month, 12, GETDATE()), 10.00, 20.00, 0),
('Galletas saladas', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Abarrotes'), 'Paquete', 30.00, 2.00, DATEADD(month, 6, GETDATE()), 5.00, 10.00, 0),
('Maní tostado', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Abarrotes'), 'Kg', 20.00, 8.00, DATEADD(month, 3, GETDATE()), 4.00, 8.00, 0),
('Fideos finos', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Abarrotes'), 'Kg', 25.00, 4.00, DATEADD(month, 12, GETDATE()), 5.00, 10.00, 0),
('Cancha serrana', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Abarrotes'), 'Kg', 15.00, 7.00, DATEADD(month, 6, GETDATE()), 3.00, 6.00, 0),

-- Lácteos y Huevos
('Queso fresco', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Lácteos y Huevos'), 'Kg', 30.00, 15.00, DATEADD(day, 10, GETDATE()), 5.00, 10.00, 0),
('Huevos', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Lácteos y Huevos'), 'Unidad', 120.00, 0.50, DATEADD(day, 20, GETDATE()), 20.00, 40.00, 0),
('Leche evaporada', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Lácteos y Huevos'), 'Lata', 50.00, 3.00, DATEADD(month, 6, GETDATE()), 10.00, 20.00, 0),

-- Especias y Condimentos
('Sal', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Especias y Condimentos'), 'Kg', 50.00, 1.00, NULL, 10.00, 20.00, 0),
('Pimienta', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Especias y Condimentos'), 'Kg', 10.00, 10.00, NULL, 2.00, 5.00, 0),
('Comino', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Especias y Condimentos'), 'Kg', 10.00, 10.00, NULL, 2.00, 5.00, 0),
('Hierbas andinas', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Especias y Condimentos'), 'Atado', 20.00, 2.00, DATEADD(day, 7, GETDATE()), 4.00, 8.00, 0),
('Salsa de soya', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Especias y Condimentos'), 'Litro', 15.00, 8.00, DATEADD(month, 12, GETDATE()), 3.00, 6.00, 0),
('Ají panca molido', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Especias y Condimentos'), 'Kg', 10.00, 7.00, DATEADD(month, 3, GETDATE()), 2.00, 4.00, 0),

-- Aceites y Grasas
('Aceite vegetal', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Aceites y Grasas'), 'Litro', 40.00, 7.00, DATEADD(month, 12, GETDATE()), 8.00, 15.00, 0),
('Manteca de cerdo', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Aceites y Grasas'), 'Kg', 20.00, 12.00, DATEADD(month, 6, GETDATE()), 4.00, 8.00, 0),

-- Bebidas
('Chicha de jora (preparada)', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Bebidas alcohólicas'), 'Litro', 30.00, 5.00, DATEADD(day, 5, GETDATE()), 5.00, 10.00, 0),
('Maíz morado', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Bebidas sin alcohol'), 'Kg', 20.00, 4.00, DATEADD(month, 6, GETDATE()), 4.00, 8.00, 0),
('Cebada', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Bebidas sin alcohol'), 'Kg', 15.00, 3.00, DATEADD(month, 12, GETDATE()), 3.00, 6.00, 0),
('Linaza', (SELECT Id_ItemCategoria FROM [INVENTARIO].[ItemCategoria] WHERE Categoria = 'Bebidas sin alcohol'), 'Kg', 10.00, 5.00, DATEADD(month, 12, GETDATE()), 2.00, 4.00, 0);
SELECT * FROM INVENTARIO.Inventario

select * from General.ProductoIngrediente
INSERT INTO [GENERAL].[ProductoIngrediente] (Id_Producto, Id_Item, Cantidad) VALUES
-- Platos Típicos (Id_Categoria = 2)
-- 1/4 Cuy Frito (Id_Producto = 1)
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = '1/4 Cuy Frito'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cuy fresco'), 0.25), -- 1/4 de cuy
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = '1/4 Cuy Frito'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Papa amarilla'), 0.20), -- 200g de papa
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = '1/4 Cuy Frito'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Mote cocido'), 0.15), -- 150g de mote
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = '1/4 Cuy Frito'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cebolla'), 0.05), -- para salsa criolla
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = '1/4 Cuy Frito'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Ají amarillo'), 0.02),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = '1/4 Cuy Frito'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Hierbas andinas'), 0.01),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = '1/4 Cuy Frito'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Aceite vegetal'), 0.05);
INSERT INTO [GENERAL].[ProductoIngrediente] (Id_Producto, Id_Item, Cantidad) VALUES
-- 1/4 Cuy Estofado (Id_Producto = 2)
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = '1/4 Cuy Estofado'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cuy fresco'), 0.25),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = '1/4 Cuy Estofado'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cebolla'), 0.10),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = '1/4 Cuy Estofado'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Ajo'), 0.03),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = '1/4 Cuy Estofado'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Hierbas andinas'), 0.01),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = '1/4 Cuy Estofado'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Chicha de jora (preparada)'), 0.10),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = '1/4 Cuy Estofado'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Papa nativa'), 0.20),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = '1/4 Cuy Estofado'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Arroz blanco'), 0.10);
INSERT INTO [GENERAL].[ProductoIngrediente] (Id_Producto, Id_Item, Cantidad) VALUES
-- Cuy entero frito (Id_Producto = 3)
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cuy entero frito'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cuy fresco'), 1.00),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cuy entero frito'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Papa amarilla'), 0.50),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cuy entero frito'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Mote cocido'), 0.30),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cuy entero frito'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cebolla'), 0.10),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cuy entero frito'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Ají amarillo'), 0.05),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cuy entero frito'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Hierbas andinas'), 0.02),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cuy entero frito'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Aceite vegetal'), 0.10);
INSERT INTO [GENERAL].[ProductoIngrediente] (Id_Producto, Id_Item, Cantidad) VALUES
-- Cuy entero estofado (Id_Producto = 4)
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cuy entero estofado'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cuy fresco'), 1.00),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cuy entero estofado'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cebolla'), 0.20),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cuy entero estofado'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Ajo'), 0.05),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cuy entero estofado'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Hierbas andinas'), 0.02),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cuy entero estofado'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Chicha de jora (preparada)'), 0.20),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cuy entero estofado'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Papa nativa'), 0.50),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cuy entero estofado'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Arroz blanco'), 0.20);
sELECT * FROM GENERAL.ProductoIngrediente

INSERT INTO [GENERAL].[ProductoIngrediente] (Id_Producto, Id_Item, Cantidad) VALUES
-- Porción de hígados con mote (Id_Producto = 5)
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Porción de hígados con mote'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Hígado de res'), 0.20),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Porción de hígados con mote'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Mote cocido'), 0.25),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Porción de hígados con mote'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cebolla'), 0.05),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Porción de hígados con mote'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Ajo'), 0.01);

INSERT INTO [GENERAL].[ProductoIngrediente] (Id_Producto, Id_Item, Cantidad) VALUES
-- Chicharrones (Id_Producto = 6)
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Chicharrones'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cerdo (carne)'), 0.25),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Chicharrones'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Manteca de cerdo'), 0.05),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Chicharrones'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Mote cocido'), 0.15),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Chicharrones'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cancha serrana'), 0.05),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Chicharrones'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cebolla'), 0.03),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Chicharrones'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Ají amarillo'), 0.01);


INSERT INTO [GENERAL].[ProductoIngrediente] (Id_Producto, Id_Item, Cantidad) VALUES
-- Cecina Frita (Id_Producto = 7)
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Frita'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cerdo (carne)'), 0.20),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Frita'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Aceite vegetal'), 0.03),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Frita'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Plátano maduro'), 0.15),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Frita'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Arroz blanco'), 0.10);


INSERT INTO [GENERAL].[ProductoIngrediente] (Id_Producto, Id_Item, Cantidad) VALUES
-- Cecina Shilpida (Id_Producto = 8)
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Shilpida'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cerdo (carne)'), 0.20),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Shilpida'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Yuca'), 0.20),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Shilpida'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Ají panca molido'), 0.02),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Shilpida'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Ajo'), 0.01);

INSERT INTO [GENERAL].[ProductoIngrediente] (Id_Producto, Id_Item, Cantidad) VALUES
-- Cecina Cajabambina (Id_Producto = 9)
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Cajabambina'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cerdo (carne)'), 0.20),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Cajabambina'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Papa nativa'), 0.20),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Cajabambina'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Tomate'), 0.05),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Cajabambina'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cebolla'), 0.05);



-- Platos Criollos (Id_Categoria = 3)
INSERT INTO [GENERAL].[ProductoIngrediente] (Id_Producto, Id_Item, Cantidad) VALUES
-- Trucha frita (Id_Producto = 10)
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Trucha frita'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Trucha fresca'), 0.25),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Trucha frita'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Papa amarilla'), 0.20),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Trucha frita'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Arroz blanco'), 0.10),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Trucha frita'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cebolla'), 0.03),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Trucha frita'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Tomate'), 0.03);


INSERT INTO [GENERAL].[ProductoIngrediente] (Id_Producto, Id_Item, Cantidad) VALUES
-- Cabrito (Id_Producto = 11)
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cabrito'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cabrito (carne)'), 0.30),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cabrito'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Arroz blanco'), 0.10),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cabrito'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Frijoles'), 0.10),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cabrito'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cebolla'), 0.05),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cabrito'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Ajo'), 0.02);


INSERT INTO [GENERAL].[ProductoIngrediente] (Id_Producto, Id_Item, Cantidad) VALUES
-- Gallina estofada (Id_Producto = 12)
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Gallina estofada'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Gallina entera'), 0.30),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Gallina estofada'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cebolla'), 0.10),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Gallina estofada'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Zanahoria'), 0.05),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Gallina estofada'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Arvejas'), 0.05),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Gallina estofada'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Arroz blanco'), 0.10);


INSERT INTO [GENERAL].[ProductoIngrediente] (Id_Producto, Id_Item, Cantidad) VALUES
-- Pato a la cerveza (Id_Producto = 13)
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Pato a la cerveza'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Pato (carne)'), 0.30),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Pato a la cerveza'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cebolla'), 0.10),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Pato a la cerveza'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Ajo'), 0.03),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Pato a la cerveza'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Arroz blanco'), 0.10),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Pato a la cerveza'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cerveza Cristal'), 0.20); -- **CORREGIDO AQUÍ: ASUMIENDO 'Cerveza' es el nombre correcto**


INSERT INTO [GENERAL].[ProductoIngrediente] (Id_Producto, Id_Item, Cantidad) VALUES
-- Milanesa de pollo (Id_Producto = 14)
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Milanesa de pollo'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Pechuga de pollo'), 0.18),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Milanesa de pollo'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Huevos'), 0.05),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Milanesa de pollo'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Papa amarilla'), 0.20),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Milanesa de pollo'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Aceite vegetal'), 0.05),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Milanesa de pollo'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cebolla'), 0.03),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Milanesa de pollo'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Tomate'), 0.03);


INSERT INTO [GENERAL].[ProductoIngrediente] (Id_Producto, Id_Item, Cantidad) VALUES
-- Bistec a lo pobre (Id_Producto = 15)
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Bistec a lo pobre'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Lomo de res'), 0.20),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Bistec a lo pobre'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Huevos'), 1.00),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Bistec a lo pobre'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Plátano maduro'), 0.10),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Bistec a lo pobre'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Papa amarilla'), 0.25),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Bistec a lo pobre'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Arroz blanco'), 0.10);


INSERT INTO [GENERAL].[ProductoIngrediente] (Id_Producto, Id_Item, Cantidad) VALUES
-- Lomo saltado (Id_Producto = 16)
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Lomo saltado'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Lomo de res'), 0.20),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Lomo saltado'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cebolla'), 0.10),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Lomo saltado'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Tomate'), 0.08),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Lomo saltado'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Ají amarillo'), 0.02),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Lomo saltado'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Salsa de soya'), 0.03),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Lomo saltado'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Papa amarilla'), 0.20),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Lomo saltado'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Arroz blanco'), 0.10);


INSERT INTO [GENERAL].[ProductoIngrediente] (Id_Producto, Id_Item, Cantidad) VALUES
-- Combinados (Id_Categoria = 4)
-- Combinado 1 (Id_Producto = 17) - Chicharrón y cecina frita
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Combinado 1'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cerdo (carne)'), 0.35), -- 0.20 Chicharrón + 0.15 Cecina Frita
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Combinado 1'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Mote cocido'), 0.10),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Combinado 1'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Plátano maduro'), 0.08),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Combinado 1'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Aceite vegetal'), 0.08), -- Para chicharrón y cecina

-- Combinado 2 (Id_Producto = 18) - Chicharrón, cecina frita y 1/4 cuy frito
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Combinado 2'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cerdo (carne)'), 0.25), -- 0.15 Chicharrón + 0.10 Cecina Frita
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Combinado 2'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cuy fresco'), 0.25), -- 1/4 Cuy Frito
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Combinado 2'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Mote cocido'), 0.10),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Combinado 2'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Papa amarilla'), 0.10),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Combinado 2'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Aceite vegetal'), 0.10),

-- Combinado 3 (Id_Producto = 19) - Chicharrón, cecina shilpida y 1/2 cuy frito
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Combinado 3'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cerdo (carne)'), 0.30), -- 0.15 Chicharrón + 0.15 Cecina Shilpida
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Combinado 3'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cuy fresco'), 0.50), -- 1/2 Cuy Frito
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Combinado 3'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Mote cocido'), 0.10),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Combinado 3'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Papa amarilla'), 0.10),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Combinado 3'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Yuca'), 0.05),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Combinado 3'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Aceite vegetal'), 0.12),

-- Entradas (Id_Categoria = 5)
-- Humitas (Id_Producto = 20)
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Humitas'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Maíz tierno'), 0.15),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Humitas'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Queso fresco'), 0.03),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Humitas'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Manteca de cerdo'), 0.01),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Humitas'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Hojas de panca'), 1.00),

-- Ocopa (Id_Producto = 21)
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Ocopa'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Papa amarilla'), 0.20),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Ocopa'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Ají amarillo'), 0.03),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Ocopa'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Huacatay'), 0.01),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Ocopa'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Queso fresco'), 0.05),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Ocopa'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Galletas saladas'), 0.01),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Ocopa'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Maní tostado'), 0.01),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Ocopa'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Huevos'), 0.50),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Ocopa'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Aceite vegetal'), 0.02),

-- Sopas (Id_Categoria = 6)
-- Caldo verde (Id_Producto = 22)
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Caldo verde'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Papa nativa'), 0.15),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Caldo verde'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Queso fresco'), 0.05),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Caldo verde'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Paico'), 0.01),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Caldo verde'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Huevos'), 0.02),

-- Caldo de gallina (Id_Producto = 23)
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Caldo de gallina'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Gallina entera'), 0.20),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Caldo de gallina'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Fideos finos'), 0.05),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Caldo de gallina'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Papa nativa'), 0.10),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Caldo de gallina'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Zanahoria'), 0.03),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Caldo de gallina'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Hierbabuena'), 0.005),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Caldo de gallina'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Culantro'), 0.005),

-- Fuentes (Id_Categoria = 8)
-- Fuente de Chicharrones para 2 (Id_Producto = 37)
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Fuente de Chicharrones para 2'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cerdo (carne)'), 0.50),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Fuente de Chicharrones para 2'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Mote cocido'), 0.30),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Fuente de Chicharrones para 2'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cancha serrana'), 0.10),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Fuente de Chicharrones para 2'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cebolla'), 0.06),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Fuente de Chicharrones para 2'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Ají amarillo'), 0.02),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Fuente de Chicharrones para 2'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Aceite vegetal'), 0.10),

-- Fuente de Chicharrones para 3 (Id_Producto = 38)
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Fuente de Chicharrones para 3'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cerdo (carne)'), 0.75),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Fuente de Chicharrones para 3'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Mote cocido'), 0.45),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Fuente de Chicharrones para 3'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cancha serrana'), 0.15),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Fuente de Chicharrones para 3'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cebolla'), 0.09),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Fuente de Chicharrones para 3'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Ají amarillo'), 0.03),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Fuente de Chicharrones para 3'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Aceite vegetal'), 0.15),

-- Fuente de Chicharrones para 5 (Id_Producto = 39)
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Fuente de Chicharrones para 5'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cerdo (carne)'), 1.25),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Fuente de Chicharrones para 5'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Mote cocido'), 0.75),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Fuente de Chicharrones para 5'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cancha serrana'), 0.25),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Fuente de Chicharrones para 5'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cebolla'), 0.15),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Fuente de Chicharrones para 5'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Ají amarillo'), 0.05),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Fuente de Chicharrones para 5'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Aceite vegetal'), 0.25),

-- Cecina Frita para 2 (Id_Producto = 40)
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Frita para 2'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cerdo (carne)'), 0.40),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Frita para 2'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Plátano maduro'), 0.30),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Frita para 2'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Arroz blanco'), 0.20),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Frita para 2'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Aceite vegetal'), 0.06),

-- Cecina Frita para 3 (Id_Producto = 41)
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Frita para 3'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cerdo (carne)'), 0.60),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Frita para 3'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Plátano maduro'), 0.45),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Frita para 3'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Arroz blanco'), 0.30),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Frita para 3'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Aceite vegetal'), 0.09),

-- Cecina Frita para 5 (Id_Producto = 42)
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Frita para 5'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cerdo (carne)'), 1.00),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Frita para 5'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Plátano maduro'), 0.75),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Frita para 5'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Arroz blanco'), 0.50),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Frita para 5'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Aceite vegetal'), 0.15),

-- Cecina Shilpida para 2 (Id_Producto = 43)
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Shilpida para 2'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cerdo (carne)'), 0.40),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Shilpida para 2'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Yuca'), 0.40),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Shilpida para 2'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Ají panca molido'), 0.04),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Shilpida para 2'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Ajo'), 0.02),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Shilpida para 2'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Aceite vegetal'), 0.08),

-- Cecina Shilpida para 3 (Id_Producto = 44)
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Shilpida para 3'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cerdo (carne)'), 0.60),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Shilpida para 3'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Yuca'), 0.60),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Shilpida para 3'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Ají panca molido'), 0.06),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Shilpida para 3'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Ajo'), 0.03),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Shilpida para 3'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Aceite vegetal'), 0.12),

-- Cecina Shilpida para 5 (Id_Producto = 45)
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Shilpida para 5'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cerdo (carne)'), 1.00),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Shilpida para 5'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Yuca'), 1.00),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Shilpida para 5'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Ají panca molido'), 0.10),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Shilpida para 5'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Ajo'), 0.05),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Shilpida para 5'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Aceite vegetal'), 0.20),

-- Cecina Cajabambina para 2 (Id_Producto = 46)
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Cajabambina para 2'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cerdo (carne)'), 0.40),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Cajabambina para 2'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Papa nativa'), 0.40),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Cajabambina para 2'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Tomate'), 0.10),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Cajabambina para 2'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cebolla'), 0.10),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Cajabambina para 2'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Aceite vegetal'), 0.08),

-- Cecina Cajabambina para 3 (Id_Producto = 47)
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Cajabambina para 3'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cerdo (carne)'), 0.60),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Cajabambina para 3'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Papa nativa'), 0.60),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Cajabambina para 3'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Tomate'), 0.15),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Cajabambina para 3'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cebolla'), 0.15),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Cajabambina para 3'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Aceite vegetal'), 0.12),

-- Cecina Cajabambina para 5 (Id_Producto = 48)
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Cajabambina para 5'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cerdo (carne)'), 1.00),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Cajabambina para 5'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Papa nativa'), 1.00),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Cajabambina para 5'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Tomate'), 0.25),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Cajabambina para 5'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Cebolla'), 0.25),
((SELECT Id_Producto FROM [GENERAL].[Producto] WHERE Nombre = 'Cecina Cajabambina para 5'), (SELECT Id_Item FROM [INVENTARIO].[Inventario] WHERE ItemNombre = 'Aceite vegetal'), 0.20);