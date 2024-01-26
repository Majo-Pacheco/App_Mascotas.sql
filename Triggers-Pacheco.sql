USE appmascotas_2;

-- Creo una tabla LOG donde se almacenarán los datos de los triggers

DROP TABLE IF EXISTS auditoria_animales;

CREATE TABLE auditoria_animales (
id_auditoria_animales INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
id_animal INT NOT NULL,
nombre VARCHAR(50),
tipo_animal VARCHAR(50),
sexo VARCHAR(50),
raza_o_genero VARCHAR(50),
edad INT,
usuario VARCHAR(50),
fecha_hora DATETIME,
accion VARCHAR(50)
);


-- TRIGGER #1
-- Creo un trigger que registre los datos de un nuevo animal ingresado a la DB 

DROP trigger if exists `tr_add_animal`;

CREATE TRIGGER `tr_add_animal`
AFTER INSERT ON animales
FOR EACH ROW
INSERT INTO auditoria_animales 
VALUES (DEFAULT, new.Id_animal, new.Nombre, new.Tipo_animal, new.Sexo, new.Raza_o_genero, new.Edad, USER(), NOW(), "Se agrega nuevo animal");

-- Inserto los datos de un nuevo animal en la tabla 'animales'

INSERT INTO animales VALUES (51, 'Toby', 'Perro', 'Macho', 'Gran Danes', 9);

-- Verifico la inserción correcta de datos en ambas tablas

SELECT * from animales;
SELECT * from auditoria_animales;

-- TRIGGER #2
-- Creo un trigger que registre la eliminación de datos de un animal en la tabla 'animales'

DROP trigger if exists `tr_delete_animal`;

CREATE TRIGGER `tr_delete_animal`
BEFORE DELETE ON animales
FOR EACH ROW
INSERT INTO auditoria_animales
VALUES (DEFAULT, OLD.id_animal, OLD.nombre, OLD.tipo_animal, OLD.sexo, OLD.raza_o_genero, OLD.edad, USER(), NOW(), "Se elimina animal");

-- Elimino datos de la tabla 'animales'

DELETE FROM animales
WHERE id_animal = 51;

-- Verifico la eliminación correcta de datos en ambas tablas

SELECT * from animales;
SELECT * from auditoria_animales;