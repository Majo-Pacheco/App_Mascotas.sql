/* 1)
Función a la que le indico el nombre de un medicamento y me devuelve
el nombre de la farmacia que lo vende, con el objetivo de facilitar la búsqueda de fármacos específicos
dentro de la DB. Utilizo las tablas veterinaria y medicamentos*/

DROP FUNCTION IF EXISTS `fx_encontrar_veterinaria_por_medicamento`;
DELIMITER $$
CREATE FUNCTION `fx_encontrar_veterinaria_por_medicamento`(medicamento varchar(50)) RETURNS varchar(50)
    READS SQL DATA
BEGIN
	DECLARE veterinaria VARCHAR (50);
    SET veterinaria = (
    SELECT GROUP_CONCAT(veterinaria.nombre) AS nombre_veterinaria
FROM veterinaria
JOIN medicamentos ON medicamentos.id_veterinaria = veterinaria.id_veterinaria
WHERE medicamentos.nombre_farmaceutico = medicamento);

RETURN veterinaria;
END $$


/* 2)
Función que sirve de contador a la que le indico el tipo de animal 
y su sexo. Utilizo la tabla animales */

DELIMITER $$
CREATE FUNCTION `fx_contador_animal_sexo`(var_tipo_animal VARCHAR(50), var_sexo_animal VARCHAR(50)) 
RETURNS INT
    READS SQL DATA
BEGIN
	DECLARE cantidad VARCHAR(50);
    SET cantidad = 
		(SELECT count(*) from appmascotas_2.animales
		where sexo = var_sexo_animal
        and tipo_animal = var_tipo_animal);

RETURN cantidad;
END $$

