USE appmascotas_2;

-- Creo una tabla LOG donde se almacenarán los datos de los triggers

DROP TABLE IF EXISTS auditoria_donaciones;

CREATE TABLE auditoria_donaciones (
id_auditoria_donaciones INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
id_donacion INT NOT NULL,
id_usuario INT NOT NULL,
monto DECIMAL(8,2),
fecha_pago DATETIME,
medio_pago VARCHAR(50),
usuario VARCHAR(50),
fecha_accion DATETIME,
accion VARCHAR(50)
);


-- TRIGGER #1
-- Creo un trigger que registre los datos de una nueva donación

DROP trigger if exists `tr_new_donacion`;

CREATE TRIGGER `tr_new_donacion`
AFTER INSERT ON donaciones
FOR EACH ROW
INSERT INTO auditoria_donaciones
VALUES (DEFAULT, new.Id_donacion, new.Id_usuario, new.monto, new.fecha_pago, new.medio_pago, USER(), NOW(), "Ingresa nueva donacion");

-- Inserto los datos de una nueva donación en la tabla 'donaciones'

INSERT INTO donaciones VALUES (51, 12, 500.00, '2021-07-23', 'Pay Pal');

-- Verifico la inserción correcta de datos en ambas tablas

SELECT * from donaciones;
SELECT * from auditoria_donaciones;

-- TRIGGER #2
-- Creo un trigger que registre la eliminación de datos de la tabla 'donaciones'

DROP trigger if exists `tr_delete_donacion`;

CREATE TRIGGER `tr_delete_donacion`
BEFORE DELETE ON donaciones
FOR EACH ROW
INSERT INTO auditoria_donaciones
VALUES (DEFAULT, OLD.id_donacion, OLD.id_usuario, OLD.monto, OLD.fecha_pago, OLD.medio_pago, USER(), NOW(), "Se elimina donacion");

-- Elimino datos de la tabla 'donaciones'

DELETE FROM donaciones
WHERE id_donacion = 51;

-- Verifico la eliminación correcta de datos en ambas tablas

SELECT * from donaciones;
SELECT * from auditoria_donaciones;