-- 3 MESES
-- SQL INSERT Statement for CLIENTE.Reserva
-- Simula 20 reservas para el período (2025-03-29 - 2025-06-28).
-- El 96% de estas reservas serán 'Completado' y el 4% 'Cancelado'.
-- Asigna clientes del grupo "Solo Una Reserva" (Id_Cliente 46-59).
-- Las claves primarias (Id_Reserva) son IDENTITY y no se incluyen explícitamente en el INSERT.
INSERT INTO CLIENTE.Reserva (Fecha, Hora, Id_Mesa, Id_Cliente, NumeroPersonas, Estado, Comentarios)
VALUES
('2025-03-29', '11:00:00', 5, 46, 4, 'Completado', 'Reserva de fin de semana para familia.'),
('2025-04-05', '13:00:00', 8, 47, 6, 'Completado', 'Almuerzo de amigos. Celebración.'),
('2025-04-17', '10:30:00', 2, 48, 2, 'Completado', 'Reserva para Jueves Santo.'),
('2025-04-18', '12:00:00', 7, 49, 5, 'Completado', 'Reserva de Viernes Santo.'),
('2025-04-22', '14:00:00', 3, 50, 4, 'Completado', 'Reunión de negocios informal.'),
('2025-05-01', '10:15:00', 1, 51, 3, 'Completado', 'Reserva por el Día del Trabajo.'),
('2025-05-07', '12:45:00', 6, 52, 7, 'Completado', 'Cumpleaños sorpresa.'),
('2025-05-15', '11:30:00', 9, 53, 2, 'Completado', 'Cita especial. Cliente frecuente.'),
('2025-05-25', '13:15:00', 4, 54, 8, 'Completado', 'Almuerzo de equipo de trabajo.'),
('2025-06-01', '10:00:00', 10, 55, 5, 'Completado', 'Reserva de inicio de mes. Familia.'),
('2025-06-08', '12:00:00', 5, 56, 4, 'Completado', 'Celebración de aniversario.'),
('2025-06-15', '11:45:00', 8, 57, 6, 'Completado', 'Reunión familiar extendida.'),
('2025-06-20', '13:30:00', 2, 58, 3, 'Completado', 'Almuerzo con colegas.'),
('2025-03-31', '10:00:00', 1, 59, 2, 'Completado', 'Desayuno especial para dos.'),
('2025-04-10', '14:00:00', 7, 46, 5, 'Completado', 'Reunión de planificación.'),
('2025-04-28', '11:00:00', 3, 47, 4, 'Completado', 'Almuerzo rápido antes de viaje.'),
('2025-05-10', '12:15:00', 6, 48, 7, 'Completado', 'Reserva para evento pequeño.'),
('2025-05-30', '13:45:00', 9, 49, 2, 'Completado', 'Cena romántica de fin de mes.'),
('2025-06-25', '10:30:00', 4, 50, 8, 'Cancelado', 'Cancelado por cambio de fecha.'),
('2025-06-27', '11:15:00', 10, 51, 5, 'Cancelado', 'Reserva cancelada por enfermedad.');


--5 MESES
-- SQL INSERT Statement for CLIENTE.Reserva
-- Simula 20 reservas para el período (2025-02-01 - 2025-06-30).
-- El 96% de estas reservas serán 'Completado' y el 4% 'Cancelado'.
-- Asigna clientes del grupo "Solo Una Reserva" (Id_Cliente 27-44) y algunos del grupo "2-4 Platos" (Id_Cliente 51-89).
-- Las claves primarias (Id_Reserva) son IDENTITY y no se incluyen explícitamente en el INSERT.
INSERT INTO CLIENTE.Reserva (Fecha, Hora, Id_Mesa, Id_Cliente, NumeroPersonas, Estado, Comentarios)
VALUES
('2025-02-05', '11:00:00', 5, 27, 4, 'Completado', 'Reserva de cumpleaños familiar.'),
('2025-02-18', '13:00:00', 8, 28, 6, 'Completado', 'Almuerzo de negocios.'),
('2025-03-03', '10:30:00', 2, 29, 2, 'Completado', 'Cita romántica.'),
('2025-03-15', '12:00:00', 7, 30, 5, 'Completado', 'Reunión de amigos.'),
('2025-03-28', '14:00:00', 3, 31, 4, 'Completado', 'Despedida de soltero.'),
('2025-04-02', '10:15:00', 1, 32, 3, 'Completado', 'Desayuno de trabajo.'),
('2025-04-12', '12:45:00', 6, 33, 7, 'Completado', 'Celebración de graduación.'),
('2025-04-25', '11:30:00', 9, 34, 2, 'Completado', 'Almuerzo tranquilo.'),
('2025-05-05', '13:15:00', 4, 35, 8, 'Completado', 'Almuerzo de equipo.'),
('2025-05-18', '10:00:00', 10, 36, 5, 'Completado', 'Reserva de fin de semana.'),
('2025-05-29', '12:00:00', 5, 37, 4, 'Completado', 'Almuerzo con proveedores.'),
('2025-06-07', '11:45:00', 8, 38, 6, 'Completado', 'Reunión familiar.'),
('2025-06-19', '13:30:00', 2, 39, 3, 'Completado', 'Almuerzo de colegas.'),
('2025-02-10', '10:00:00', 1, 40, 2, 'Completado', 'Desayuno especial.'),
('2025-03-01', '14:00:00', 7, 41, 5, 'Completado', 'Reunión de planificación.'),
('2025-04-08', '11:00:00', 3, 42, 4, 'Completado', 'Almuerzo rápido.'),
('2025-05-02', '12:15:00', 6, 43, 7, 'Completado', 'Reserva para evento.'),
('2025-06-10', '13:45:00', 9, 44, 2, 'Completado', 'Cena romántica.'),
('2025-06-22', '10:30:00', 4, 51, 8, 'Cancelado', 'Cancelado por cambio de fecha.'),
('2025-06-28', '11:15:00', 10, 52, 5, 'Cancelado', 'Reserva cancelada por enfermedad.');