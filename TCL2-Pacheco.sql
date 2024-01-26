USE appmascotas_2;

-- Inicio una transacción
START TRANSACTION;

-- Creo un SAVEPOINT
SAVEPOINT svp_1;

-- Agrego 8 nuevos registros a la tabla productos
INSERT INTO productos (id_producto, id_veterinaria, descripcion, precio, categoria) VALUES 
(51, 4, 'Peine para Gato', 1200.75, 'Accesorios'),
(52, 8, 'Shampoo Natural para Perro', 1800.50, 'Cuidado e Higiene'),
(53, 2, 'Casita para Gato', 30000.00, 'Muebles y Camas'),
(54, 7, 'Arenero para Gato', 500.00, 'Accesorios');
-- Creo un SAVEPOINT
SAVEPOINT svp_2;

INSERT INTO productos (id_producto,id_veterinaria,descripcion,precio,categoria) VALUES 
(55, 1, 'Snacks Dentales para Gato', 1000.00, 'Snacks'),
(56, 6, 'Juguete Interactivo para Perro', 25000.75, 'Juguetes'),
(57, 10, 'Comedero Doble para Gato', 3500.25, 'Alimentos'),
(58, 5, 'Bolso de Viaje para Perro', 42000.00, 'Transporte');


-- Verifico los nuevos elementos agregados
SELECT * FROM productos;

-- Para quitar los cambios ejecuto lo siguiente
ROLLBACK TO SAVEPOINT svp_1;

-- En caso de querer eliminar el primer SAVEPOINT ejecuto la siguiente sentencia
RELEASE SAVEPOINT svp_1;

-- Para guardar los cambios
COMMIT;
