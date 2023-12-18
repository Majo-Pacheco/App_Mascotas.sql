-- Creo un SP para ordenar la tabla seleccionada por un campo determinado y un orden 'ASC' o 'DESC'

USE appmascotas;

DELIMITER $$
CREATE PROCEDURE `sp_orden_tabla` (IN tabla VARCHAR(20), IN campo VARCHAR(50), IN orden VARCHAR(4))
BEGIN
	SET @ordenar = CONCAT('SELECT * FROM',' ', tabla,' ','ORDER BY',' ', campo, ' ', orden);
    
    PREPARE consulta FROM @ordenar;
    EXECUTE consulta;
    DEALLOCATE PREPARE consulta;
    
END$$
