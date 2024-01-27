use appmascotas_2;

-- Consultas utilizando las funciones
SELECT `fx_encontrar_veterinaria_por_medicamento` ('Meloxicam');
SELECT fx_contador_animal_sexo ('Gato', 'Hembra');

-- Consultas para mostrar las vistas
SELECT * FROM appmascotas_2.v_adopciones;
SELECT * FROM appmascotas_2.v_direcciones;
SELECT * FROM appmascotas_2.v_donaciones;
SELECT * FROM appmascotas_2.v_medicamentos;
SELECT * FROM appmascotas_2.v_productos;

-- Consultas con los stored procedures
CALL `sp_orden_tabla` ('Animales', 'Edad', 'DESC');
CALL `sp_insertar_datos` (51, 38389670, 'Franco Colapinto', 0129389710, 'franco@colapinto.com.ar', 'Cochabamba 45', 'Buenos Aires', 'Capital Federal',  'San Telmo', Null, 'N');

-- Consultas con los triggers
-- TRIGGER `tr_add_animal`
INSERT INTO animales VALUES (51, 'Toby', 'Perro', 'Macho', 'Gran Danes', 9);
SELECT * from animales;
SELECT * from auditoria_animales;

-- TRIGGER `tr_delete_animal`
DELETE FROM animales
WHERE id_animal = 51;
SELECT * from animales;
SELECT * from auditoria_animales;

-- TRIGGER `tr_new_donacion`
INSERT INTO donaciones VALUES (51, 12, 500.00, '2021-07-23', 'Pay Pal');
SELECT * from donaciones;
SELECT * from auditoria_donaciones;

-- TRIGGER `tr_delete_donacion`
DELETE FROM donaciones
WHERE id_donacion = 51;
SELECT * from donaciones;
SELECT * from auditoria_donaciones;

-- TRIGGER `tr_aumento_precio_producto`
UPDATE productos 
SET precio = 1000.00
WHERE id_producto = 4;
SELECT * from productos;
SELECT * from auditoria_update_producto;

-- DCL, muestro permisos 
SHOW GRANTS FOR 'nuevoUser'@'localhost';
SHOW GRANTS FOR 'nuevoUser2'@'localhost';