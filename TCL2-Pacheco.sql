USE appmascotas;

-- Inicio una transacción
START TRANSACTION;

-- Agrego 8 nuevos registros a la tabla productos
INSERT INTO productos (id_producto, id_veterinaria, descripcion, precio, categoria) VALUES 
(11, 4, 'Peine para Gato', 1200.75, 'Accesorios'),
(12, 8, 'Shampoo Natural para Perro', 1800.50, 'Cuidado e Higiene'),
(13, 2, 'Casita para Gato', 30000.00, 'Muebles y Camas'),
(14, 7, 'Arenero para Gato', 500.00, 'Accesorios');

-- Creo un SAVEPOINT
SAVEPOINT svp_1;

INSERT INTO productos (id_producto,id_veterinaria,descripcion,precio,categoria) VALUES 
(15, 1, 'Snacks Dentales para Gato', 1000.00, 'Snacks'),
(16, 6, 'Juguete Interactivo para Perro', 25000.75, 'Juguetes'),
(17, 10, 'Comedero Doble para Gato', 3500.25, 'Alimentos'),
(18, 5, 'Bolso de Viaje para Perro', 42000.00, 'Transporte');

-- Creo un SAVEPOINT
SAVEPOINT svp_2;

-- Verifico los nuevos elementos agregados
SELECT * FROM productos;

-- En caso de querer eliminar el primer SAVEPOINT ejecuto la siguiente sentencia
RELEASE SAVEPOINT svp_1;
