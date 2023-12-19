USE appmascotas;

-- Creo una tabla LOG donde se almacenarán los datos del trigger

DROP TABLE IF EXISTS auditoria_update_producto;

CREATE TABLE auditoria_update_producto (
id_auditoria_producto INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
id_producto INT NOT NULL,
descripcion VARCHAR(50),
viejo_precio DECIMAL(8,2),
nuevo_precio DECIMAL(8,2),
usuario VARCHAR(50),
fecha_accion DATETIME,
accion VARCHAR(50)
);

-- TRIGGER
-- Creo un trigger que registre el viejo y nuevo precio de un producto

DROP trigger if exists `tr_aumento_precio_producto`;

CREATE TRIGGER `tr_aumento_precio_producto`
AFTER UPDATE ON productos
FOR EACH ROW
INSERT INTO auditoria_update_producto
VALUES (DEFAULT, OLD.id_producto, OLD.descripcion, OLD.precio, NEW.precio, USER(), NOW(), "Precio actualizado");

-- Modifico el precio de un producto de la tabla 'productos'

UPDATE productos 
SET precio = 1000.00
WHERE id_producto = 3;

-- Verifico la modificación correcta del precio en ambas tablas

SELECT * from productos;
SELECT * from auditoria_update_producto;
