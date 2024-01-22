/* 1)
Función a la que le indico el nombre de un medicamento y me devuelve
el nombre de la farmacia que lo vende, con el objetivo de facilitar la búsqueda de fármacos específicos
dentro de la DB. Utilizo las tablas veterinaria y medicamentos*/

DELIMITER $$
CREATE FUNCTION `f_encontrar_veterinaria_por_medicamento`(medicamento varchar(50)) RETURNS varchar(50)
    READS SQL DATA
BEGIN
	DECLARE veterinaria VARCHAR (50);
    SET veterinaria = (select 
	veterinaria.nombre AS nombre_veterinaria
from veterinaria
join medicamentos ON medicamentos.id_veterinaria = veterinaria.id_veterinaria
where medicamentos.nombre_farmaceutico = medicamento);

RETURN veterinaria;
END $$

select f_encotrar_veterinaria_por_medicamento ('Amoxicilina');

/* 2)
Función que sirve de contador a la que le indico el tipo de animal 
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

SELECT f_contador_animal_sexo ('Perro', 'Hembra');