-- 1) Creo un SP para ordenar la tabla seleccionada por un campo determinado y un orden 'ASC' o 'DESC'

USE appmascotas;

DELIMITER $$
CREATE PROCEDURE `sp_orden_tabla` (IN tabla VARCHAR(20), IN campo VARCHAR(50), IN orden VARCHAR(4))
BEGIN
	SET @ordenar = CONCAT('SELECT * FROM',' ', tabla,' ','ORDER BY',' ', campo, ' ', orden);
    
    PREPARE consulta FROM @ordenar;
    EXECUTE consulta;
    DEALLOCATE PREPARE consulta;
    
END$$

CALL sp_orden_tabla(animales, edad, DESC);

-- 2) Creo un SP para la inserción de datos de la tabla Usuario

USE appmascotas;

DROP procedure if exists `sp_insertar_datos`;

DELIMITER $$
CREATE PROCEDURE `sp_insertar_datos`(IN numero_id INT, IN numero_dni VARCHAR(50), IN nombre VARCHAR(50), IN num_telefono VARCHAR(50), IN email VARCHAR(50), 
IN adress VARCHAR(50), IN province VARCHAR(50), IN nom_localidad VARCHAR(50), IN nom_barrio VARCHAR(50), 
IN nom_refugio VARCHAR(50), IN es__veterinaria CHAR(1))
BEGIN
	INSERT INTO usuario (id_usuario, dni, full_name, telefono, e_mail, direccion, provincia, localidad, barrio, nombre_refugio, es_veterinaria)
    VALUES (numero_id, numero_dni, nombre, num_telefono, email, adress, province, nom_localidad, nom_barrio, nom_refugio, es__veterinaria);
END $$

CALL sp_insertar_datos(21, 12121212, 'Pedro Louteau', 1158387990, 'usuario@usuario1.com.ar', 'Callao 111', 'Buenos Aires', 'Vicente Lopez', 'Olivos', null, 'N');