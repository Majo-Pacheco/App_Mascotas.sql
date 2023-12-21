/* Función que sirve de contador a la que le indico el tipo de animal 
y su sexo. Utilizo la tabla animales */

DELIMITER $$
CREATE FUNCTION `f_contador_animal_sexo`(var_tipo_animal VARCHAR(50), var_sexo_animal VARCHAR(50)) 
RETURNS INT
    READS SQL DATA
BEGIN
	DECLARE cantidad VARCHAR(50);
    SET cantidad = 
		(SELECT count(*) from appmascotas.animales
		where sexo = var_sexo_animal
        and tipo_animal = var_tipo_animal);

RETURN cantidad;
END $$

