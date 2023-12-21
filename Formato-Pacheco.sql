/* Función a la que le indico el nombre de un medicamento y me devuelve
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